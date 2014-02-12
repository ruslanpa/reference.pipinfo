module Refinery
  module References
    class Reference < Refinery::Core::BaseModel
      self.table_name = 'refinery_references'

      attr_accessible :title, :name, :photo_id, :phone, :position

      validates :title, :presence => true, :uniqueness => true

      belongs_to :photo, :class_name => '::Refinery::Image'

      def self.search(search)
        if search
          find(:all, :conditions => ['LOWER(title) LIKE ?', "%#{ search.mb_chars.downcase.to_s }%"]) unless search.empty?
        end
      end
    end
  end
end
