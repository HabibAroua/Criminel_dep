json.extract! the_case, :id, :titile, :type, :complainant_cin, :complainant_first_name, :complainant_last_name, :complainant_telephone, :location, :address, :created_at, :updated_at
json.url the_case_url(the_case, format: :json)
