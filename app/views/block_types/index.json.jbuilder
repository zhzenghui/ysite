json.array!(@block_types) do |block_type|
  json.extract! block_type, :show_name, :name
  json.url block_type_url(block_type, format: :json)
end