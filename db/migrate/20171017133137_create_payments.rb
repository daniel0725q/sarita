class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.string :name
      t.text :description
      t.text :info

      t.timestamps
    end
  end
end
