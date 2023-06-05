set -o errexit 

bundle install 
year install 
bundle exec rake assets:precompile
bundle exec rake assets:clean
bundle exec rake db:migrate

