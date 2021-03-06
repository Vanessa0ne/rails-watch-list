class ListsController < ApplicationController
 def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = list.new
  end

  def create
    @list = list.new(list_params)
  end

  private

  def list_params
    params.require(:list).permit(:name, :uniqueness)
  end
end
