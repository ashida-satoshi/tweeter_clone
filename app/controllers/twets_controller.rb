class TwetsController < ApplicationController
  before_action :set_twet, only: [:show, :edit, :update, :destroy]
  def index
    @twets = Twet.all
  end

  def new
    @twet = Twet.new
  end

  def create
    @twet = Twet.new(twet_params)
    if params[:back]
      render :new
    else
      if @twet.save
        redirect_to twets_path, notice: "投稿しました！"
      else
        render "new"
      end
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
      redirect_to twets_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def confirm
    @twet = Twet.new(twet_params)
    render :new if @twet.invalid?
  end

  def destroy
    @twet.destroy
    redirect_to twets_path, notice:"削除しました！"
  end

  private

  def twet_params
    params.require(:twet).permit(:content)
  end

  def set_twet
    @twet = Twet.find(params[:id])
  end
end
