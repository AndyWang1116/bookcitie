class PublicController < ApplicationController
  def index
    @books = Book.mark
  end
end
