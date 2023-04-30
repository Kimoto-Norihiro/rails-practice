require 'rails_helper'

RSpec.describe "Todos", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/api/v1/todos"
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST /create" do
    before do
      @todo_create_params = {
        todo: {
          title: 'test title',
          body: 'test body',
        }
      }
    end
    it "returns http success" do
      post "/api/v1/todos", params: @todo_create_params
      expect(response).to have_http_status(:success)
    end
  end

  describe "PUT /update" do
    before do
      @todo_update_params = {
        todo: {
          title: 'change title',
        }
      }
    end
    it "returns http success" do
      user = create(:user)
      todo = create(:todo, user: user)

      put "/api/v1/todos/#{todo.id}", params: @todo_update_params
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH /delete" do
    it "returns http success" do
      user = create(:user)
      todo = create(:todo, user: user)

      delete "/api/v1/todos/#{todo.id}"
      expect(response).to have_http_status(:success)
    end
  end
end
