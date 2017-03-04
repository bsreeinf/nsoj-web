class StaffsController < InheritedResources::Base

  private

    def staff_params
      params.require(:staff).permit(:name, :designation, :speciality, :description)
    end
end

