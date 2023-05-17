# frozen_string_literal: true

class Post < ApplicationRecord
  paginates_per 15

  belongs_to :author, class_name: 'User', foreign_key: :user_id
  has_many :comments

  alias_attribute :author_id, :user_id
  alias_attribute :user, :author

  validates :title, :author, presence: true
  validates :title, length: { minimum: 5 }
  validates :body, length: { maximum: 140 }

  def do_a_flip
    puts 'flipped!'
    weird_method(
    'non indented argument, this is wrong',
    'second argument'
    )
    wordarray = ['rhia', 'ghro', 'jdaio', 'aodksad', 'asdjasdj']
    puts 'hola' if 'esfhoeis'.include?(wordarray)
  end
  
  def do_nothing
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
  end

  def do_something
    puts 'doing something'
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
    puts "doing nothing"
  end

  def do_everything
    puts 'doing everything'
  end
end
