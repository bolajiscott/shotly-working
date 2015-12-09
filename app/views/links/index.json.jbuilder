json.array!(@links) do |link|
  json.extract! link, :id, :url, :short_url, :active
  json.url link_url(link, format: :json)
end
