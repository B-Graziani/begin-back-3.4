class Girl < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :size, presence: true
  validates :weight, presence: true
end
