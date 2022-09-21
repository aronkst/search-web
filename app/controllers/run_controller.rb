class RunController < ApplicationController
  before_action :set_search
  before_action :set_run, only: %i[show]

  def index
    @runs = @search.runs.order(created_at: :desc)
  end

  def show
    @run_values = @run.run_values.order(:created_at)
  end

  def create
    run = @search.runs.create!
    redirect_to run_show_url(@search, run), notice: 'Run was successfully created.'
  end

  def destroy
    @search.destroy!
    redirect_to root_url, notice: 'Search was successfully deleted.'
  end

  private

  def set_search
    @search = Search.find(params[:search_id])
  end

  def set_run
    @run = @search.runs.find(params[:run_id])
  end
end
