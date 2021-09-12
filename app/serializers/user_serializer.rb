class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :phone, :bio, :image 
end
