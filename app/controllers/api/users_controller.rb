class Api::UsersController < Api::BaseController

  def index
    usecase = Api::FetchUsersUsecase.new(
      input: Api::FetchUsersUsecase::Input.new
    )
    @output = usecase.fetch
  end

  def create
    usecase = Api::CreateUserUsecase.new(
      input: Api::CreateUserUsecase::Input.new(
        code: params[:code],
        first_name: params[:first_name],
        last_name: params[:last_name],
        final_education: params[:final_education],
        self_introduction: params[:self_introduction]
      )
    )
    @output = usecase.create
  end

  # newアクションを定義
  def new
    @user = User.new
  end

end