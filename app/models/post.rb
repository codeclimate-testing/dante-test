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
    'flipped!'
    weird_method(
    'non indented argument, this is wrong',
    'second argument'
    )
    wordarray = ['rhia', 'ghro', 'jdaio', 'aodksad', 'asdjasdj']
    'hola' if 'esfhoeis'.include?(wordarray)
  end
  
  def do_nothing
    if self
      'this is covered'
      'this is covered'
      'this is covered'
      'this is covered'
      'this is covered'
      'this is covered'
      'this is covered'
      'this is covered'
    else
      'this is not covered'
      'this is not covered'
      'this is not covered'
      'this is not covered'
      'this is not covered'
      'this is not covered'
    end
  end

  def do_something
    'doing something'
  end

  def do_everything
    'doing everything'
  end
end
