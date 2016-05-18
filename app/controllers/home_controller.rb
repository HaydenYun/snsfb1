class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
  end
  def write
    post = Post.new
    post.nickname = params[:nickname]
    post.content = params[:content]
    post.save
    redirect_to "/home/index"
  end
  def update
    @one_post = Post.find(params[:id])
  end
  
  def update_write
    @one_post = Post.find(params[:id])
    @one_post.nickname = params[:nickname]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/home/index"
  end

  def destroy
    @one_post = Post.find(params[:id])
    @one_post.destroy
    redirect_to "/home/index"
  end
  
  def add_like
    @one_post = Post.find(params[:id])
    @one_post.like += 1
    @one_post.save
    redirect_to "/home/index"
  end
    

  def reply_write
    reply = Reply.new
    reply.nickname = params[:nickname]
    reply.content = params[:content]
    reply.post_id = params[:id_of_post]
    reply.save
    redirect_to "/home/index"
  end

  def reply_update
  end

  def reply_destroy
  end
end
