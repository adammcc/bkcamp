class ArticlesController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    home_images = HomeImage.all
    home_images_json = home_images.map { |hi| [hi.src, hi.title, hi.path] }

    articles = Article.all
    article_info_json = {}
    articles.each do |article|
      article_info_json[article.alt.to_s] = {
        src: article.src,
        alt: article.alt,
        title: article.title,
        article_type: article.article_type,
        filter: article.filter,
        feature_article: article.feature_article,
        feature_img_src: article.feature_img_src,
        main_blurb: article.main_blurb,
        blurb: article.blurb,
        instructions: article.instructions,
        recipe: article.recipe,
        pics: article.pics,
        home_image: article.home_image
      }
    end

    render :json => { "home_images" => home_images_json, "info" => article_info_json }
  end
end