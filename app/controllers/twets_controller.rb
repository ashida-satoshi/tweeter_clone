class TwetsController < ApplicationController
  def index
  end

  def new
    @twet = Twet.new
  end

  def create
    Twet.create(content: params[:twet][:content])

    redirect_to new_twet_path
  end
end
