class NoteSerializer < ActiveModel::Serializer
  attributes :goal_id, :date, :entry
  has_one :goal
end
