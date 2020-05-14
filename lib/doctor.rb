class Doctor
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        Doctor.all << self 
    end

    def appointments
       Appointment.all.select{|x| x.doctor == self} 
    end

    def new_appointment(patient,date)
        Appointment.new(date,patient,self)
    end

    def patients
        self.appointments.map{|appointment| appointment.patient }
    end

    def self.all 
        @@all
    end
end