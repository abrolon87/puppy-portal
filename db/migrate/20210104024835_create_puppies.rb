class CreatePuppies < ActiveRecord::Migration[6.1]
  def change
    create_table :puppies do |t|

      t.timestamps
    end
  end
end
