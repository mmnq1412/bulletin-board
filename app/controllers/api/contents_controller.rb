class Api::ContentsController < Api::BaseController
  def index
    usecase = Api::FetchContentsUsecase.new(
      input: Api::FetchContentsUsecase::Input.new
    )
    @output = usecase.fetch
  end
end
