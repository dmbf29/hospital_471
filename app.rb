require_relative 'patient'
require_relative 'room'
require_relative 'patient_repository'

seigo = Patient.new(name: 'Seigo')
tomo = Patient.new(name: 'Tomo', cured: true)
alex = Patient.new(name: 'Alex')
jess = Patient.new(name: 'Jess')

patient_repository = PatientRepository.new('patients.csv')
patient_repository.add(jess)
p patient_repository

# vip = Room.new(capacity: 2)
# vip.admit(tomo)
# vip.admit(seigo)
# vip.admit(alex)
# p vip
# p vip.full?

# patient holding an instance of a room
# room holding multiples instanes of patients

# hospital.com/patients/1
# load tomo with id 1
# on the html page
# tomo.name
# tomo.room.capacity
# tomo.room.full?

# hospital.com/rooms/1
# load vip with ID 1
# on the html page
# vip.capacity
# vip.full?
# vip.patients


#
