module Boilerplate
  class API < Grape::API
    prefix "api"
    format :json

    get :hello do
      { hello: "world" }
    end
  end
end