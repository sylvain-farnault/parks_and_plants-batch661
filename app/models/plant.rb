class Plant < ApplicationRecord
  belongs_to :garden

  # Active REcord do that for us
  # def garden
  #   Garden.find(garden_id)
  # end

  has_many :plant_tags
  has_many :tags, through: :plant_tags

  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true, format: { with: /\Ahttp.+(.png|.jpg|.jpeg)\z/, message: "Wrong format" }

end
