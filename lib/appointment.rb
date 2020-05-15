require 'pry'
class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        save
    end

    def self.all
        @@all
    end

    def save
        Appointment.all << self
    end

end