class Api::CreateContentUsecase < Api::Usecase
  class InvalidParameterError < Api::Usecase::Error
  end

  class Input < Api::Usecase::Input
    attr_accessor :content
  end

  class Output < Api::Usecase::Output
    attr_accessor :content
  end

  def create  
    begin
      content = Contents.create!(
        content: input.content,
      )
      @output = Output.new
      @output.content = content
      @output
    end
  end
end