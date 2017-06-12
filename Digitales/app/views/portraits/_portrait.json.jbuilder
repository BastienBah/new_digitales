json.extract! portrait, :id, :titre, :auteur, :url, :description, :created_at, :updated_at
json.url portrait_url(portrait, format: :json)
