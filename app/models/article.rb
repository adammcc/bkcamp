class Article
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :src, type: String
  field :alt, type: String
  field :title, type: String
  field :article_type, type: String
  field :filter, type: String
  field :feature_article, type: Boolean
  field :feature_img_src, type: String
  field :main_blurb, type: String
  field :blurb, type: String
  field :instructions, type: String
  field :recipe, type: Array
  field :pics, type: Array
  field :home_image, type: String
end
