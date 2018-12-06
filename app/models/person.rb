class Person < ApplicationRecord
  has_many :assets
end
  create_table :person do |t|
    t.column :name, :string

    scope :name_like, -> (name) { where("name ilike ?", name)}
end
