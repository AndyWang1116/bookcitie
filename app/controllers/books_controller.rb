class BooksController < ApplicationController
  before_action :find_book


  def show
  end

  def add_to_cart

    if !current_cart.cart_items.include?(@book)
      current_cart.add_book_to_cart(@book)
      flash[:notice] = "你已成功將#{@book.title}加進購物車"
    else
      flash[:warning] = "你的購物車內已有此本書"
    end

    redirect_to :back
  end

  private

  def find_book
    @book = Book.find(params[:id])
  end

end
