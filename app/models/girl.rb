class Girl < ApplicationRecord
  validates :name, presence: true
  validates :size, presence: true
  validates :weight, presence: true
end
