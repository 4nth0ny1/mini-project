class CreateOpportunities < ActiveRecord::Migration[6.1]
  def change
    create_table :opportunities do |t|
      t.string :product
      t.string :note
    

      t.timestamps
    end
  end
end
