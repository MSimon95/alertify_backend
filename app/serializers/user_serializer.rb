class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :image, :phone, :bio 
  has_many :groups
end
