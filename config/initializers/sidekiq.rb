#config sidekiq to talk to redis
Sidekiq.configure_server do |config|
	config.redis = { url: ENV["REDIS_URL"] }
end 

#just from the docs
#teacher didnt' do this origially and app kept looking on localhost
#specify an env variable
#dotenv gem is great
Sidekiq.configure_client do |config|
	config.redis = { url: ENV["REDIS_URL"] }
end 

