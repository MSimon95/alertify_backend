class GroupSerializer < ActiveModel::Serializer
  attributes :id, :description
  belongs_to :user

end
