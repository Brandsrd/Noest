json.array!(@seniors) do |senior|
  json.extract! senior, :id, :naam, :achternaam
  json.url senior_url(senior, format: :json)
end
