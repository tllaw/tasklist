class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many(
    :owned_tasks,
    class_name: "Task",
    foreign_key: :owner_id,
    inverse_of: :owner,
  )

  has_many(
    :managed_tasks,
    class_name: "Task",
    foreign_key: :manager_id,
    inverse_of: :manager,
  )
end
