# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tag1 = Tag.find_or_create_by(name: "Realism", category: "style")
tag2 = Tag.find_or_create_by(name: "Impressionism", category: "style")
tag3 = Tag.find_or_create_by(name: "Cubism", category: "style")
tag4 = Tag.find_or_create_by(name: "Surrealism", category: "style")
tag5 = Tag.find_or_create_by(name: "Modern", category: "style")
tag6 = Tag.find_or_create_by(name: "Contemporary", category: "style")

tag7 = Tag.find_or_create_by(name: "Oil Paint", category: "medium")
tag8 = Tag.find_or_create_by(name: "Wood", category: "medium")
tag9 = Tag.find_or_create_by(name: "Metal", category: "medium")
tag10 = Tag.find_or_create_by(name: "Ceramic", category: "medium")
tag11 = Tag.find_or_create_by(name: "Plaster", category: "medium")
tag12 = Tag.find_or_create_by(name: "Acrylic Paint", category: "medium")
tag13 = Tag.find_or_create_by(name: "Resin", category: "medium")
tag14 = Tag.find_or_create_by(name: "Digital", category: "medium")
tag15 = Tag.find_or_create_by(name: "Mixed Media", category: "medium")
tag16 = Tag.find_or_create_by(name: "Digital Print", category: "medium")
tag17 = Tag.find_or_create_by(name: "Enlargement", category: "medium")
tag23 = Tag.find_or_create_by(name: "Lithograph", category: "medium")
tag24 = Tag.find_or_create_by(name: "Screen Print", category: "medium")

tag18 =Tag.find_or_create_by(name: "2016", category: "year")
tag19 =Tag.find_or_create_by(name: "2017", category: "year")
tag20 =Tag.find_or_create_by(name: "2014", category: "year")
tag21 =Tag.find_or_create_by(name: "2013", category: "year")
tag22 =Tag.find_or_create_by(name: "2010", category: "year")
tag22 =Tag.find_or_create_by(name: "2003", category: "year")

user1 = User.create(:name => "Alex Chaves", :username => "achaves", :password => "alex", :password_confirmation => "alex")

user2 = User.create(:name => "Terry Winters", :username => "twinters", :password => "terry", :password_confirmation => "terry")

user3 = User.create(:name => "Shari Mendelson", :username => "smendelson", :password => "shari", :password_confirmation => "shari")

User.create(:name => "Caroline Lee", :username => "clee", :password => "caroline", :password_confirmation => "caroline")

User.create(:name => "Gil Sunshine", :username => "gsunshine", :password => "gil", :password_confirmation => "gil")

User.create(:name => "Daniel Lee", :username => "dlee", :password => "dan", :password_confirmation => "dan")

artwork1 = user1.artworks.create!(:name => 'Flower Pot', image: File.open(File.join(Rails.root, '/app/assets/images/alex-chaves/flower_pot.jpeg')))

artwork2 = user1.artworks.create!(:name => 'Flower Still Life', image: File.open(File.join(Rails.root, '/app/assets/images/alex-chaves/flower_still_life.jpeg')))

artwork3 = user1.artworks.create!(:name => 'Hayden', image: File.open(File.join(Rails.root, '/app/assets/images/alex-chaves/hayden.jpeg')))

artwork4 = user1.artworks.create!(:name => 'Red Sunflowers', image: File.open(File.join(Rails.root, '/app/assets/images/alex-chaves/red_sunflowers.jpeg')))

artwork5 = user2.artworks.create!(:name => 'Clocks and Clouds/5', image: File.open(File.join(Rails.root, '/app/assets/images/terry-winters/clocks_and_clouds_5.jpeg')))

artwork6 = user2.artworks.create!(:name => 'Clocks and Clouds/4', image: File.open(File.join(Rails.root, '/app/assets/images/terry-winters/clocks_and_clouds.jpeg')))

artwork7 = user2.artworks.create!(:name => 'Illustrated Set', image: File.open(File.join(Rails.root, '/app/assets/images/terry-winters/illustrated_set.jpeg')))

artwork8 = user2.artworks.create!(:name => 'Patterns in a Chromatic Field', image: File.open(File.join(Rails.root, '/app/assets/images/terry-winters/patterns_in_a_chromatic_field.jpeg')))

artwork9 = user2.artworks.create!(:name => 'Untitled', image: File.open(File.join(Rails.root, '/app/assets/images/terry-winters/untitled_2003.jpeg')))

