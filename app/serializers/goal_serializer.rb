class GoalSerializer < ActiveModel::Serializer
  attributes :category, :description, :completion_date, :status, :user_id
  has_one :user
end
