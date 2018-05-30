# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  brand      :string
#  item       :string
#  shade      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Product < ApplicationRecord
    has_many :photos, :dependent => :destroy
    has_many :likes, :dependent => :destroy
    
    def full_product
        "#{brand} #{item} #{shade}"
    end
end
