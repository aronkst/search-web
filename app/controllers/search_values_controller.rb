class SearchValuesController < ApplicationController
  before_action :set_search

  def edit
  end

  def update
    if @search.update(search_params)
      redirect_to edit_search_finish_url(@search), notice: "Values was successfully saved."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_search
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:values)
  end
end
