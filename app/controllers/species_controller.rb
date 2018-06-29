class SpeciesController < ApplicationController
  def index
    @species = Species.all
    unless Species.has_all_data?
      page = Species.last_received_page
      resource = Species.to_s.downcase
      species = Services::SwApi.get_resources(resource, page)
      Species.create_from_response(species)
   end

   render "index"

  end

  def show
    @species = Species.find(id)
    if @species
      render @species
    else
      @species = Services::SwApi.get_resource(@species.id)
    end
  end

  def new
  end

  def create
  end

  private

    def id
      params[:id]
    end
end
