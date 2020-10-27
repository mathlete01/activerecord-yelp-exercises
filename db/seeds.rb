Restaurant.destroy_all
Dish.destroy_all
Tag.destroy_all

10.times do
  Restaurant.create(name: Faker::Restaurant.name)
end

tag_names = ["spicy", "cheesy", "salty", "slimy", "hairy", "spotty"]

tag_names.each do |n|
  Tag.create(name: n)
end

Restaurant.all.each do |r|
  10.times do
    d = r.dishes.create(name: Faker::Food.dish)
    3.times do
      randnum = rand(0..(tag_names.length-1))
      d.tags << Tag.all[randnum]
    end
  end
end



