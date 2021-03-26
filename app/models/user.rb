class User < ApplicationRecord
    has_many :groups
    has_many :group_alerts, through: :groups
    
    def self.create(user)
        
        user = User.new(user)
        user.save
    end

    def self.save(user)
        user = self.create(user)
        user.save
        user
    end
end
