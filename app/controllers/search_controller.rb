class SearchController < ApplicationController
  before_action :set_search, only: %i[edit update]

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    if @search.save && @search.set_html
      redirect_to root_url, notice: "Search was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @search.update(search_params) && @search.set_html
      redirect_to root_url, notice: "Search was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_search
    @search = Search.find(params[:id])
  end

  def search_params
    params.require(:search).permit(:title, :url, :javascript, :json, :next_page, :count_pages)
  end
end
