class TwetsController < ApplicationController
  before_action :set_twet, only: [:show, :edit, :update]
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

  def show
    #@twet =Twet.find(params[:id])
  end

  def edit
    #@twet =Twet.find(params[:id])
  end

  def update
    #@twet = Twet.find(params[:id])
    if @twet.update(twet_params)
      redirect_to twet_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  private

  def twet_params
    params.require(:twet).permit(:content)
  end

  def set_twet
    @twet = Twet.find(params[:id])
  end
end
