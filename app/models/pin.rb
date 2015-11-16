class Pin < ActiveRecord::Base
  has_and_belongs_to_many :boards
  validates :title, presence: true, length: { minimum: 1 }
  validates :image_url, presence: true, length: { minimum: 5 }
end
