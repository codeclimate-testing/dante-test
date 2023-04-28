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

  def new_method
    this_is_a_new_method = true

    true
  end
end
