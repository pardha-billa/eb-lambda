class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :transaction_type
      t.float :amount
      t.date :day

      t.timestamps
    end
  end
end
