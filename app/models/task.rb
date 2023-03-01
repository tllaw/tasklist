class Task < ApplicationRecord
  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :owner_id,
    inverse_of: :owned_tasks,
  )
  belongs_to(
    :manager,
    class_name: "User",
    foreign_key: :manager_id,
    inverse_of: :managed_tasks,
  )
end
