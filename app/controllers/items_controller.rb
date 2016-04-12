class ItemsController < ApplicationController

  def index
    @items = Item.all
    @items = @items.order("created_at DESC")
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save

        redirect_to user_path(current_user)
        flash[:success] = 'Item added!'
    else
        flash[:error] = 'Item failed to add. Try again.'
        render new_item_path(@item)
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to user_path(current_user)
  end


  def check_owner
    @item = Item.find(params[:id])
    if current_user != @item.user
      render alert: 'Not authorized - you do not own this item.'
    end

  end

    def item_params
      params.require(:item).permit(:description, :size, :gender)
    end

    def only_my_items
      redirect_to root_path, notice: "you can't edit items you don't own" if (current_user != @item.user)
    end


end
