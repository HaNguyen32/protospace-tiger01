class CommentsController < ApplicationController
    def create
        #Comment.create(comment_params)
        #redirect_to "/prototypes/#{comment.prototype_id}"
        @comment = Comment.new(comment_params)
        if @comment.save
            redirect_to prototype_path(@comment.prototype_id) 
        else
            redirect_to prototype_path(params[:prototype_id])
        end
    end


    private
    def comment_params
        params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
    end
end
