class Addproductstable < ActiveRecord::Migration[5.1]
  def up
    create_table :products, id: false do |t|
      t.integer :type_id, primary_key: true
      t.integer :arkonor, null: false
      t.integer :bistot, null: false
      t.integer :crokite, null: false
      t.integer :dark_ochre, null: false
      t.integer :gniess, null: false
      t.integer :spodumain, null: false
    end
  end

  def down
    drop_table :products
  end
end
