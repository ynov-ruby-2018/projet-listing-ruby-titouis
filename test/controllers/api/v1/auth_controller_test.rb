require 'test_helper'

class Api::V1::AuthControllerTest < ActionDispatch::IntegrationTest

  feature "Auth" do

    it "returns a token if i'm logged in" do
      post api_v1_auth_path, {
          email: '',
          password: ''
      }

      assert_equal 200, last_response.status
    end

  end
end
