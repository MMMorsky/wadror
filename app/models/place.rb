class Place < OpenStruct
  def self.rendered_fields
    [ :status, :street, :city, :zip, :country, :overall ]
  end 

  def address_line
    ERB::Util.url_encode("#{street} #{city} #{country}") 
  end


end