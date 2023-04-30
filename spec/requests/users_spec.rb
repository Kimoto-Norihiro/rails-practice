require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/users"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    before do
      @user_create_params = {
        user: {
          name: "test",
          email: "text@example.com",
          passoword: "password",
        }
      }
    end
    it "returns http success" do
      post '/api/v1/users', params: @user_create_params
      expect(response).to have_http_status(:success)
    end
  end
end
