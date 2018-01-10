json.extract! record, :id, :description, :origin, :topic, :part, :created_at, :updated_at
json.url record_url(record, format: :json)
