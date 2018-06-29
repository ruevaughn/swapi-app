require 'rails_helper'

RSpec.describe StarshipsController do
  let(:starship) {create(:starship)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: starship.id}
      expect(response).to have_http_status(:success)
    end
  end

end
