class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :Name
      t.string :Location
      t.string :Asset

      t.timestamps
    end
  end
end
