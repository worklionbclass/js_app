class PostsController < ApplicationController
  def new
  end

  def create
    post = Post.create(title: params[:title], content: params[:content])
    # post가 저장된다면
    if post.save
      # show로 이동하고
      redirect_to "/posts/#{post.id}/show"
      # 저장 실패라면
    else
      # flash[:error]에다가 저장 실패 이유를 담아라!
      flash[:error] = post.errors.full_messages
      # 그리고 new 페이지로 돌아가라!
      redirect_back(fallback_location: root_path)
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
