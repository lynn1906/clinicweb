json.extract! employee, :id, :firstname, :lastname, :position, :hire_date, :contact, :created_at, :updated_at
json.url employee_url(employee, format: :json)
