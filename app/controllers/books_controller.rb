class BooksController < ApplicationController
  def index
    @books = Book.all
    @users = User.all
    @user = current_user
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.user_id = current_user.id
    book.save
    redirect_to book_path(book)
  end

  def show
    @book = Book.find(params[:id])
    @books = Book.all
    @user = current_user
    @users = User.all
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path
  end

  def destroy
    book = Book.find_by(id: params[:id])
    book.destroy
    redirect_to book_path
  end

  private
  def book_params
      params.permit(:title, :body, :user_id)
  end

end
