class CommentsController < ApplicationController
  def index
  	puts params[:post_id]
  	@comments = Comment.where(post_id: params[:post_id])
  end

  def new
  	@comments = Comment.new
  end

  def create
  	@comments = Comment.new(comments_params)

    respond_to do |format|
      if @comments.save
        format.html { redirect_to @post, notice: 'Comments was successfully created.' }
        format.json { render :show, status: :created, location: @post }
        puts @comments.errors
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
        puts @comments.errors
      end
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:post_id])
    end

    def comments_params
      params.require(:comment).permit(:content, :post_id)
    end


end
