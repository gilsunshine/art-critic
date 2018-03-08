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
tag29 = Tag.find_or_create_by(name: "Drawing", category: "medium")
tag30 = Tag.find_or_create_by(name: "Felt", category: "medium")
tag31 = Tag.find_or_create_by(name: "Tapestry", category: "medium")
tag32 = Tag.find_or_create_by(name: "Marker", category: "medium")

tag18 =Tag.find_or_create_by(name: "2016", category: "year")
tag19 =Tag.find_or_create_by(name: "2017", category: "year")
tag20 =Tag.find_or_create_by(name: "2014", category: "year")
tag21 =Tag.find_or_create_by(name: "2013", category: "year")
tag22 =Tag.find_or_create_by(name: "2010", category: "year")
tag22 =Tag.find_or_create_by(name: "2003", category: "year")
tag25 =Tag.find_or_create_by(name: "2007", category: "year")
tag26 =Tag.find_or_create_by(name: "2018", category: "year")
tag27 =Tag.find_or_create_by(name: "2008", category: "year")
tag28 =Tag.find_or_create_by(name: "2012", category: "year")

user1 = User.create(:name => "Alex Chaves", :username => "achaves", :password => "alex", :password_confirmation => "alex")

user2 = User.create(:name => "Terry Winters", :username => "twinters", :password => "terry", :password_confirmation => "terry")

user3 = User.create(:name => "Shari Mendelson", :username => "smendelson", :password => "shari", :password_confirmation => "shari")

user4 = User.create(:name => "Asif Mian", :username => "amian", :password => "asif", :password_confirmation => "asif")

user5 = User.create(:name => "Matthew Day Jackson", :username => "mjackson", :password => "matthew", :password_confirmation => "matthew")

user6 = User.create(:name => "Nick Van Woert", :username => "nwoert", :password => "nick", :password_confirmation => "nick")

user7 = User.create(:name => "Michelle Branch", :username => "mbranch", :password => "michelle", :password_confirmation => "michelle", bio: "I worked in Intellectual Property Litigation for two years before deciding to completely change my trajectory in life and studying web development. I enjoy going to concerts, hiking, cooking, and traveling.")

user8 = User.create(:name => "Matthew Lawford", :username => "mlawford", :password => "matthew", :password_confirmation => "matthew", image: File.open(File.join(Rails.root, '/app/assets/images/matthew-lawford/profile-pic.png')), bio: "I graduated from the University of Michigan with a degree in Political Science but decided to pursue my passion for programming and creating through Flatiron. I love food, video games, board games, D&D, beer, music, dogs and people!")

user9 = User.create(:name => "Laura Kim", :username => "lkim", :password => "laura", :password_confirmation => "laura")

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

artwork14 = user4.artworks.create!(:name => 'Mahmoud Abdul Rauf', image: File.open(File.join(Rails.root, '/app/assets/images/asif-mian/mahmoud_abdul_rauf_2018.jpeg')))

artwork15 = user4.artworks.create!(:name => 'Porosity', image: File.open(File.join(Rails.root, '/app/assets/images/asif-mian/porosity_2018.jpeg')))

artwork16 = user4.artworks.create!(:name => 'Threat Value', image: File.open(File.join(Rails.root, '/app/assets/images/asif-mian/threat_value_2018.jpeg')))

