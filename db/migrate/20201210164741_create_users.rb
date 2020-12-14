class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.boolean :manager, default: false
      t.boolean :fixer, default: false
      t.boolean :customer, default: true
      t.float :user_lat
      t.float :user_lon

      t.timestamps
    end
  end
end
