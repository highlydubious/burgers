class BurgersController < ApplicationController
  respond_to :html, :xml, :json

  def index
    @burgers = Burger.all
    respond_with @burgers
  end

  def show
    @burger = Burger.find(params[:id])
    respond_with @burger
  end

  def new
  end

  def create
    @burger = Burger.create(params.require(:burger). permits(:bun, :wellness))
    respond_with @burger # calls hidden method called .to_json (converts to json) & .as_json (decides which features included in json)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
