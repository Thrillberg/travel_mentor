class CreateUserCities < ActiveRecord::Migration
  def change
    create_table :user_cities do |t|
      t.integer :city_id, :user_id
    end
  end
end
