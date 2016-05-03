class Admin::ProductsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_book, except: [:index, :new, :create]
  layout "admin"

  def index
    @books = Book.mark.order("updated_at DESC")
  end

  def new
    @book = Book.new
    @photo = @book.build_photo
  end


  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to admin_products_path
    else
      render :new
    end
  end


  def show
    @photo = @book.photo
  end

  def edit
    if @book.photo.present?
      @photo = @book.photo
    else
      @photo = @book.build_photo
    end
  end

  def update
    if @book.update(book_params)
      redirect_to admin_products_path
    else
      rende :edit
    end
  end

  def destroy
    @book.del_mark = true
    @book.save
    redirect_to admin_products_path, alert: "已刪除#{@book.title}"

  end


  private

  def book_params
    params.require(:book).permit(:title,
                                 :description,
                                 :quantity,
                                 :price,
                                 :isbn,
                                 :published_date,
                                 :author,
                                 :publisher,
                                 photo_attributes: [:image, :id])
  end

  def find_book
    @book = Book.find(params[:id])
  end

end
