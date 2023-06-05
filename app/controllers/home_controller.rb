class HomeController < ApplicationController


  include TeorVero
  @@p = 1
  @@an
  def index
    @users = User.all

  end
  def answerw
    @users = @@an
  end

  def history
    @wishes = Wishlist.all
    @users = @@p


  end
  def answer
    arr = ['matojid','dispersion','funcdistr','kvadrdev']

    para = answer_params
    if arr.count(para[:name]) == 1
      if para[:name] == 'matojid'
        answ = TeorVero.matojid(para[:iks],para[:vero])
      elsif para[:name] == 'dispersion'
        answ = TeorVero.dispersion(para[:iks],para[:vero])
      elsif para[:name] == 'funcdistr'
        answ = TeorVero.funcdistr(para[:iks],para[:vero])
      else
        answ = TeorVero.kvadrdev(para[:iks],para[:vero])
      end
      wishlist = Wishlist.create(name: para[:name], user_id: @@p)
      wishlist.wishes.create([{name: para[:name], iks: para[:iks], vero: para[:vero], answer: answ }])
      @@an = answ
      redirect_to '/answerw'
    else
      redirect_to '/despr'
    end

  end

  def deadend

  end
  def dead

  end

  def window

  end

  def solve

    para = user_params_log
    userp = User.find_by(email: para[:email])
    if !userp.nil?
      if userp.pass_word == para[:password]
        #@users = User.find_by(email: para[:email])
        @@p = userp.id
        #@users = @@p
        redirect_to '/matoj'
      else
        redirect_to '/dead'
      end
    else

      redirect_to '/deadend'
    end

  end

  def solvesign

    para = user_params_sign
    userp = User.find_by(email: para[:email])
    if userp.nil?
      #if userp.pass_word == para[:password]
      user = User.create(name: para[:name],
                         email: para[:email], pass_word: para[:password])
      user.save
      @@p = user.id
        redirect_to '/matoj'
      #end
    else
      redirect_to '/deadsign'

    end

  end

  def answer_params

    params.require(:func).permit(:name, :iks, :vero)



  end

  def user_params_log
    params.require(:user).permit(:email, :password)

  end

  def user_params_sign
    params.require(:user).permit(:name, :email, :password)

  end

  def matoj

    @users = @@p
  end

  def despr

  end




end