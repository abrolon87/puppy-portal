class CreatePuppies < ActiveRecord::Migration[6.1]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :breed
      t.integer :age
      t.string :location
      t.belongs_to :user
      t.text :bio

      t.timestamps
    end
  end
end
