class Doctor

    attr_accessor :name, :patient, :doctor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select do |doc_app|
            doc_app.doctor == self
        end
    end

    def patients
        appointments.map do |pat_list|
            pat_list.patient
        end
    end

end
