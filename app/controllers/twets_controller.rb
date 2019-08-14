class TwetsController < ApplicationController
  def index
    @twets = Twet.all
  end

  def new
    @twet = Twet.new
  end

  def create
    @twet = Twet.new(twet_params)
    if @twet.save
      redirect_to twets_path, notice: "投稿しました！"
    else
      render "new"
    end
  end

  private

  def twet_params
    params.require(:twet).permit(:content)
  end
end
