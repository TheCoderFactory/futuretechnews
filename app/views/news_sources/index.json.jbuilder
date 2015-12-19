json.array!(@news_sources) do |news_source|
  json.extract! news_source, :id, :name, :host_name, :favicon
  json.url news_source_url(news_source, format: :json)
end
