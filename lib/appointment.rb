class Appointment
    @@all=[]
    attr_accessor :doctor, :patient, :date
    def initialize(date, patient, doctor)
        @patient=patient
        @date=date
        @doctor=doctor
        @@all << self
    end
def patient
    @patient
end
def self.all
    @@all
end
def doctor
    @doctor
end
end