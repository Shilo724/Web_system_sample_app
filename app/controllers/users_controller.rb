class UsersController < ApplicationController
  def show
    #@user = User.first
    @user = User.find(params[:id])

    foo = "foobar"
    hoge = "hogehoge"
    debugger
  end

  def new
    # => app/views/users/new.html.erb
  end
end
