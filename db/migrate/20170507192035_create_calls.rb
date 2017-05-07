class CreateCalls < ActiveRecord::Migration[5.0]
  def change
    create_table :calls do |t|
      t.string :to_number
      t.string :from_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
