class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :email, :image_url
  has_many :goals
  has_many :notes, through: :goals
end
