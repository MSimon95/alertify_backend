class Alert < ApplicationRecord
    has_many :group_alerts
    has_many :groups, through: :group_alerts
end
