json.array! @stores do |store|
  json.id store.id
  json.lonlat store.lonlat
  json.name store.name
  json.address store.address
  json.google_place_id store.google_place_id
end
