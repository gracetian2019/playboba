class AddUserIdToBobaTeas < ActiveRecord::Migration[5.1]
  def change
    add_column :boba_teas, :user_id, :integer
  end
end
