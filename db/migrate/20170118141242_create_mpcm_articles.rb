class CreateMpcmArticles < ActiveRecord::Migration[5.0]
  def change
    create_table    :mpcm_articles do |t|
      t.string      :title, index: true
      t.text        :content
      t.string      :slug
      t.float       :height
      t.float       :width
      t.float       :depth
      t.float       :weigth
      t.float       :price
      t.text        :matter, array: true, default: []
      t.boolean     :published, default: false
      t.datetime    :published_at

      t.timestamps  null: false
    end
  end
end
