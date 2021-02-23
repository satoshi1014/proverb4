class Word < ApplicationRecord
  belongs_to :user
  has_many  :comments, dependent: :destroy
  validates :proverb, presence: true
  validates :owner, presence: true
  validates :story, presence: true
end
