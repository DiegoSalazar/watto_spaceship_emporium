class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :manufacturer
      t.string :product_class
      t.text :tech_specs

      t.timestamps
    end
  end
end
