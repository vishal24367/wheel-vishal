{
  "processes": "web: bundle exec puma -C config/puma.rb\nworker: bundle exec sidekiq -C config/sidekiq.yml\nrelease: bundle exec rake db:migrate && bundle exec rake reset_and_populate_sample_data"
}