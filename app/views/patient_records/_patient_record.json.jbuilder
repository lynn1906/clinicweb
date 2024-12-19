json.extract! patient_record, :id, :visit_date, :dianosis, :treatment, :notes, :prescription, :created_at, :updated_at
json.url patient_record_url(patient_record, format: :json)