artwork10 = user3.artworks.create!(:name => 'Animal with Bowl and Handle', image: File.open(File.join(Rails.root, '/app/assets/images/shari-mendelson/animal_with_bowl_and_handle.jpeg')))

artwork11 = user3.artworks.create!(:name => 'Four Vessels with Exoskeleton (Pink and Gold)', image: File.open(File.join(Rails.root, '/app/assets/images/shari-mendelson/four_vessels_with_exoskeleton_pink_and_gold.jpeg')))

artwork12 = user3.artworks.create!(:name => 'Small Blue Animal', image: File.open(File.join(Rails.root, '/app/assets/images/shari-mendelson/small_blue_animal.jpeg')))

artwork13 = user3.artworks.create!(:name => 'Thee Vessels with Exoskeleton (Ochre)', image: File.open(File.join(Rails.root, '/app/assets/images/shari-mendelson/three_vessels_with_exoskeleton_ochre.jpeg')))

ArtworkTag.find_or_create_by(artwork_id: artwork1.id, tag_id: tag7.id)
ArtworkTag.find_or_create_by(artwork_id: artwork1.id, tag_id: tag18.id)
ArtworkTag.find_or_create_by(artwork_id: artwork1.id, tag_id: tag2.id)

ArtworkTag.find_or_create_by(artwork_id: artwork2.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork2.id, tag_id: tag2.id)
ArtworkTag.find_or_create_by(artwork_id: artwork2.id, tag_id: tag12.id)

ArtworkTag.find_or_create_by(artwork_id: artwork3.id, tag_id: tag7.id)
ArtworkTag.find_or_create_by(artwork_id: artwork3.id, tag_id: tag2.id)
ArtworkTag.find_or_create_by(artwork_id: artwork3.id, tag_id: tag19.id)

ArtworkTag.find_or_create_by(artwork_id: artwork4.id, tag_id: tag7.id)
ArtworkTag.find_or_create_by(artwork_id: artwork4.id, tag_id: tag2.id)
ArtworkTag.find_or_create_by(artwork_id: artwork4.id, tag_id: tag19.id)

ArtworkTag.find_or_create_by(artwork_id: artwork5.id, tag_id: tag23.id)
ArtworkTag.find_or_create_by(artwork_id: artwork5.id, tag_id: tag21.id)
ArtworkTag.find_or_create_by(artwork_id: artwork5.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork6.id, tag_id: tag23.id)
ArtworkTag.find_or_create_by(artwork_id: artwork6.id, tag_id: tag21.id)
ArtworkTag.find_or_create_by(artwork_id: artwork6.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork7.id, tag_id: tag24.id)
ArtworkTag.find_or_create_by(artwork_id: artwork7.id, tag_id: tag22.id)
ArtworkTag.find_or_create_by(artwork_id: artwork7.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork8.id, tag_id: tag6.id)
ArtworkTag.find_or_create_by(artwork_id: artwork8.id, tag_id: tag7.id)
ArtworkTag.find_or_create_by(artwork_id: artwork8.id, tag_id: tag21.id)

ArtworkTag.find_or_create_by(artwork_id: artwork9.id, tag_id: tag22.id)
ArtworkTag.find_or_create_by(artwork_id: artwork9.id, tag_id: tag23.id)
ArtworkTag.find_or_create_by(artwork_id: artwork9.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork10.id, tag_id: tag10.id)
ArtworkTag.find_or_create_by(artwork_id: artwork10.id, tag_id: tag6.id)
ArtworkTag.find_or_create_by(artwork_id: artwork10.id, tag_id: tag2.id)
ArtworkTag.find_or_create_by(artwork_id: artwork10.id, tag_id: tag21.id)

ArtworkTag.find_or_create_by(artwork_id: artwork11.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork11.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork11.id, tag_id: tag15.id)
ArtworkTag.find_or_create_by(artwork_id: artwork11.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork12.id, tag_id: tag10.id)
ArtworkTag.find_or_create_by(artwork_id: artwork12.id, tag_id: tag6.id)
ArtworkTag.find_or_create_by(artwork_id: artwork12.id, tag_id: tag20.id)

ArtworkTag.find_or_create_by(artwork_id: artwork13.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork13.id, tag_id: tag15.id)
ArtworkTag.find_or_create_by(artwork_id: artwork13.id, tag_id: tag6.id)
ArtworkTag.find_or_create_by(artwork_id: artwork13.id, tag_id: tag19.id)
