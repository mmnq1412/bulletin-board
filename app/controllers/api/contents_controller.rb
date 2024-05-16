class Api::ContentsController < Api::BaseController
  def index
    usecase = Api::FetchContentsUsecase.new(
      input: Api::FetchContentsUsecase::Input.new
    )
    @output = usecase.fetch
  end

  def create
    usecase = Api::CreateCommentUsecase.new(
      input: Api::CreateCommentUsecase::Input.new(
        content: params[:content]
      )
    )
    @output = usecase.create
  end

  def update
    usecase = Api::UpdateCommentUsecase.new(
      input: Api::UpdateCommentUsecase::Input.new(
        content: params[:content]
      )
    )
    @output = usecase.update
  end

  def destroy
    usecase = Api::DeleteCommentUsecase.new(
      input: Api::DeleteCommentUsecase::Input.new(
        content: params[:content]
      )
    )
    @output = usecase.delete
  end
end

