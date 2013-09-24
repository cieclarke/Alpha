class HomeController < ApplicationController
  def index
	@pathvar = params[:pathvar]
  end
end