artwork17 = user5.artworks.create!(:name => 'Bucky (ROYGBIV) from the Dymaxion Series', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-day-jackson/bucky_roygbiv_from_the_dnmaxion_series_2007.jpeg')))

artwork18 = user5.artworks.create!(:name => 'Community Hall (Aerial View)', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-day-jackson/community_hall_aerial_view_2008.jpeg')))

artwork19 = user5.artworks.create!(:name => 'Das Wochenendhaus from the Dymaxion Series', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-day-jackson/das_wochenendhaus_from_the_dymaxion_series_2007.jpeg')))

artwork20 = user5.artworks.create!(:name => 'Destroyed by Fire (Painter on His Way to Work)', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-day-jackson/destroyed_by_fire_painter_on_his_way_to_work_2017.jpeg')))

artwork21 = user5.artworks.create!(:name => 'Life (June 5, 1944)', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-day-jackson/life_june_5_1944_2014.jpeg')))

artwork22 = user6.artworks.create!(:name => 'Horror Vacui (Animal)', image: File.open(File.join(Rails.root, '/app/assets/images/nick-van-woert/horror_vacui_animal_2017.jpeg')))

artwork23 = user6.artworks.create!(:name => 'Untitled', image: File.open(File.join(Rails.root, '/app/assets/images/nick-van-woert/untitled_2017.jpeg')))

artwork24 = user6.artworks.create!(:name => 'Untitled', image: File.open(File.join(Rails.root, '/app/assets/images/nick-van-woert/untitled_plastic_2017.jpeg')))

artwork25 = user6.artworks.create!(:name => 'Untitled', image: File.open(File.join(Rails.root, '/app/assets/images/nick-van-woert/untitled_resin_01_2012.jpeg')))

artwork26 = user6.artworks.create!(:name => 'Untitled', image: File.open(File.join(Rails.root, '/app/assets/images/nick-van-woert/untitled_resin_02_2017.jpeg')))

artwork27 = user7.artworks.create!(:name => 'Self Portrait', image: File.open(File.join(Rails.root, '/app/assets/images/michelle-branch/michelle_drawing.jpeg')))

artwork28 = user8.artworks.create!(:name => 'Self Portrait', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-lawford/matt_drawing.jpeg')))

artwork29 = user9.artworks.create!(:name => 'Self Portrait', image: File.open(File.join(Rails.root, '/app/assets/images/laura-kim/laura_drawing.jpeg')))

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

ArtworkTag.find_or_create_by(artwork_id: artwork14.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork14.id, tag_id: tag30.id)
ArtworkTag.find_or_create_by(artwork_id: artwork14.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork15.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork15.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork15.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork16.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork16.id, tag_id: tag31.id)
ArtworkTag.find_or_create_by(artwork_id: artwork16.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork17.id, tag_id: tag25.id)
ArtworkTag.find_or_create_by(artwork_id: artwork17.id, tag_id: tag29.id)
ArtworkTag.find_or_create_by(artwork_id: artwork17.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork18.id, tag_id: tag27.id)
ArtworkTag.find_or_create_by(artwork_id: artwork18.id, tag_id: tag12.id)
ArtworkTag.find_or_create_by(artwork_id: artwork18.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork19.id, tag_id: tag25.id)
ArtworkTag.find_or_create_by(artwork_id: artwork19.id, tag_id: tag29.id)
ArtworkTag.find_or_create_by(artwork_id: artwork19.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork20.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork20.id, tag_id: tag8.id)
ArtworkTag.find_or_create_by(artwork_id: artwork20.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork21.id, tag_id: tag20.id)
ArtworkTag.find_or_create_by(artwork_id: artwork21.id, tag_id: tag8.id)
ArtworkTag.find_or_create_by(artwork_id: artwork21.id, tag_id: tag29.id)
ArtworkTag.find_or_create_by(artwork_id: artwork21.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork22.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork22.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork22.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork23.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork23.id, tag_id: tag11.id)
ArtworkTag.find_or_create_by(artwork_id: artwork23.id, tag_id: tag9.id)
ArtworkTag.find_or_create_by(artwork_id: artwork23.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork24.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork24.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork24.id, tag_id: tag11.id)
ArtworkTag.find_or_create_by(artwork_id: artwork24.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork25.id, tag_id: tag28.id)
ArtworkTag.find_or_create_by(artwork_id: artwork25.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork25.id, tag_id: tag11.id)
ArtworkTag.find_or_create_by(artwork_id: artwork25.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork26.id, tag_id: tag19.id)
ArtworkTag.find_or_create_by(artwork_id: artwork26.id, tag_id: tag13.id)
ArtworkTag.find_or_create_by(artwork_id: artwork26.id, tag_id: tag11.id)
ArtworkTag.find_or_create_by(artwork_id: artwork26.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork27.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork27.id, tag_id: tag32.id)
ArtworkTag.find_or_create_by(artwork_id: artwork27.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork28.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork28.id, tag_id: tag32.id)
ArtworkTag.find_or_create_by(artwork_id: artwork28.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork29.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork29.id, tag_id: tag32.id)
ArtworkTag.find_or_create_by(artwork_id: artwork29.id, tag_id: tag6.id)
