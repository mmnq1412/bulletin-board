# app/usecases/api/create_content_usecase.rb

class Api::CreateContentUsecase < Api::Usecase
    class Input < Api::Usecase::Input
      attr_accessor :code, :first_name, :last_name, :final_education, :self_introduction
    end
  
    def create
      # Create new content logic here
    end
  end
  