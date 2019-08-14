class TwetsController < ApplicationController
  def index
  end

  def new
    @twet = Twet.new
  end

  def create
    Twet.create(twet_params)
    redirect_to new_twet_path
  end

  private

  def twet_params
    params.require(:twet).permit(:content)
  end
end
