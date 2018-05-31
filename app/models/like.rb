# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  product_id :integer
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Like < ApplicationRecord
    belongs_to :user
    belongs_to :product
    
    validates :user_id, presence: true
    validates :product_id, presence: true
    
    validates :product_id, uniqueness: { scope: :user_id,
    message: "This product is already on your wishlist!" }
end
