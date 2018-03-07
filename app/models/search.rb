class Search < ApplicationRecord

  def search_artworks

    artworks = Artwork.all
    users = User.all

    users = users.where(["name LIKE ?", "%#{artist_name}%"]) if artist_name.present?
    artworks = users.map {|user| user.artworks}.flatten
    artworks = artworks.select{|artwork| artwork.name.include?("#{name}") } if name.present?
    artworks = artworks.select{|artwork| artwork.style.include?("#{style}") } if style.present?
    artworks = artworks.select{|artwork| artwork.medium.include?("#{medium}") } if medium.present?
    # artworks = artworks.select{|artwork| artwork.tags.include?("#{tags}") } if tags.present?
    artworks = artworks.select{|artwork| artwork.year.to_i > after_year } if after_year.present?
    artworks = artworks.select{|artwork| artwork.year.to_i < before_action_year } if before_year.present?

    return artworks

  end

end
