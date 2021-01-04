class CreateCues < ActiveRecord::Migration[6.1]
  def change
    create_table :cues do |t|
      t.string :cue_name
      t.text :notes
      t.string :tools
      t.boolean :learned?
      t.datetime :start_date
      t.belongs_to :puppy
      

      t.timestamps
    end
  end
end
