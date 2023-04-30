require 'rails_helper'

RSpec.describe "Tags", type: :request do
  before do
    @user = create(:user)
    token = TokenService.issue_token(@user.id)
    cookies[:token] = token
    @tag_create_params = {
      tag: {
        name: 'test name',
      }
    }
  end
  describe "POST /create" do
    it "returns http success" do
      post "/api/v1/tags", params: @tag_create_params
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /update" do
    before do
      @user = create(:user)
      token = TokenService.issue_token(@user.id)
      cookies[:token] = token
      @tag_update_params = {
        tag: {
          name: 'change name'
        }
      }
    end
    it "returns http success" do
      user = create(:user)
      tag = create(:tag, user: user)

      put "/api/v1/tags/#{tag.id}", params: @tag_update_params
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
      user = create(:user)
      tag = create(:tag, user: user)

      delete "/api/v1/tags/#{tag.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
