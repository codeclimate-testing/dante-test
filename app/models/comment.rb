# frozen_string_literal: true

# Comment
class Comment < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :user_id
  belongs_to :post
  belongs_to :parent, class_name: 'Comment', optional: true
  has_many :replies, class_name: 'Comment', foreign_key: :parent_id

  alias_attribute :author_id, :user_id
  alias_attribute :user, :author

  def scream
    body.upcase
  end
  
  def suspicious
    body + "..."
  end
end
