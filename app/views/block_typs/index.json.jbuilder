json.array!(@block_typs) do |block_typ|
  json.extract! block_typ, :show_name, :name
  json.url block_typ_url(block_typ, format: :json)
end