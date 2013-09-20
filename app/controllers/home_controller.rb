class HomeController < ApplicationController
  def index
	@number = params[:number]
  end
end
