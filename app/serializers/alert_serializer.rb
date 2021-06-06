class AlertSerializer < ActiveModel::Serializer
  attributes :id, :event, :image, :info, :date, :time, :place
end
