class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :name
      t.string :book
      t.string :category
      t.string :address
      t.integer :isbn
      t.integer :phone
      t.decimal :price, precision: 15, scale: 2, default: 0
      t.date :date

      t.timestamps  
    end
  end
end
