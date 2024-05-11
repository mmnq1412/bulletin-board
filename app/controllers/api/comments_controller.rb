class Api::CommentsController < ApplicationController
  before_action :set_post, only: [:create]
  before_action :set_comment, only: [:update, :destroy]

  # GET /comments
  def index
    @comments = Comment.all
    render json: @comments
  end


  # POST /posts/:post_id/comments
  def create
    @comment = @post.comments.build(comment_params)
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/:id
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/:id
  def destroy
    @comment.destroy
    head :no_content
  end

  private
  # パラメータのストロングパラメータを定義
  def comment_params
    params.require(:comment).permit(:content, :user_id)
  end

  # コメントの対象となる投稿を設定
  def set_post
    @post = Post.find(params[:post_id])
  end

  # 指定されたコメントを設定
  def set_comment
    @comment = Comment.find(params[:id])
  end
end
