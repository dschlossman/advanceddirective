json.array!(@directives) do |directive|
  json.extract! directive, :id, :name, :instructions
  json.url directive_url(directive, format: :json)
end
