class HomeImage
  include Mongoid::Document
  include Mongoid::Timestamps

  field :src, type: String
  field :title, type: String
  field :path, type: String
end
