class Garden < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :banner_url, presence: true, format: { with: /\Ahttp.+(.png|.jpg|.jpeg)\z/, message: "Wrong format" }

  has_many :plants, dependent: :destroy

  # ActiveRecord do that for us
  # def plants
  #   Plant.where(garden_id: id)
  # end

end
