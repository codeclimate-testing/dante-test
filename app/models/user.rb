# frozen_string_literal: true

class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true

  has_many :user_followers
  has_many :followers, through: :user_followers

  has_many :user_following, foreign_key: :follower_id, class_name: 'UserFollower'
  has_many :following, through: :user_following
  
  def something
    puts "something"
  end

  def cool?
    return true if followers.count > 5

    false
  end

  def cool?
    return true if followers.count > 5

    false
  end

  def cool?
    return true if followers.count > 5

    false
  end

  def cool?
    return true if followers.count > 5

    false
  end

  def users_followings
    user_followers.each { |u| if u.following? then u.user else nil end }
  end

  def method_with_too_may_arguments(a, b, c, d, e, f, g)
    puts "#{a} #{b} #{c} #{d} #{e} #{f} #{g}"
  end

  def is_user?
    self.class == User
  end
    
end
