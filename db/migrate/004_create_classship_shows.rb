class CreateClassshipShows < ActiveRecord::Migration
  def self.up
    create_table :classship_shows do |t|
      t.integer :classship_want_id
      t.time :start_at
      t.string :html_title
      t.string :html_desciption
      t.text :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :classship_shows
  end
end
