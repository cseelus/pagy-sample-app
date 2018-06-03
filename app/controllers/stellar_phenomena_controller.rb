class StellarPhenomenaController < ApplicationController
  def index
    @stars = Star.all
    @nebulae = Nebula.all
  end
end
