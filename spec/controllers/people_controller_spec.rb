require 'rails_helper'

RSpec.describe PeopleController do
  let(:person) {create(:person)}

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: {id: person.id}
      expect(response).to have_http_status(:success)
    end
  end

end
