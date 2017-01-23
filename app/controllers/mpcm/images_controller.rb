require_dependency "mpcm/application_controller"

module Mpcm
  class ImagesController < ApplicationController
  	before_action :set_article

  	def create
  		add_more_images(images_params[:images])
  		flash[:error] = 'Erreur, impossible d\'ajouter l\'image' unless @article.save
  		redirect_to :back
  	end

    def destroy
      remove_image_at_index(params[:id].to_i)
      flash[:error] = 'Impossible de supprimer l\'image' unless @article.save
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

    def remove_image_at_index index
      remain_images = @article.images
      deleted_image = remain_images.delete_at(index)
      deleted_image.try(:remove!)
      @article.images = remain_images
      @article.remove_images! if remain_images.empty?
    end

  	def images_params
  		params.require(:article).permit({images: []})
  	end
  end
end
