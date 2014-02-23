class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price, :precision => 12, :scale => 2
      t.integer :quantity
      t.datetime :produced_at
      t.integer :issue_id
    end
    add_index :products, :issue_id
  end
end
