class UsersController < ApplicationController
  # GET /users/id
  def show
    #@user = User.first
    @user = User.find(params[:id])

    # foo = "foobar"
    # hoge = "hogehoge"
    # debugger
  end

  # GET /users/new.html.erb
  def new
    # => app/views/users/new.html.erb
    @user = User.new
  end

  #POST /users
  def create
    @user = User.new(user_params)    # 実装は終わっていないことに注意!
    if @user.save
      # 保存の成功をここで扱う。
    else
      render 'new', status: :unprocessable_entity
    end
  end

  private

    #strong parameters
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end
