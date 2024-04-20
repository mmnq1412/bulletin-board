class Api::UsersController < Api::BaseController
  
  def index
    usecase = Api::FetchUsersUsecase.new(
      input: Api::FetchUsersUsecase::Input.new
    )
    @output = usecase.fetch
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end