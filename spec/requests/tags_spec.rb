require 'rails_helper'

RSpec.describe "Tags", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/tags/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /delete" do
    it "returns http success" do
      get "/tags/delete"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/tags/update"
      expect(response).to have_http_status(:success)
    end
  end

end
