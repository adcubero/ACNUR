json.array!(@trannigs) do |trannig|
  json.extract! trannig, :id, :name, :description, :company_id
  json.url trannig_url(trannig, format: :json)
end
