require 'pry'
class Doctor
    attr_accessor :name
    @@all =[]

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        Doctor.all << self
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |appointments|
            appointments.doctor == self
        end
    end

    def patients
        self.appointments.map do |appoint_info|
            appoint_info.patient
        end
    end

end