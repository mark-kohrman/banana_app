class CreateBananas < ActiveRecord::Migration[6.0]
  def change
    create_table :bananas do |t|
      t.string :country
      t.string :company
      t.string :price

      t.timestamps
    end
  end
end
