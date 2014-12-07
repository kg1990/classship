class CreateClassshipJoins < ActiveRecord::Migration
  def self.up
    create_table :classship_joins do |t|
      t.integer :classship_want_id
      t.integer :user_id
      t.integer :join_user_id
      t.boolean :email_flag
      t.boolean :read_flag
      t.timestamps
    end
  end

  def self.down
    drop_table :classship_joins
  end
end
