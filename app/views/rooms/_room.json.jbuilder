json.extract! room, :id, :title, :code_string, :building_id, :created_at, :updated_at
json.url room_url(room, format: :json)
