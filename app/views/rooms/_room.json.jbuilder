json.extract! room, :id, :name, :code, :status, :kind_room_id, :created_at, :updated_at
json.url room_url(room, format: :json)
