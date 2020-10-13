class Room
  attr_reader :patients
  attr_accessor :id
  # def patients
  #   @patients
  # end
  def initialize(attributes = {})
    @id = attributes[:id]
    @capacity = attributes[:capacity] || 0
    @patients = []
  end

  def full?
    @capacity == @patients.length
  end
  # vip.admin(patient)
  # vip.full?
  def admit(patient)
    raise StandardError, "Room is full" if full?

    @patients << patient
    # give the r toomo the patient as well
    patient.room = self
  end
end
