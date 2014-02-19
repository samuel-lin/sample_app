json.array!(@ships) do |ship|
  json.extract! ship, :ename, :cname, :flag, :callsign
  json.url ship_url(ship, format: :json)
end