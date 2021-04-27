class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.string :company_name 
      t.string :phone
      t.string :note

      t.timestamps null: false 
    end
  end
end
