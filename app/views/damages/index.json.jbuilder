json.array!(@damages) do |damage|
  json.extract! damage, :name, :father_name, :CNIC, :family, :village, :tehsil
  json.url damage_url(damage, format: :json)
end
