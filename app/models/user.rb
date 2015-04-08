class User < ActiveRecord::Base
  has_secure_password

  class Entity < Grape::Entity
    expose :id
    expose :username
  end
end
