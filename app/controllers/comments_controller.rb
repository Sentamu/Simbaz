class CommentsController < InheritedResources::Base

  private

    def comment_params
      params.require(:comment).permit(:listing_id, :body)
    end
end

