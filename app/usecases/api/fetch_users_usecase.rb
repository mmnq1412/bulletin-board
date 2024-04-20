class Api::FetchUsersUsecase < Api::Usecase
  class Input < Api::Usecase::Input
  end

  class Output < Api::Usecase::Output
    attr_accessor :users
  end

  def fetch
    users = User.all.map do |user|
      Models::UserCell.new(
        id: user.id,
        code: user.code,
        first_name: user.first_name,
        last_name: user.last_name,
        final_education: user.final_education,
        self_introduction: user.self_introduction  
      )
    end

    Output.new(users: users)
  end
end