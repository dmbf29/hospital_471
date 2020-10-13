class Patient
  attr_reader :name
  attr_accessor :room, :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @cured = attributes[:cured] || false
  end

  def cured? #reader
    @cured
  end

  def cure!
    @cured = true
  end
end

# Patient.new('Seigo', 12, true, "A-", false)

# p Patient.new
# pass a hash as an argument
