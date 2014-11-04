json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :source, :description
  json.url recipe_url(recipe, format: :json)
end
