require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /show" do
    before do
      @user = create(:user)
      token = TokenService.issue_token(@user.id)
      cookies[:token] = token
    end
    it "returns http success" do
      get "/api/v1/users/#{@user.id}"
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

  describe "PUT /update" do
    before do
      @user = create(:user)
      token = TokenService.issue_token(@user.id)
      cookies[:token] = token
      @user_update_params = {
        user: {
          name: 'change name',
        }
      }
    end
    it "returns http success" do
      user = create(:user)

      put "/api/v1/users/#{user.id}", params: @user_update_params
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /delete" do
    before do
      @user = create(:user)
      token = TokenService.issue_token(@user.id)
      cookies[:token] = token
    end
    it "returns http success" do
      delete "/api/v1/users/#{@user.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
