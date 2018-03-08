changes 3/5/18

brew install imagemagick
brew install graphicsmagick

# in Gemfile
gem 'carrierwave', '~> 0.10.0'
gem 'mini_magick', '~> 4.3'

bundle install

rails g migration add_image_to_artwork image:string --no-test-framework
rake db:migrate

# in config/initializers/   create a file: carrier_wave.rb
 require 'carrierwave/orm/activerecord'

rails generate uploader Image

# in app/uploaders/image_uploader.rb uncomment line 7, 35-37, 41-43

# in app/model/artwork.rb
mount_uploader :image, ImageUploader

# in app/views/artworks/ create new.erb and write form

# in app/views/artworks/show.html.erb add following lines:

<p>
  <strong>Image:</strong>
  <%= image_tag @artwork.image.thumb.url %>
</p>

<%= link_to 'Edit', edit_artwork_path(@artwork) %> |
<%= link_to 'Back', artworks_path %>

# in app/model/artwork.rb added following
validates_processing_of :image
validate :image_size_validation

private
  def image_size_validation
    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
  end

#in app/controllers/artworks_controller.rb added new, create, artwork_params methods


thoughts
how to pass self as user_id in art form? use hidden?
should be able to tag art on new form?
use fog?
imagemagick vs graphicsmagick
can artwork have many artists

reference
https://stackoverflow.com/questions/29377651/rails-error-imagemagick-graphicsmagick-is-not-installed
https://stackoverflow.com/questions/32624251/what-is-actual-difference-between-graphicsmagick-and-imagemagick-source-needed
https://code.tutsplus.com/tutorials/rails-image-upload-using-carrierwave-in-a-rails-app--cms-25183



 {"name"=>"kljfslkfjkldjf",
 "year"=>"123123",
 "image"=>#<ActionDispatch::Http::UploadedFile:0x007f86899d0aa0 @tempfile=#<Tempfile:/var/folders/pk/3q70_b5d18xg6nrt5mdpr0740000gn/T/RackMultipart20180306-25407-2xpi8t.jpg>,
  @original_filename="42.jpg",
  @content_type="image/jpeg",
  @headers="Content-Disposition: form-data; name=\"artwork[image]\"; filename=\"42.jpg\"\r\nContent-Type: image/jpeg\r\n">,
  "tag_ids"=>["", "12", "14", "", "8", "11"],
  "style"=>"new style",
  "medium"=>"new medium"}



artwork create

  if @artwork.save
    @year_tag = Tag.find_or_create_by(category: "year", name: params[:artwork][:year])
    ArtworkTag.create(artwork_id: @artwork.id, tag_id: @year_tag.id)
    params[:artwork][:tag_ids].reject { |c| c.empty? }.each {|id| ArtworkTag.create(artwork_id: @artwork.id, tag_id: id.to_i) }
    @style_tag = Tag.find_or_create_by(category: "custom style", name: params[:artwork][:style].capitalize) ##this allows user to create new custom tag where style tag already exists

    ArtworkTag.create(artwork_id: @artwork.id, tag_id: @style_tag.id)
    @medium_tag = Tag.find_by( name: params[:artwork][:medium].capitalize) ## but this might find a custom tag of the wrong category

    if !@medium_tag
      @medium_tag = Tag.create(category: "custom medium", name: params[:artwork][:medium].capitalize)
    end

    ArtworkTag.create(artwork_id: @artwork.id, tag_id: @medium_tag.id)
    redirect_to @artwork
  else
    render :new
  end

  edit art and Tags on art

  
