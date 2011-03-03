set :use_sudo, false
set :user, "rails"
set :application, "shinydevelopment_web"
set(:deploy_to) { File.join("", "home", user, application) }

set :scm, :git
set :repository,  "git@codebasehq.com:shiny/shinydevelopment/shinydevelopmentsite.git"
set :branch, "master"
set :deploy_via, :remote_cache

server "shiny-004.vm.brightbox.net", :app, :web, :db, :primary => true
server "shiny-005.vm.brightbox.net", :app, :web

after "deploy:update_code" do
  run "mv #{latest_release}/htaccess #{latest_release}/.htaccess"
  run "mv #{latest_release}/_config_live.yml #{latest_release}/_config.yml"
  run "cd #{latest_release} && jekyll"
end

deploy.task :restart do
end

deploy.task :finalize_update do
end