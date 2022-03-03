class Role < ActiveRecord::Base
   has_many :auditions

    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end

    def lead
        if
            self.auditions.find_by(hired: true)
        else
            "no hire"
        end
    end 

    def understudy
    
        second = self.auditions.where(hired: true).second
        return 'no under' unless second
        second
        
    end
end