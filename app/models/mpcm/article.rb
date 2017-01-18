module Mpcm
  class Article < ApplicationRecord
  	scope :published, -> { where('published_at <= ?', Time.zone.now) }
  end
end
