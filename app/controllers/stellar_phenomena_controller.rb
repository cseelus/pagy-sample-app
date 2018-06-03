class StellarPhenomenaController < ApplicationController
  def index
    @pagy_stars, @stars = pagy(Star.all.order(:name), page_param: :page_stars, params: { active_tab: 'stars' })
    @pagy_nebulae, @nebulae = pagy(Nebula.all.order(:name), page_param: :page_nebulae, params: { active_tab: 'nebulae' })
  end
end
