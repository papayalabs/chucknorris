json.extract! joke, :id, :icon_url, :url, :value, :created_at, :updated_at
json.url joke_url(joke, format: :json)
