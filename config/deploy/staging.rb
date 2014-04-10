set :branch, :staging

set :application, "shinydevelopment_web_staging"

role :web, "staging.shinydevelopment.com"

set :apache_domain, "staging.shinydevelopment.com"
set :apache_domain_alias, ["staging.www.shinydevelopment.com"]