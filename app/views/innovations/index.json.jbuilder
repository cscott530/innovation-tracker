json.array!(@innovations) do |innovation|
  json.extract! innovation, :id, :name, :caption, :order, :description
  json.url innovation_url(innovation, format: :json)
end
