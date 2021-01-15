class BooksController < ApplicationController
  def index
    @books = Book.all
    @users = User.all
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    redirect_to book_path
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
  end

  def update
    book = Book.find(params[:id])
    book.update
    redirect_to books_path
  end

  def destroy
  end

  private
  def book_params
      params.require(:book).permit(:title, :body, :user_id)
  end

end
