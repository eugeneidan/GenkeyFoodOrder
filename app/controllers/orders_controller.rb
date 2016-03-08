class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  before_action :find_user

  respond_to :html

  def index
    @orders = Order.all.order("created_at DESC")
    respond_with(@orders)
  end

  def show
    respond_with(@order)
  end

  def new
    @order = @user.orders.build
    respond_with(@order)
  end

  def edit
  end

  def create
    @order = @user.orders.new(order_params)
    @order.save
    respond_with(@order)
  end

  def update
    @order.update(order_params)
    respond_with(@order)
  end

  def destroy
    @order.destroy
    respond_with(@order)
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:menu_id, :user_id)
    end

    def find_user
      @user = current_user unless current_user.nil?
      return @user
    end
end
