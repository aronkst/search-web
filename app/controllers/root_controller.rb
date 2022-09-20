class RootController < ApplicationController
  def index
    @all_search = Search.all.order(updated_at: :desc)
  end
end
