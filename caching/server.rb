# frozen_string_literal: true

require 'sinatra'
require 'sinatra/reloader' if development?
require 'redis'

require '../caching/database'

# Most simple local cache
# class MyCache
# 	MEMO = {}
#
# 	def get(key)
# 		MEMO[key]
# 	end
#
# 	def set(key, value, ops = {})
# 		MEMO[key] = value
# 	end
# end

redis = Redis.new

get '/nocache/index.html' do
  Database.get('index.html')
end

get '/cache/index.html' do
  puts 'Reading Redis cache'

  page = redis.get('index.html')
  return page if page

  Database.get('index.html').tap do |row|
    puts 'Reading from DB & adding to cache'
    redis.set('index.html', row, ex: 10)
  end
end
