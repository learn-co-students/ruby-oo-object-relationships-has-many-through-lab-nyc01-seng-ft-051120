class Doctor
attr_accessor :name, :date
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
  Appointment.all.select do |appt_instance|
    appt_instance.doctor == self
  end
end

def patients 
  appointments.collect do |x_instance|
    x_instance.patient
  end
end

end