json.array!(@navgations) do |navgation|
  json.extract! navgation, :app_id, :nav_type_id, :status
  json.url navgation_url(navgation, format: :json)
end