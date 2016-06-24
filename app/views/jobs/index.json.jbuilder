json.array!(@jobs) do |job|
  json.extract! job, :id, :name, :description, :company_belongs_to
  json.url job_url(job, format: :json)
end
