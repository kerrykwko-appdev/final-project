# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  skintone_id :integer
#  image       :string
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

class Photo < ApplicationRecord
    belongs_to :user
    belongs_to :skintone
    belongs_to :product
end
