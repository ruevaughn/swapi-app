class SpeciesController < ApplicationController
  def index
    @species = Species.all
    unless Species.has_all_data?
      page = Species.last_received_page
      resource = 'species'
      species = Services::SwApi.get_resources(resource, page)

      relationships = Services::ResourceHandler::get_relationships(:species)
      Services::ResourceHandler.create_from_response(species, resource, relationships)
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
