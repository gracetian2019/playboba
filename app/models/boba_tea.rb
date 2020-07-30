class BobaTea < ApplicationRecord
#only user can delete the content they created, it has user_id
belongs_to :user, optional: true
belongs_to :boba_shop, optional: true
has_many :reviews
has_many :users, through: :reviews
has_attached_file :boba_tea_img, :styles => { :boba_tea_index => "250x350>", :boba_tea_show => "325x475>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :boba_tea_img, :content_type => /\Aimage\/.*\Z/
end
