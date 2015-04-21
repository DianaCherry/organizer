class AddCompletedAtToOrganizerItems < ActiveRecord::Migration
  def change
    add_column :organizer_items, :completed_at, :datetime
  end
end
