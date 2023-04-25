require 'rails_helper'

RSpec.describe "Tags", type: :request do
  describe "POST /create" do
    it "returns http success" do
      post "/api/v1/tags"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /delete" do
    it "returns http success" do
      patch "/api/v1/tags/1"
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /update" do
    it "returns http success" do
      put "/api/v1/tags/1"
      expect(response).to have_http_status(:success)
    end
  end

end
