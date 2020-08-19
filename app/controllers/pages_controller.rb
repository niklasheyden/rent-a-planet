class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @planets = policy_scope(Planet)
  end
end
