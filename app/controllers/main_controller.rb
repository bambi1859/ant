class MainController < ApplicationController
  def home
    @posts = Post.all
    @users=User.all
  end

  def developer
    @users=User.all
  end

  def login
  end

  def mypage
     @posts = Post.all
    @users=User.all
  end

  def register
  end

  def complete
    @posts=Post.all
  end
end
