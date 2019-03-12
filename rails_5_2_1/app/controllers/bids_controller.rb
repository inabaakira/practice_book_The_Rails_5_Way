class BidsController < ApplicationController
  before_action :set_view_path

  def show
  end

  def set_view_path
    prepend_view_path "#{Rails.root}/app/views/auctions"
  end
end
