class AddBobaTeaIdToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :boba_tea_id, :integer
  end
end
