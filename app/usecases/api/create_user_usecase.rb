class Api::CreateUserUsecase < Api::Usecase
    class InvalidParameterError < Api::Usecase::Error
    end
  
    class Input < Api::Usecase::Input
      attr_accessor :name
    end
  
    class Output < Api::Usecase::Output
      attr_accessor :user
    end
  
    def create
      unless valid_input?
        Rails.logger.warn(self.class) { "input の内容が不十分です。name: #{input.name}" }
        raise InvalidParameterError.new
      end
  
      begin
        user = User.create!(name: input.name)
      rescue ActiveRecord::RecordInvalid => e
        Rails.logger.warn(self.class) { "ユーザーの保存に失敗しました。errors: #{e.record.errors.full_messages.join(", ")}" }
        raise InvalidParameterError.new
      end
    end
  
    private
  
    def valid_input?
      !input.name.blank?
    end
  end
  