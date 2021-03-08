class CreateGoals < ActiveRecord::Migration[6.1]
  def change
    create_table :goals do |t|
      t.string :category
      t.string :description
      t.datetime :completion_date
      t.boolean :status, default: false
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
