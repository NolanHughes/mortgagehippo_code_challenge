class Api::V1::TransactionsController < ApplicationController
  def index
    @transaction = Transaction.all

    render json: @transaction
  end

  def show
  	@transaction = Transaction.find(params[:id])

  	render json: @transaction
  end

	def create
    @transaction = Transaction.new(transaction_params)

    if @transaction.save
      render json: @transaction, status: :created, location: api_v1_transactions_url
    else
      render json: @transaction.errors, status: :unprocessable_entity
    end
  end

  private
    def transaction_params
      params.require(:transaction).permit(:coin_id)
    end
end
