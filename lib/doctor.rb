class Doctor

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        Doctor.all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor == self
        end
    end

    def patients
        appointments.map(&:patient)
        #do |doctors_appointment_instance|
        #doctors_appointment_instance.patient
    end
end