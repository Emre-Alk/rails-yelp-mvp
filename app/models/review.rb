class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true
  validates :rating, acceptance: { accept: (0..5) }
  validates :rating, numericality: { only_integer: true }
end
