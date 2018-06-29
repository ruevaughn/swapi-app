require 'rails_helper'

RSpec.describe SpeciesController do
  let(:species) {create(:species)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: species.id }
      expect(response).to have_http_status(:success)
    end

    it "returns http success if the id does not exist" do
    end


  end

end
