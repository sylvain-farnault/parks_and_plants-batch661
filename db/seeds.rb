if Rails.env.development?
  Garden.destroy_all

  Garden.create(
    name: "My Little Garden",
    banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
  )

  Garden.create(
    name: "My Other Garden",
    banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
  )

  tags = ["Annuals", "Bulbs", "Cactus - Succulents", "Climbers", "Conifers", "Ferns", "Fruit", "Herbs", "Ornamental Grasses", "Perennials", "Roses", "Shrubs", "Trees", "Palms - Cycads", "Bamboos", "Aquatic Plants", "Orchids"]
  tags.each do |tag|
    Tag.create!(name: tag)
    puts "Tag created : #{tag}"
  end
end
