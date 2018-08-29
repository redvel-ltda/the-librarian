class BooksController < ApplicationController
  respond_to :html
  before_action :authenticate_user!
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def edit
  end

  def create
    @book = Book.new(book_params)
    @book.save
  end

  def update
    @book.update(book_params)
  end

  def destroy
    @book.destroy
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    def book_params
      params.require(:book).permit(:title, :author, :editorial, :original_title, :translation, :edition, :edition_date, :edition_place, :publication_year, :isbn)
    end
end
