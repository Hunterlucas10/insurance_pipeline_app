json.extract! lead, :id, :first_name, :last_name, :phone, :email, :line_of_business, :status, :notes, :agent, :date_added, :last_update, :created_at, :updated_at
json.url lead_url(lead, format: :json)
