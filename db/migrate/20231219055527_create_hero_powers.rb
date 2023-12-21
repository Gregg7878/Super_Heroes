class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers, id: false do |t|
      t.string :id
      t.string :strength
      t.integer :hero_id
      t.integer :power_id

      t.timestamps
    end
  end
end
