class SearchJsonController < ApplicationController
  before_action :set_search

  def edit
  end

  def update
    if @search.update(search_params)
      redirect_to root_url, notice: "JSON was successfully saved."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_search
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:json)
  end
end
