module Mpcm
  class Article < ApplicationRecord
    scope :published, -> { where('published_at <= ?', Time.zone.now) }

    def formatted_height
      if self.height
        "#{self.height} cm"
      else
        'N/C'
      end
    end

    def formatted_width
      if self.width
        "#{self.width} cm"
      else
        'N/C'
      end
    end

    def formatted_depth
      if self.depth
        "#{self.depth} cm"
      else
        'N/C'
      end
    end

    def formatted_weigth
      if self.weigth
        "#{self.weigth} kg"
      else
        'N/C'
      end
    end

    def formatted_price
      if self.price
        "#{self.price} €"
      else
        'N/C'
      end
    end
  end
end
