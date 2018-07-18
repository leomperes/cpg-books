class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.date :release_date
      t.decimal :base_price, precision: 5, scale: 2
      t.integer :format, null: false, default: 0

      t.timestamps
    end

    add_index :books, :format
  end
end
