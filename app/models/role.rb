class Role < ActiveRecord::Base
    has_many :auditions

    def all_auditions
        self.auditions
    end

    def actors
        self.all_auditions.map(&:actor)
    end

    def locations
        self.all_auditions.map(&:location)
    end

    def lead
        if self.all_auditions.find_by(hired: true)
            self.all_auditions.find_by(hired: true)
        else
            "no actor has been hired for this role"
        end
    end
end