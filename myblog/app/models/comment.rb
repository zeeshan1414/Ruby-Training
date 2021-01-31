class Comment < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :post
  belongs_to :commentable, polymorphic: true, optional: true
  has_many :comments, as: :commentable, dependent: :destroy

  # Validations
  validates :body, presence: true, length: { maximum: 100 }
end
