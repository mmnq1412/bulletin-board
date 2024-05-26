class Api::ContentsController < Api::BaseController
  
  def index
    usecase = Api::FetchContentsUsecase.new(
      input: Api::FetchContentsUsecase::Input.new
    )
    @output = usecase.fetch
  end

  def create
    usecase = Api::CreateContentUsecase.new(
      input: Api::CreateContentUsecase::Input.new(
        content: params[:content]
      )
    )
    @output = usecase.create
  end

  def update
    usecase = Api::UpdateContentUsecase.new(
      input: Api::UpdateContentUsecase::Input.new(
        id: params[:id],
        content: params[:content]
      )
    )
    @output = usecase.update
  end
end