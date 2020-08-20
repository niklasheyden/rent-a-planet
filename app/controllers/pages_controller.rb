class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planets = policy_scope(Planet)

    if params[:query].present?
      @planets = Planet.search_by_name_and_location(params[:query])
    else
      @planets = Planet.all
    end
  end
end
