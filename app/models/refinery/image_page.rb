module Refinery
  class ImagePage < Refinery::Core::BaseModel

    belongs_to :image
    belongs_to :page, :polymorphic => true

    translates :caption, :title if self.respond_to?(:translates)

    attr_accessible :image_id, :position, :locale, :title, :photoby_url, :yellowkorner_url
    self.translation_class.send :attr_accessible, :locale

  end
end
