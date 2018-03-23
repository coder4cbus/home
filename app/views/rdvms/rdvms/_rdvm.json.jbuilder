json.extract! rdvm, :id, :first_name, :last_name, :clinic_name, :clinic_address, :city, :state, :zip, :preffered_contact, :phone, :email, :vet_id, :created_at, :updated_at
json.url rdvm_url(rdvm, format: :json)
