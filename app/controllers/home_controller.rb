class HomeController < ApplicationController


  include TeorVero
  def index
    @users = User.all

  end
  def valid_step2?(answer)
    answer == 'julia'
  end
  def window
    #@wishlist = Wishlist.all
    #true
    #valid_step2?(params[:answer])
    #@wishlist = params.require(:version).permit(:user)
  end

  def solve
    #@users = User.new(user_params)

  end
  def user_params
    params.require(:user).permit(:name, :email)

  end
  def matoj
    @users =  TeorVero.matojid([1,2,3],[0.1,0.2,0.7])

  end

  def despr
    @users =  TeorVero.dispersion([1,2,3],[0.1,0.2,0.7])
    @wishes =  TeorVero.matojid([1,2,3],[0.1,0.2,0.7])
  end

  def kvadr
    @users =  TeorVero.dispersion([1,2,3],[0.1,0.2,0.7])
    @wishes =  TeorVero.kvadrdev([1,2,3],[0.1,0.2,0.7])
  end

  def func
    @users =  TeorVero.funcdistr([1,2,3],[0.1,0.2,0.7])
  end



end