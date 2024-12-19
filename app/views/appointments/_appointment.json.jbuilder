json.extract! appointment, :id, :patient_id, :employee_id, :appointment_date, :appointment_time, :reason, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
