class CommentsController < ApplicationController
    
    def create
        comment = Comment.new(comment_params)
        render json: comment
    end

    def destroy
        comment = Comment.find_by(id: params[:id])
        comment.destroy
        render json: comment
    end

    def index
        comment = Comment.comment_for_author_id(params[:user_id])

        render json: comment

    end






    private

    def comment_params
        params.require(:comment).permit(:author_id, :artwork_id, :body)
    end

end