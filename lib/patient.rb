require 'pry'
class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        Patient.all << self
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor) 
    end

    def appointments
        Appointment.all.select do |appointments|
            appointments.patient == self
        end
    end

    def doctors
        self.appointments.map do |appoint_info|
            appoint_info.doctor
        end
    end

end