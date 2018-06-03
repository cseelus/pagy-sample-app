# Create 100 Stars and 100 Nebulae

def star_radius
  # Radius in Solar radii (Sun = 1)
  lower_boundary = 0.0047 # GRW +70 8247
  upper_boundary = 1.708 # UY Scuti

  rand(lower_boundary..upper_boundary)
end

100.times do
  Star.create(
    name: Faker::Space.star,
    radius: star_radius
  )
end

100.times do
  Nebula.create(
    name: Faker::Space.nebula,
    group: [
      'H II region',
      'Planetary nebulae',
      'Supernova remnant',
      'Dark nebula'
    ].sample.to_s
  )
end
