# == Schema Information
#
# Table name: facilities
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  status      :integer          default(1)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Facility < ApplicationRecord
    has_many :facility_images, dependent: :destroy
    
    accepts_nested_attributes_for :facility_images
end
