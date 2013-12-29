json.array!(@app_versions) do |app_version|
  json.extract! app_version, :version_number, :url, :description
  json.url app_version_url(app_version, format: :json)
end