class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :phone, :address, :city, :pincode, :state, :country, :password, :activation_digest, :remember_digest, :activated_at, :reset_digest, :reset_sent_at, :activated
end
