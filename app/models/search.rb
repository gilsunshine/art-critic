class Search < ApplicationRecord

  def search_artworks

    artworks = Artwork.all
    users = User.all

    users = users.where(["name LIKE ?", "%#{artist_name}%"]) if artist_name.present?
    artworks = users.map {|user| user.artworks}.flatten
    artworks = artworks.select{|artwork| artwork.name.include?("#{name}") } if name.present?
    artworks = artworks.select{|artwork| artwork.style.map{|tag| tag.name}.include?("#{style}") } if style.present?
    # if style.present?
    #   artworks = artworks.select do |artwork|
    #     artwork.style.select do |style|
    #       style.name.include?("#{style.name}")
    #     end
    #     !artwork.style.empty?
    #   end
    # end
    # if medium.present?
    #   artworks = artworks.select do |artwork|
    #     artwork.medium.select do |medium|
    #       medium.name.include?("#{medium.name}")
    #     end
    #     !artwork.medium.empty?
    #   end
    # end
    artworks = artworks.select{|artwork| artwork.year.name.to_i > after_year } if after_year.present?
    artworks = artworks.select{|artwork| artwork.year.name.to_i < before_action_year } if before_year.present?

    return artworks

  end

end
