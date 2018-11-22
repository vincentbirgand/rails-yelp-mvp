class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  categories = %w[chinese italian japanese french belgian]
  validates :category, presence: true, inclusion: { in: categories }
end
