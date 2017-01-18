class AddImagesToArticle < ActiveRecord::Migration[5.0]
  def up
  	add_column :mpcm_articles, :images, :string, array: true, default: []
  end

  def down
  	remove_column :mpcm_articles, :images
  end
end
