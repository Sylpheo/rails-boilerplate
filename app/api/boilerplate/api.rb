require 'doorkeeper/grape/helpers'

module Boilerplate
  class API < Grape::API
    prefix "api"
    format :json

    helpers do
      def current_resource_owner
        return User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
      end
    end

    helpers Doorkeeper::Grape::Helpers

    get :me do
      doorkeeper_authorize!
      present current_resource_owner
    end
  end
end