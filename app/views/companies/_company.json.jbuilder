json.extract! company, :id, :name, :description, :website, :phone, :email, :created_at, :updated_at
json.url company_url(company, format: :json)
