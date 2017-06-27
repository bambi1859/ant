class PostsController < ApplicationController
  def designer
    @posts=Post.all

  end
  
  def show
    @post=Post.find(params[:post_id])
    
  end

  def new
    @post=Post.new
  end
  def succ
    @edit_post=Post.find(params[:post_id])
  end
  def succc
    @update_post=Post.find(params[:post_id])
        #@update_post.title=params[:post][:title]
        #@update_post.purpose=params[:post][:purpose]
        @update_post.finalmoney=params[:post][:finalmoney]
        @update_post.finaltime = params[:post][:finaltime]
        @update_post.situation = "완료"
        @update_post.intro = params[:post][:intro]
        #@update_post.developname = params[:post][:developname]
        @update_post.name = params[:post][:name]
        @update_post.save

        img = Img.new
        img.post_id=@update_post.id
        img.img_url=params[:post][:image]
        img.flag = "1"
        img.save        
        redirect_to '/posts/designer'
        
  end
  def create
        @post=Post.new
        @post.userid=params[:post][:userid]
        @post.email=params[:post][:email]
        @post.phone=params[:post][:phone]
        @post.title=params[:post][:title]  #여기서 post는 모델!
        @post.purpose=params[:post][:purpose]
        @post.money=params[:post][:money]
        @post.date=params[:post][:date]
        @post.situation="구하는 중"
        @post.content=params[:post][:content]
        @post.save
        
        img = Img.new
        img.post_id=@post.id
        img.img_url=params[:post][:image]
        img.save

        redirect_to "/posts/designer"
    end
   
  def edit
    @edit_post=Post.find(params[:post_id])
  end

  def destroy
      @destroy_post=Post.find(params[:post_id])
      @destroy_post.destroy
        
      redirect_to '/posts/designer'
  end
  
  
  def update
        @update_post = Post.find(params[:post_id])
        @update_post.title=params[:post][:title]
        @update_post.purpose=params[:post][:purpose]
        @update_post.money=params[:post][:money]
        @update_post.date=params[:post][:date]
        @update_post.situation="구하는 중"
        @update_post.content=params[:post][:content]
       
        @update_post.save
        
        @img = Img.new
        @img.post_id = @update_post.id
        @img.img_url = params[:post][:image]
        @img.save 
        redirect_to "/posts/designer"
  end
  
end
