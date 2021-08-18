class Audition < ActiveRecord::Base
    belongs_to :role

    def find_role
        self.role
    end

    def call_back
        self.hired ? self.update(hired: false) : self.update(hired: true)
    end
end