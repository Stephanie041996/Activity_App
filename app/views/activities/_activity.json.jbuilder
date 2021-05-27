json.extract! activity, :id, :name, :author_id, :group_id, :amount, :created_at, :updated_at
json.url activity_url(activity, format: :json)
