class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.datetime :date
      t.string :entry
      t.belongs_to :goal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
