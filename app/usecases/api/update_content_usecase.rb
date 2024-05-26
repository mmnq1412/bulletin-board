class Api::UpdateContentUsecase < Api::Usecase
	class Input < Api::Usecase::Input
		attr_accessor :id, :content
	end
  
	def update
		content = Contents.find(input.id)
		begin
			content.update!(content: input.content)
		rescue ActiveRecord::RecordInvalid => e
			Rails.logger.error "コンテンツ更新のエラー発生しました。: #{e.record.errors.full_messages.join(", ")}"
		end
	end
end