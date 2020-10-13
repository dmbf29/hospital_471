require 'csv'
require_relative 'patient'

class PatientRepository
  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @patients = []
    @next_id = 1
    load_csv
  end

  def add(patient)
    patient.id = @next_id
    @patients << patient
    @next_id += 1
    save_csv
  end

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      # here we need to fix any CSV data before the instance
      row[:id] = row[:id].to_i
      row[:cured] = row[:cured] == 'true'
      @patients << Patient.new(row)
    end
    @next_id = @patients.any? ? @patients.last.id + 1 : 1
  end

end
