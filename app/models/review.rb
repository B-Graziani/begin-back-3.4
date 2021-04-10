class Review < ApplicationRecord
  belongs_to :girl
  validates :content, presence: true
end
