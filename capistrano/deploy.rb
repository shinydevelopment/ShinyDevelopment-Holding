require "bundler/capistrano"
require 'capistrano/ext/multistage'

set :stages, %w(production staging)
# set :default_stage, "staging"

set :use_sudo, false
set :user, "ubuntu"
set :normalize_asset_timestamps, false # Not a rails project so skip 'touching' all the assets in the public directory

set(:deploy_to) { File.join("", "home", user, application) }

set :scm, :git
set :repository,  "git@github.com:shinydevelopment/Shiny-Site.git"
set :deploy_via, :remote_cache

namespace :deploy do

  desc "Copy htaccess file"
  task :copy_htaccess_file, roles: :web do
    run "mv #{latest_release}/htaccess #{latest_release}/.htaccess"
  end

  desc "Build jekyll site"
  task :build_jekyll_site, roles: :web do
    run "cd #{latest_release} && bundle exec jekyll build"
  end

    desc "Create an apache virtual host for the app"
  task :create_apache_config, roles: :web do
    # HTTP port 80 vhost setup
    vhost_alias = ''
    if !self[:apache_domain_alias].nil?
      self[:apache_domain_alias].each do |domain_alias|
        vhost_alias += "\\tServerAlias #{domain_alias}\\n"
      end
    end
    vhost_config = <<EOS
<VirtualHost *:80>\\n
\\tServerName #{apache_domain}\\n
#{vhost_alias}
\\tDocumentRoot #{current_path}/_site\\n
\\t<Directory #{current_path}/_site>\\n
\\t\\tAllow from all\\n
\\t\\tOptions -MultiViews\\n
\\t</Directory>\\n
</VirtualHost>\\n
EOS
    # Tee needed here as the file needs to be written as sudo, touch needed as file needs to exist for tee
    run "#{sudo} touch /etc/apache2/sites-available/#{application}"
    run "printf \"#{vhost_config}\" | #{sudo} tee /etc/apache2/sites-available/#{application}"
    run "#{sudo} a2ensite #{application}"

    disable_default_apache_sites
    restart_apache
  end

  desc "Restart the apache server"
  task :restart_apache, roles: :web do
    run "#{sudo} service apache2 restart"
  end

  task :disable_default_apache_sites, roles: :web do
    run "#{sudo} a2dissite default"
    run "#{sudo} a2dissite default-ssl"
  end

  desc "Enable Apache rewrite mod"
  task :enable_apache_rewrite_mod, roles: :web do
    run "#{sudo} a2enmod rewrite"
  end

end

after "deploy:setup", "deploy:enable_apache_rewrite_mod"
after "deploy:setup", "deploy:create_apache_config"

after "deploy:update_code", "deploy:copy_htaccess_file"
after "deploy:update_code", "deploy:build_jekyll_site"


