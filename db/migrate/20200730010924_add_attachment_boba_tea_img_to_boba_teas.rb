class AddAttachmentBobaTeaImgToBobaTeas < ActiveRecord::Migration[5.1]
  def self.up
    change_table :boba_teas do |t|
      t.attachment :boba_tea_img
    end
  end

  def self.down
    remove_attachment :boba_teas, :boba_tea_img
  end
end
