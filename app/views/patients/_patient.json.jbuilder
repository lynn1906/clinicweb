json.extract! patient, :id, :firstname, :lastname, :gender, :age, :contact, :emergency_contact, :date_of_birth, :detail, :created_at, :updated_at
json.url patient_url(patient, format: :json)
