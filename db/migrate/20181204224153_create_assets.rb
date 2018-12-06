class CreateAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :assets do |t|
      t.string :Type
      t.string :Make
      t.string :Model
      t.string :Serial
      t.string :Assigned

      t.timestamps
    end
  end
end
