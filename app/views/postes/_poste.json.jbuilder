json.extract! poste, :id, :first_name, :last_name, :email, :phone, :twitter, :created_at, :updated_at
json.url poste_url(poste, format: :json)
