class NoteSerializer < ActiveModel::Serializer
  attributes :id, :goal_id, :date, :entry
  has_one :goal
end
