json.array! @comedians do |comedian|
  json.first_name comedian.first_name
  json.last_name comedian.last_name
  json.id_number comedian.id_number
end
