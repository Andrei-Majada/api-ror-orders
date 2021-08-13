class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end
  def show
    @order = Order.find(params[:id])
  end
  def new
    @order = Order.new
  end

  def create
    @order = Order.new(control_number: order_params[:control_number], state: "pending")
    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
    
    new_state = @order[:state]

    case @order[:state]
    when "pending"
      new_state = "in progress"
    when "in progress"
      new_state = "complete"
    end

    if @order.update(state: new_state)
      redirect_to @order
    else
      render :edit
    end
  end

  def controlNumberFilter
    @orders = Order.where(:control_number => id_params[:id])
    puts id_params
    render :controlNumberFilter
  end

  def statusFilter
    @orders = Order.where(:state => state_params[:state])
    puts state_params
    render :stateFilter
  end

  private
  def order_params
    params.require(:order).permit(:control_number)
  end

  private
  def id_params
    params.permit(:id)
  end

  private
  def state_params
    params.permit(:state)
  end
end
