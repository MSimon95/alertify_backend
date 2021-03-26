class Group < ApplicationRecord

    belongs_to :user
    has_many :group_alerts
    has_many :alerts, through: :group_alerts

end
