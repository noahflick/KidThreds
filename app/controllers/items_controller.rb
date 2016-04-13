class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]
  before_action :only_my_items, only: [:edit, :update, :destroy]

  def index
    @items = Item.all
    @items = @items.order("created_at DESC")
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to user_path(current_user), notice: 'New Item Created!'
      flash[:success] = 'Item added!'
    else
      render :new, notice: 'Item failed to add. Try again.'
      flash[:error] = 'Item failed to add. Try again.'

    end
  end

  def update
    if @item.update(item_params)
      redirect_to user_path(current_user), notice: 'Item Updated'
      flash[:success] = 'Item updated'
    else
      render :edit, notice: 'Item failed to update. Try again.'
      flash[:error] = 'Item failed to update. Try again.'

    end
  end

  def edit
  end

  def destroy
    @item.destroy
    redirect_to :back, notice: "Item Deleted!"
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:description, :size, :gender, :user_id, :image)
  end

  def only_my_items
    redirect_to root_path, notice: "you can't edit items you don't own" if (current_user != @item.user)
  end


end
