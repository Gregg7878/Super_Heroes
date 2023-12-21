class CreatePowers < ActiveRecord::Migration[7.0]
  def change
    create_table :powers, id: false do |t|
      t.string :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
