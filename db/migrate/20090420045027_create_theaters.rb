class CreateTheaters < ActiveRecord::Migration
  def self.up
    create_table :theaters do |t|
      t.string :name
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.string :address_street

      t.timestamps
    end
  end

  def self.down
    drop_table :theaters
  end
end
