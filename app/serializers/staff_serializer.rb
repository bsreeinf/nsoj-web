class StaffSerializer < ActiveModel::Serializer
  attributes :id, :name, :designation, :speciality, :description
end
