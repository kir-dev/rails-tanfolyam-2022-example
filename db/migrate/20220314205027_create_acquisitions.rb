class CreateAcquisitions < ActiveRecord::Migration[7.0]
  def change
    create_table :acquisitions do |t|
      t.integer :year
      t.references :library, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
