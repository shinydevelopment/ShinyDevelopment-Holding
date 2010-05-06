set :use_sudo, false
set :user, "rails"
set :application, "shinydevelopment_web"
set(:deploy_to) { File.join("", "home", user, application) }

set :scm, :git
set :repository,  "git@github.com:daveverwer/ShinyDevelopmentStatic.git"
set :branch, "master"
set :deploy_via, :remote_cache

server "shiny-002.vm.brightbox.net", :app, :web, :db, :primary => true
server "shiny-003.vm.brightbox.net", :app, :web

after "deploy:update_code" do
  run "mv #{latest_release}/htaccess #{latest_release}/.htaccess"
  run "rm #{latest_release}/capistrano/deploy.rb && rmdir #{latest_release}/capistrano && rm #{latest_release}/Capfile && rm -rf #{latest_release}/viewer"
  run "cd #{latest_release} && jekyll"
end

deploy.task :restart do
end

deploy.task :finalize_update do
end