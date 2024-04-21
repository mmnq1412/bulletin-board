class Api::CreateUserUsecase < Api::Usecase
  class InvalidParameterError < Api::Usecase::Error
  end

  class Input < Api::Usecase::Input
    attr_accessor :code, :first_name, :last_name, :final_education, :self_introduction
  end

  class Output < Api::Usecase::Output
    attr_accessor :user
  end

  def create  
    begin
      user = User.create!(
        code: input.code,
        first_name: input.first_name,
        last_name: input.last_name,
        final_education: input.final_education,
        self_introduction: input.self_introduction
      )
      @output = Output.new
      @output.user = user
      @output
    end
  end
end