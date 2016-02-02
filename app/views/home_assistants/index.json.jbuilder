json.array!(@home_assistants) do |home_assistant|
  json.extract! home_assistant, :id
  json.url home_assistant_url(home_assistant, format: :json)
end
