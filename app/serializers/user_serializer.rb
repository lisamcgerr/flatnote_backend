class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :password_digest, :image_url
  has_many :goals
end
