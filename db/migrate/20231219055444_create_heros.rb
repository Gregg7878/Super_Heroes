class CreateHeros < ActiveRecord::Migration[7.0]
  def change
    create_table :heros, id: false do |t|
      t.string :id
      t.string :name
      t.string :super_name

      t.timestamps
    end
  end
end
