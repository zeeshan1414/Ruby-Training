class Post < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :posts_tags
  has_many :tags, through: :posts_tags
  enum status: %w[draft published archived]

  # Validations
  validates :title, presence: true, length: { maximum: 200 }
  validates :body, presence: true, length: { maximum: 50 }

  # Scopes
  # scope :draft, -> { where(status: 'draft') }
  # scope :published, -> { where(status: 'published') }
  # scope :archived, -> { where(status: 'archived') }
end
