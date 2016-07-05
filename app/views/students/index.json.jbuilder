json.array!(@students) do |student|
  json.extract! student, :id, :last_name, :first_name
  json.url student_url(student, format: :json)
end
