json.array!(@clicks) do |click|
  json.extract! click, :id, :ip, :country, :referrer
  json.url click_url(click, format: :json)
end
