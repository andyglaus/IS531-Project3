json.array!(@belongings) do |belonging|
  json.extract! belonging, :id, :name, :location, :organization, :manufacturer, :part, :description, :month, :year, :notes, :employee_id
  json.url belonging_url(belonging, format: :json)
end
