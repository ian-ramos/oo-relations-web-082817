
class Tweet

  attr_reader :message, :user


  ALL = []

  def self.all
    ALL
  end

  def initialize(message, user)
    @message = message
    @user = user
    ALL << self
  end

  def username
    user.username
  end

  def likes
    Like.all.select do |like|
      like.tweet == self
    end
  end


end
