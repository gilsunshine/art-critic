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
tag33 = Tag.find_or_create_by(name: "Naivism", category: "style")

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



user1 = User.create(:name => "Alex Chaves", :username => "achaves", :password => "alex", :password_confirmation => "alex", image: File.open(File.join(Rails.root, '/app/assets/images/alex-chaves/profile-pic.png')), bio: "Like many young artists today, Alex Chaves seems to view painting and early Modernist figuration as full of potential, and he argues the case convincingly in his New York solo debut at Martos. His paintings, at once sophisticated, naïve and vaguely illustrational, combine a roving color sense and engaging paint handling with emotional poignancy. His New York solo debut is cheekily titled “The Rose Period” after one of the earliest (1904-6), most popular phases of Picasso’s career.")

user2 = User.create(:name => "Terry Winters", :username => "twinters", :password => "terry", :password_confirmation => "terry", image: File.open(File.join(Rails.root, '/app/assets/images/terry-winters/Terry_Winters.jpg')), bio: "Terry Winters (born 1949, Brooklyn, NY) is an American painter, draughtsman, and printmaker whose nuanced approach to the process of painting has addressed evolving concepts of spatiality and expanded the concerns of abstract art. His attention to the process of painting and investigations into systems and spatial fields explores both non-narrative abstraction and the physicality of modernism. In Winters’ work, abstract processes give way to forms with real word agency that recall mathematical concepts and cybernetics, as well as natural and scientific worlds.")

user3 = User.create(:name => "Shari Mendelson", :username => "smendelson", :password => "shari", :password_confirmation => "shari", image: File.open(File.join(Rails.root, '/app/assets/images/shari-mendelson/Shari-Mendelson.jpg')), bio: "Shari Mendelson, an artist in Williamsburg, Brooklyn, makes iridescent vessels that recall Roman and other ancient glass objects. They are bubbly and precious-looking, and Ms. Mendelson fashions them out of plastic bottles that she harvests from the trash, slices with metalworking shears and hot-glues back together.")

user4 = User.create(:name => "Asif Mian", :username => "amian", :password => "asif", :password_confirmation => "asif", image: File.open(File.join(Rails.root, '/app/assets/images/asif-mian/profile-pic.png')), bio: "ASIF MIAN is a Brooklyn based artist and filmmaker. His work in sculpture, drawing and video is the exploration into violence, social genomics and morality in American culture.")

user5 = User.create(:name => "Matthew Day Jackson", :username => "mjackson", :password => "matthew", :password_confirmation => "matthew", image: File.open(File.join(Rails.root, '/app/assets/images/matthew-day-jackson/matthewdayjackson.jpg')), bio: "Matthew Day Jackson (born 1974) is an American artist whose multifaceted practice encompasses sculpture, painting, collage, photography, drawing, video, performance and installation. Since graduating with an MFA from Rutgers University in 2001, following his BFA from the University of Washington in Seattle, he has had numerous solo exhibitions. His work has been shown at MAMbo Museo d'Arte Moderna in Bologna, Italy; Boulder Museum of Contemporary Art in Boulder, Colorado; the Museum of Fine Arts in Boston, MA; the Portland Museum of Art Biennial in Portland, Maine; and the Whitney Biennial Day for Night in New York.")

user6 = User.create(:name => "Nick Van Woert", :username => "nwoert", :password => "nick", :password_confirmation => "nick", image: File.open(File.join(Rails.root, '/app/assets/images/nick-van-woert/NVW.jpg')), bio: "Nick van Woert is an American artist from Reno, Nevada. He currently lives and works in Brooklyn, New York. He studied architecture (BArch) at the University of Oregon and Fine Arts (MFA) at Parsons the New School for Design in New York.")

user7 = User.create(:name => "Michelle Branch", :username => "mbranch", :password => "michelle", :password_confirmation => "michelle", image: File.open(File.join(Rails.root, '/app/assets/images/michelle-branch/Branch.jpg')))

