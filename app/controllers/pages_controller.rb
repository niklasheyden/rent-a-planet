class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planets = policy_scope(Planet)

    if params[:query].present?
      @planets = Planet.search_by_name_and_location(params[:query])
    else
      @planets = Planet.all
    end

    respond_to do |format|
      format.html
      format.json { render json: { partial: render_to_string(partial: "planets/planets", formats: [:html]) } }
    end
  end
end
