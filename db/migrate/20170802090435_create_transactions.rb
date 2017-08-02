class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.references :account, foreign_key: true
      t.date :date
      t.string :category
      t.string :comment
      t.float :amount
      t.boolean :done

      t.timestamps
    end
  end
end