user8 = User.create(:name => "Matthew Lawford", :username => "mlawford", :password => "matthew", :password_confirmation => "matthew", image: File.open(File.join(Rails.root, '/app/assets/images/matthew-lawford/profile-pic.png')), bio: "I graduated from the University of Michigan with a degree in Political Science but decided to pursue my passion for programming and creating through Flatiron. I love food, video games, board games, D&D, beer, music, dogs and people!")

user9 = User.create(:name => "Laura Kim", :username => "lkim", :password => "laura", :password_confirmation => "laura", image: File.open(File.join(Rails.root, '/app/assets/images/laura-kim/profile-pic.png')), bio: "I worked in Intellectual Property Litigation for two years before deciding to completely change my trajectory in life and studying web development. I enjoy going to concerts, hiking, cooking, and traveling.")

user10 = User.create(:name => "Caroline Lee", :username => "clee", :password => "caroline", :password_confirmation => "caroline")

user11 = User.create(:name => "Gil Sunshine", :username => "gsunshine", :password => "gil", :password_confirmation => "gil")

user12 = User.create(:name => "Daniel Lee", :username => "dlee", :password => "dan", :password_confirmation => "dan")

user13 = User.create(:name => "Niky Morgan", :username => "nmorgan", :password => "niky", :password_confirmation => "niky", bio: "I am an engineer turned musician turned software engineer. I have an M.A. in Musicology and spent several years working in music concerts and touring.")

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

