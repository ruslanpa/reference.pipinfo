module Refinery
  module References
    class Reference < Refinery::Core::BaseModel
      self.table_name = 'refinery_references'

      attr_accessible :title, :name, :photo_id, :phone, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'
    end
  end
end
