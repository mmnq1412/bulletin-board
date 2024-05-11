# app/usecases/api/create_comment_usecase.rb
module Api
    class CreateCommentUsecase < Api::Usecase
      class InvalidParameterError < Api::Usecase::Error
      end
  
      class Input < Api::Usecase::Input
        attr_accessor :body, :user_id, :post_id
      end
  
      class Output < Api::Usecase::Output
        attr_accessor :comment
      end
  
      def create
        begin
          comment = Comment.create!(
            body: input.body,
            user_id: input.user_id,
            post_id: input.post_id
          )
          @output = Output.new
          @output.comment = comment
          @output
        rescue ActiveRecord::RecordInvalid => e
          raise InvalidParameterError.new(e.message)
        end
      end
    end
  end
  