class CreateTables < ActiveRecord::Migration[5.2]

  def change
    create_table :listings do |t|
      t.string :city
      t.integer :host_user_id
      t.string :address
    end

    create_table :users do |t|
      t.string :name
    end

    create_table :reservations do |t|
      t.integer :user_id
      t.integer :listing_id
    end
  end
end
