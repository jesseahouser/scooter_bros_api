class CreateBros < ActiveRecord::Migration[6.1]
  def change
    create_table :bros do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
