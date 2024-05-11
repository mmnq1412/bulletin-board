class Api::FetchCommentsUsecase < Api::Usecase
    class Input < Api::Usecase::Input
    end
  
    class Output < Api::Usecase::Output
      attr_accessor :comments
    end
  
    def fetch
      comments = Comment.all.map do |comment|
        CommentCell.new( # ここを修正
          body: comment.body,
          user_id: comment.user_id,
          post_id: comment.post_id
        )
      end
  
      Output.new(comments: comments)
    end
  end
  