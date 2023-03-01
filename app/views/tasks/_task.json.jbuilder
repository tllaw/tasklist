json.extract! task, :id, :title, :description, :owner_id, :manager_id, :status, :created_at, :updated_at
json.url task_url(task, format: :json)
