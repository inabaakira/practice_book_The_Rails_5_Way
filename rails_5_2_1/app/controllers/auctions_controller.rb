class AuctionsController < ApplicationController
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
end
