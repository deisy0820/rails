json.extract! student, :id, :name, :identificacion, :carnet, :created_at, :updated_at
json.url student_url(student, format: :json)