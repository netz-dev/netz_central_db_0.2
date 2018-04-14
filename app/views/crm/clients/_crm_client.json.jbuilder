json.extract! crm_client, :id, :client_company_id, :title, :first_name, :last_name, :email, :phone_number, :mobile_number, :branch_location, :contact_level, :industry, :created_at, :updated_at
json.url crm_client_url(crm_client, format: :json)
