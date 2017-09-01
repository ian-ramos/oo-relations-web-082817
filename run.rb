require_relative './user'
require_relative './tweet'
require_relative './like'
require 'pry'



coffee_dad = User.new('coffee_dad')
tea_uncle = User.new('tea_uncle')

first_tweet = coffee_dad.post_tweet('having coffee')
coffee_dad.post_tweet('great coffee')
tweet = tea_uncle.post_tweet('great tea')
coffee_dad.post_tweet('coffee #')


coffee_dad.liked_tweets

tea_uncle.like_tweet(first_tweet)
# => [<Tweet @message='having coffee'>]


binding.pry


'bye'
