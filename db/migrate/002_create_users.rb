class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :crypted_password
      t.string :province
      t.string :city
      t.string :district    
      t.string :school
      t.string :detail
      t.string :weibo
      t.string :weixin
      t.string :qq
      t.string :bio
      t.string :avatar_url
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
