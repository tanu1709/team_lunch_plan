class CreateTeamMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :team_members do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :token

      t.references :managers, foreign_key: true
      t.timestamps
    end
  end
end
