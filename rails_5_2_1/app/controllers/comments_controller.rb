class CommentsController < ApplicationController

  def show
    render plain: "comments#show"
  end
end
