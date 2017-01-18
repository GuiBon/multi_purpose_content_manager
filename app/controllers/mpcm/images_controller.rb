require_dependency "mpcm/application_controller"

module Mpcm
  class ImagesController < ApplicationController
  	before_action :set_gallery

  	def create
  		add_more_images(images_params[:images])
  		flash[:error] = 'Erreur, impossible d\'ajouter l\'image' unless @article.save
  		redirect_to :back
  	end

  	private

  	def set_article
  		@article = Article.find(params[:article_id])
  	end

  	def add_more_images new_images
  		images = @article.images
  		images += new_images
  		@article.images = images
  	end

  	def images_params
  		params.require(:article).permit({images: []})
  	end
  end
end
