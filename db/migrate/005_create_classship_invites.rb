class CreateClassshipInvites < ActiveRecord::Migration
  def self.up
    create_table :classship_invites do |t|
      t.integer :classship_want_id
      t.integer :user_id
      t.integer :invite_user_id
      t.boolean :email_flag
      t.boolean :read_flag
      t.timestamps
    end
  end

  def self.down
    drop_table :classship_invites
  end
end
