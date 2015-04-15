class User < ActiveRecord::Base
  has_secure_password

  class Entity < Grape::Entity
    root 'users', 'user'

    expose :id
    expose :username
  end
end
