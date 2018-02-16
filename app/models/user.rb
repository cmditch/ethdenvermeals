class User < ApplicationRecord
    has_many :sales

    def decrement_credit!
        self.credits -= 1
        self.save
    end

    def increment_credit!
        self.credits += 1
        self.save
    end
    
end
