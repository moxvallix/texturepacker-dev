json.extract! item, :id, :base_item_id, :user_id, :name, :created_at, :updated_at
json.url item_url(item, format: :json)
