class CommentsController < ApplicationController
    
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        if @comment.save    
            redirect_to article_path(@article)
        end
    end

    private
    def comment_params
        params.require(:comment).permit(:commenter, :body, :article_id)
    end
end
