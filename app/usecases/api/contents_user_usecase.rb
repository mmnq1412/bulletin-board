class Api::FetchContentsUsecase < Api::Usecase
    class Input < Api::Usecase::Input
    end
  
    class Output < Api::Usecase::Output
      attr_accessor :contents
    end
  
    def fetch
      contents = Content.all.map do |content|
        Models::ContentCell.new(
          id: content.id,
          code: content.code,
          first_name: content.first_name,
          last_name: content.last_name,
          final_education: content.final_education,
          self_introduction: content.self_introduction  
        )
      end
  
      Output.new(contents: contents)
    end
  end
  