# == Schema Information
#
# Table name: facility_images
#
#  id          :bigint           not null, primary key
#  facility_id :bigint
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class FacilityImage < ApplicationRecord
    belongs_to :facility, optional: true
    mount_uploader :image, ImageUploader

    validates :image, presence: true
end
