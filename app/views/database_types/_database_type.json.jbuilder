json.extract! database_type, :id, :name, :notes, :created_at, :updated_at
json.url database_type_url(database_type, format: :json)
