class CreateOrganizerItems < ActiveRecord::Migration
  def change
    create_table :organizer_items do |t|
      t.string :content
      t.references :organizer_list, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
