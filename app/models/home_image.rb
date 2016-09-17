class HomeImage
  include Mongoid::Document
  include Mongoid::Timestamps

  field :src, type: String
  field :title, type: String
  field :path, type: String


  def self.s3_path
    "https://s3.amazonaws.com/ff-image-files/images/"
  end
end
