class CreateClassshipWants < ActiveRecord::Migration
  def self.up
    create_table :classship_wants do |t|
      t.integer :user_id
      t.integer :target_user_id
      t.time :start_at
      t.string :html_title
      t.string :html_desciption
      t.text :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :classship_wants
  end
end
