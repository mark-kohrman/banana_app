class ChangePriceFromStringToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :bananas, :price, :integer, using: 'price::integer'
  end
end
