class OrganizerItem < ActiveRecord::Base
  belongs_to :organizer_list

  def completed?
    !completed_at.blank?
  end
end
