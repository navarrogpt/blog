require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  describe "GET posts" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end
end
