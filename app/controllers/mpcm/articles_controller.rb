require_dependency "mpcm/application_controller"

module Mpcm
  class ArticlesController < ApplicationController
    before_action :set_article, only: [:show, :edit, :edit_images, :update, :destroy]

    def index
      @articles = Article.all
    end

    def show
    end

    def new
      @article = Article.new
    end

    def edit
    end

    def edit_images
    end

    def create
      @article = Article.new(article_params)

      if @article.save
        redirect_to article_path(@article), notice: 'Article créé avec succès'
      else
        render :new
      end
    end

    def update
      if @article.update(article_params)
        redirect_to article_path(@article), notice: 'Article sauvegardé avec succès'
      else
        render :edit
      end
    end

    def destroy
      @article.destroy
      redirect_to articles_path, notice: 'Article supprimé avec succès'
    end

    private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:id,
                                      :title,
                                      :content,
                                      :slug,
                                      :height,
                                      :width,
                                      :depth,
                                      :weigth,
                                      :price,
                                      {images: []},
                                      :published
                                      )
    end
  end
end
