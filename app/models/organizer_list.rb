class OrganizerList < ActiveRecord::Base
  has_many :organizer_items, dependent: :destroy
end
