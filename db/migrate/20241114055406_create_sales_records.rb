class CreateSalesRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :sales_records do |t|
      t.date :date
      t.decimal :amount
      t.string :category

      t.timestamps
    end
  end
end
