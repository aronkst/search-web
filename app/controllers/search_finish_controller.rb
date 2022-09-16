class SearchFinishController < ApplicationController
  before_action :set_search

  def edit
  end

  def update
    if @search.update(search_params)
      redirect_to root_url, notice: "Finish was successfully saved."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_search
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:finish)
  end
end
