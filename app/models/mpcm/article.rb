module Mpcm
  class Article < ApplicationRecord
    validates :title, presence: true
    mount_uploaders :images, ImageUploader

    def formatted_creation_time
      unless !self.created_at
        self.created_at.strftime("%d/%m/%Y - %H:%M:%S")
      end
    end

    def formatted_update_time
      unless !self.updated_at
        self.updated_at.strftime("%d/%m/%Y - %H:%M:%S")
      end
    end

    def formatted_published_time
      unless !self.published_at
        self.published_at.strftime("%d/%m/%Y - %H:%M:%S")
      end
    end

    def formatted_published
      if self.published && self.published == true
        'Oui'
      else
        'Non'
      end
    end

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

    def to_param
      self.slug
    end
  end
end
