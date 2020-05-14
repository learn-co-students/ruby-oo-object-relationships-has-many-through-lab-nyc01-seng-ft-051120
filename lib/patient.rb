class Patient
    @@all = []
    attr_accessor :name
    def initialize(name)
        @name = name
        Patient.all << self
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments 
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        self.appointments.map{|x| x.doctor}
    end

    def self.all
        @@all
    end

end