require 'rails_helper'

RSpec.describe PlanetsController do
  let(:planet) {create(:planet)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: planet.id}
      expect(response).to have_http_status(:success)
    end
  end

end
