class Sketch < ApplicationRecord
    # alias_attribute :bg_color, :color
    # has_one :bg_color, through: :colors_sketches,
    # try to set up bg color laters
    
    # has_one :bg_color, through: :colors_sketches, class_name: "ColorsSketch", :foreign_key => "color_id"
    has_one_attached :image
    
    has_many :colors_sketches
    has_many :colors, through: :colors_sketches, source: :color

    has_one :bg_color_sketch, -> {where background_color: true}, class_name: 'ColorsSketch'
    include Rails.application.routes.url_helpers


    def image_url
        if self.image.attached?
            url_for(self.image)
        end
    end

    def bg_color
        bg_color_sketch.color
    end

end
