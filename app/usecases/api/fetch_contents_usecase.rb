class Api::FetchContentsUsecase < Api::Usecase
    class Input < Api::Usecase::Input
    end
  
    class Output < Api::Usecase::Output
      attr_accessor :contents
    end
  
    def fetch
      contents = Content.all.map do |content|
        Models::ContentCell.new(
          contents: content.contents
        )
      end
  
      Output.new(contents: contents)
    end
  end
  