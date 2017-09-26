class CreateOperativePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :operative_plans do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
