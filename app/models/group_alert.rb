class GroupAlert < ApplicationRecord
    belongs_to :group
    belongs_to :alert
    
end
