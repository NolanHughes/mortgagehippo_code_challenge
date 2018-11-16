class Api::V1::CoinsController < ApplicationController
  # before_action :set_coin, only: [:show, :update, :destroy]

  def index
    @coins = Coin.all

    render json: @coins
  end
 
  def total
    @total = Coin.total

    render json: @total
  end

  def show
    render json: @coin
  end

  def create
    @coin = Coin.new(coin_params)

    if @coin.save
      render json: @coin, status: :created, location: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  def update
    if @coin.update(coin_params)
      render json: @coin
    else
      render json: @coin.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @coin.destroy
  end


  private
    def set_coin
      @coin = Coin.find(params[:id])
    end

    def coin_params
      params.require(:coin).permit(:value, :name)
    end
end
