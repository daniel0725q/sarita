class CreateAdvances < ActiveRecord::Migration[5.1]
  def change
    create_table :advances do |t|
      t.string :name
      t.text :description
      t.references :operative_plan, foreign_key: true

      t.timestamps
    end
  end
end
