class CommentsController < ApplicationController
    def create
        @comment = Comment.new(comment_params)
        #binding.pry
        if @comment.save
            redirect_to prototype_path(@comment.prototype_id) 
        else
            redirect_to prototype_path(params[:prototype_id]), alert: 'コメントの保存に失敗しました'
        end
        #Comment.create(comment_params)
        #redirect_to "/prototypes/#{comment.prototype_id}"
    end


    private
    def comment_params
        #params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
        params.require(:comment).permit(:comment).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
    end
end