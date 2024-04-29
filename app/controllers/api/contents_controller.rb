# app/controllers/api/contents_controller.rb

class Api::ContentsController < Api::BaseController
  def create
    usecase = Api::CreateContentUsecase.new(
      input: Api::CreateContentUsecase::Input.new(
        code: params[:code],
        first_name: params[:first_name],
        last_name: params[:last_name],
        final_education: params[:final_education],
        self_introduction: params[:self_introduction]
      )
    )
    @output = usecase.create
  end
end
