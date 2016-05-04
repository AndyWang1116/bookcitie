class PublicController < ApplicationController
  load_and_authorize_resource :book

  def index
    @books  = Book.mark
    @hots   = @books.order("views_count DESC").limit(5)
    @latests = @books.order("created_at DESC").limit(5)
  end
end
