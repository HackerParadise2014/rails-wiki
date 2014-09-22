class WelcomeController < ApplicationController
  def index
    @welcome_article = RailsWiki::Article.find_by_title('welcome')
    if @welcome_article
      markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, tables: true)
      @markdown_body = markdown.render(@welcome_article.text || '')
    end

    @articles = RailsWiki::Article.order(:slug).paginate per_page: 20, page: params[:page]
  end
end
