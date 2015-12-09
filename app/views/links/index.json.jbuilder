json.array!(@links) do |link|
  json.extract! link, :id, :url, :short_url, :active, :deleted
  json.url link_url(link, format: :json)
end
