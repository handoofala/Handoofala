json.array!(@model_basics) do |model_basic|
  json.extract! model_basic, :id, :title, :post, :date
  json.url model_basic_url(model_basic, format: :json)
end
