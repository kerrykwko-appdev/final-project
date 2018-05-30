# == Schema Information
#
# Table name: skintones
#
#  id         :integer          not null, primary key
#  color      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Skintone < ApplicationRecord
    has_many :users, :dependent => :destroy
    has_many :photos, :dependent => :destroy
end
