class FacilitiesController < ApplicationController
    skip_before_action :authenticate_user!

    def index
        facilities = Facility.all
        a = facilities.as_json(include: :facility_images)
        render json:{data: a}
    end
    
end
