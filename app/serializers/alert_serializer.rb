class AlertSerializer < ActiveModel::Serializer
  attributes :id, :event, :image, :info, :time, :place
end
