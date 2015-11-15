class Pin < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 1 }
  validates :image_url, presence: true, length: { minimum: 5 }
end
