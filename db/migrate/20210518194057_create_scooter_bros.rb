class CreateScooterBros < ActiveRecord::Migration[6.1]
  def change
    create_table :scooter_bros do |t|
      t.references :scooter, null: false, foreign_key: true
      t.references :bro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