artwork30 = user8.artworks.create!(:name => 'Self Portrait', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-lawford/matt-drawing2.png')))

artwork31 = user9.artworks.create!(:name => 'Self Portrait', image: File.open(File.join(Rails.root, '/app/assets/images/laura-kim/laura_drawing2.jpg')))

artwork32 = user8.artworks.create!(:name => 'Three Hairs', image: File.open(File.join(Rails.root, '/app/assets/images/matthew-lawford/42.jpg')))

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

ArtworkTag.find_or_create_by(artwork_id: artwork30.id, tag_id: tag14.id)
ArtworkTag.find_or_create_by(artwork_id: artwork30.id, tag_id: tag18.id)
ArtworkTag.find_or_create_by(artwork_id: artwork30.id, tag_id: tag6.id)

ArtworkTag.find_or_create_by(artwork_id: artwork31.id, tag_id: tag26.id)
ArtworkTag.find_or_create_by(artwork_id: artwork31.id, tag_id: tag32.id)
ArtworkTag.find_or_create_by(artwork_id: artwork31.id, tag_id: tag6.id)
ArtworkTag.find_or_create_by(artwork_id: artwork31.id, tag_id: tag33.id)

ArtworkTag.find_or_create_by(artwork_id: artwork32.id, tag_id: tag4.id)
ArtworkTag.find_or_create_by(artwork_id: artwork32.id, tag_id: tag14.id)
ArtworkTag.find_or_create_by(artwork_id: artwork32.id, tag_id: tag27.id)

Comment.find_or_create_by(artwork_id: artwork1.id, user_id: user13.id, content: "Nice!")
Comment.find_or_create_by(artwork_id: artwork2.id, user_id: user13.id, content: "NIIIICCCEEE!")
Comment.find_or_create_by(artwork_id: artwork4.id, user_id: user4.id, content: "You're in my top 5 humans of all time.")
Comment.find_or_create_by(artwork_id: artwork4.id, user_id: user13.id, content: "Amazing!")
Comment.find_or_create_by(artwork_id: artwork5.id, user_id: user4.id, content: "You’re better than a perfectly ripe avocado.")
Comment.find_or_create_by(artwork_id: artwork5.id, user_id: user10.id, content: "Awesome!")
Comment.find_or_create_by(artwork_id: artwork8.id, user_id: user7.id, content: "Without you the world would have fewer people in it.")
Comment.find_or_create_by(artwork_id: artwork9.id, user_id: user1.id, content: "This is so good")
Comment.find_or_create_by(artwork_id: artwork10.id, user_id: user11.id, content: "I'd be scared to play you at Scrabble.")
Comment.find_or_create_by(artwork_id: artwork11.id, user_id: user7.id, content: "phenomenal")
Comment.find_or_create_by(artwork_id: artwork12.id, user_id: user2.id, content: "You are wonderfully odd.")
Comment.find_or_create_by(artwork_id: artwork12.id, user_id: user13.id, content: "I love this")
Comment.find_or_create_by(artwork_id: artwork12.id, user_id: user2.id, content: "You're a glass of water after a long run.")
Comment.find_or_create_by(artwork_id: artwork13.id, user_id: user7.id, content: "I like this")
Comment.find_or_create_by(artwork_id: artwork13.id, user_id: user2.id, content: "I love you more than tea.")
Comment.find_or_create_by(artwork_id: artwork13.id, user_id: user6.id, content: "I have worms!")
Comment.find_or_create_by(artwork_id: artwork14.id, user_id: user7.id, content: "It didn’t make any sense.")
Comment.find_or_create_by(artwork_id: artwork14.id, user_id: user3.id, content: "You're wise and all knowing, like a mighty owl.")
Comment.find_or_create_by(artwork_id: artwork21.id, user_id: user12.id, content: "I want it.")
Comment.find_or_create_by(artwork_id: artwork21.id, user_id: user7.id, content: "If you tried, you could probably be quite famous.")
Comment.find_or_create_by(artwork_id: artwork21.id, user_id: user7.id, content: "You’re weird but I like you.")
Comment.find_or_create_by(artwork_id: artwork24.id, user_id: user2.id, content: "Meh")
Comment.find_or_create_by(artwork_id: artwork25.id, user_id: user10.id, content: "You're the hero Gotham needs.")
Comment.find_or_create_by(artwork_id: artwork25.id, user_id: user12.id, content: "Is it a bird? Is it a plane? No. It's you, you massive legend.")
Comment.find_or_create_by(artwork_id: artwork25.id, user_id: user11.id, content: "You're cooler than the other side of the pillow.")
Comment.find_or_create_by(artwork_id: artwork26.id, user_id: user2.id, content: "You're better than free wifi.")
Comment.find_or_create_by(artwork_id: artwork26.id, user_id: user5.id, content: "Good job.")
Comment.find_or_create_by(artwork_id: artwork26.id, user_id: user7.id, content: "You are a walking high-five.")
Comment.find_or_create_by(artwork_id: artwork29.id, user_id: user8.id, content: "I like it.")
Comment.find_or_create_by(artwork_id: artwork29.id, user_id: user3.id, content: "You're my kind of weird.")

Comment.find_or_create_by(artwork_id: artwork1.id, user_id: user10.id, content: "With regard to the issue of content, the iconicity of the purity of line brings within the realm of discourse the inherent overspecificity.")
Comment.find_or_create_by(artwork_id: artwork4.id, user_id: user9.id, content: "I'm troubled by how the internal dynamic of the biomorphic forms verges on codifying a participation in the critical dialogue of the 90s.")
Comment.find_or_create_by(artwork_id: artwork5.id, user_id: user11.id, content: "I find this work menacing/playful because of the way the disjunctive perturbation of the sexy fish makes resonant the exploration of montage elements.")
Comment.find_or_create_by(artwork_id: artwork8.id, user_id: user4.id, content: "It should be added that the metaphorical resonance of the sexy fish notates a participation in the critical dialogue of the 90s.")
Comment.find_or_create_by(artwork_id: artwork9.id, user_id: user9.id, content: "I'm surprised that no one's mentioned yet that the mechanical mark-making of the Egyptian motifs notates the inherent overspecificity.")
Comment.find_or_create_by(artwork_id: artwork9.id, user_id: user12.id, content: "It's difficult to enter into this work because of how the sublime beauty of the Egyptian motifs verges on codifying the essentially transitional quality.")
Comment.find_or_create_by(artwork_id: artwork14.id, user_id: user3.id, content: "I agree/disagree with some of the things that have just been said, but the aura of the sexual signifier brings within the realm of discourse the remarkable handling of light.")
Comment.find_or_create_by(artwork_id: artwork16.id, user_id: user11.id, content: "Although I am not a painter, I think that the iconicity of the purity of line notates the accessibility of the work.")
Comment.find_or_create_by(artwork_id: artwork19.id, user_id: user3.id, content: "I'm troubled by how the internal dynamic of the sexual signifier seems very disturbing in light of the accessibility of the work.")
Comment.find_or_create_by(artwork_id: artwork20.id, user_id: user4.id, content: "As an advocate of the Big Mac Aesthetic, I feel that the reductive quality of the facture notates the distinctive formal juxtapositions.")
Comment.find_or_create_by(artwork_id: artwork22.id, user_id: user3.id, content: "I'm surprised that no one's mentioned yet that the optical suggestions of the figurative-narrative line-space matrix visually and conceptually activates the larger carcass.")
Comment.find_or_create_by(artwork_id: artwork23.id, user_id: user6.id, content: "I'm surprised that no one's mentioned yet that the mechanical mark-making of the spatial relationships verges on codifying the remarkable handling of light.")
Comment.find_or_create_by(artwork_id: artwork24.id, user_id: user8.id, content: "It's difficult to enter into this work because of how the mechanical mark-making of the gesture brings within the realm of discourse the inherent overspecificity.")
Comment.find_or_create_by(artwork_id: artwork27.id, user_id: user11.id, content: "It should be added that the aura of the facture threatens to penetrate the larger carcass.")
Comment.find_or_create_by(artwork_id: artwork27.id, user_id: user12.id, content: "I'm surprised that no one's mentioned yet that the subaqueous qualities of the negative space seems very disturbing in light of the remarkable handling of light.")
Comment.find_or_create_by(artwork_id: artwork27.id, user_id: user12.id, content: "Umm... the aura of the gesture seems very disturbing in light of the eloquence of these pieces.")
Comment.find_or_create_by(artwork_id: artwork28.id, user_id: user12.id, content: "With regard to the issue of content, the metaphorical resonance of the purity of line visually and conceptually activates the remarkable handling of light.")

Vote.find_or_create_by(artwork_id: artwork1.id, user_id: user13.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork1.id, user_id: user3.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork2.id, user_id: user11.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork2.id, user_id: user1.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork3.id, user_id: user4.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork3.id, user_id: user7.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork4.id, user_id: user8.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork4.id, user_id: user4.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork5.id, user_id: user9.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork5.id, user_id: user6.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork6.id, user_id: user1.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork7.id, user_id: user5.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork7.id, user_id: user4.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork8.id, user_id: user11.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork12.id, user_id: user7.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork12.id, user_id: user1.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork12.id, user_id: user2.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork13.id, user_id: user12.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork14.id, user_id: user2.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork16.id, user_id: user2.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork17.id, user_id: user9.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork17.id, user_id: user11.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork17.id, user_id: user7.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork17.id, user_id: user2.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork17.id, user_id: user6.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork17.id, user_id: user1.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork18.id, user_id: user7.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork20.id, user_id: user11.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork20.id, user_id: user1.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork21.id, user_id: user6.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork21.id, user_id: user3.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork21.id, user_id: user13.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork22.id, user_id: user9.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork22.id, user_id: user3.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork23.id, user_id: user11.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork23.id, user_id: user1.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork24.id, user_id: user8.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork24.id, user_id: user4.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork24.id, user_id: user1.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork25.id, user_id: user5.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork25.id, user_id: user9.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork25.id, user_id: user12.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork25.id, user_id: user13.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork26.id, user_id: user2.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork26.id, user_id: user11.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork26.id, user_id: user5.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork26.id, user_id: user7.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork29.id, user_id: user13.id, value: -1)
Vote.find_or_create_by(artwork_id: artwork29.id, user_id: user3.id, value: 1)
Vote.find_or_create_by(artwork_id: artwork29.id, user_id: user11.id, value: 1)
