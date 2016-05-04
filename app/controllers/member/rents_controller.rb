class Member::RentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_rent, except: [:index, :new, :create]
  load_and_authorize_resource

  def index
    @rents = Rent.all.order("updated_at DESC")
  end

  def new
  end

  def create
  end

  def show
    @books = @rent.books
  end

  private

  def rent_params
    params.require(:rent).permit(:total_price,
                                 :status,
                                 books_attributes: [:title, :price, :ibsn, :author, :publisher, :returned, :id])
  end


  def find_rent
    @rent = Rent.find(params[:id])
  end

end
