json.array!(@nav_types) do |nav_type|
  json.extract! nav_type, :name, :show_name, :pic
  json.url nav_type_url(nav_type, format: :json)
end