class Review < ApplicationRecord
    belongs_to :boba_tea
    belongs_to :user
end
