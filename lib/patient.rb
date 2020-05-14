# class Patient
#     attr_accessor :name

#     @@all = []

#     def initialize(name)
#         @name = name 
#         @@all << self
#     end

#     def self.all
#         @@all
#     end

#     def new_appointment(doctor, date)
#         Appointment.new(doctor, self, date)
#     end

#     def appointments
#         Appointment.all.select do |date|
#             date.patient == self
#         end
#     end
    
#     def doctors
#         appointments.map(&:doctor)
#     end
# end

class Patient
    attr_accessor :name
  
    @@all = []
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)
    end
  
    def appointments
      Appointment.all.select { |appointment| appointment.patient == self }
    end
  
    def doctors
      appointments.map(&:doctor)
    end
  end