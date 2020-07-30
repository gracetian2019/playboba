class AddBobaShopIdToBobaTeas < ActiveRecord::Migration[5.1]
  def change
    add_column :boba_teas, :boba_shop_id, :integer
  end
end
