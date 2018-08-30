class CreatePlaces < ActiveRecord::Migration[5.1]
  def change
    create_table :places do |t|
      t.string :name
      t.string :address
      t.boolean :is_final

      t.references :team_members, foreign_key: true
      t.timestamps
    end
  end
end
