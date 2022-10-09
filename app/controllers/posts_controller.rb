class PostsController < ApplicationController
    def index
        @posts = Post.all
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params.require(:post).permit(:title, :start, :end, :check_box, :text_area))
        if @post.save
           flash[:notice] = "スケジュールを新規登録しました"
           redirect_to :posts
        else
            render "new"
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
    end

    def update
    end

    def destroy
    end

end
