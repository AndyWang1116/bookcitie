class PublicController < ApplicationController
  load_and_authorize_resource :book

  def index
    @books = Book.mark
  end
end
