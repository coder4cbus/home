json.extract! pet, :id, :name, :age, :weight, :species, :breed, :client_id, :vet_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
