class AuctionsController < ApplicationController
  def index
  end

  def new
    render plain: "NEW"
  end

  def edit
    render plain: "EDIT"
  end

  def pause
    render plain: "PAUSE"
  end

  def since
    render plain: "SINCE"
  end

  def show
  end
end
