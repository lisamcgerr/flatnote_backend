class GoalSerializer < ActiveModel::Serializer
  attributes :id, :category, :description, :completion_date, :status, :user_id
  has_one :user
end
