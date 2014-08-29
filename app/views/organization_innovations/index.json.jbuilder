json.array!(@organization_innovations) do |organization_innovation|
  json.extract! organization_innovation, :id
  json.url organization_innovation_url(organization_innovation, format: :json)
end
