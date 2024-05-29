class Api::DestroyContentUsecase < Api::Usecase
	class Input < Api::Usecase::Input
		attr_accessor :id, :content
	end
  
	def destroy
		content = Contents.find(input.id)
		begin
			content.destroy!
		rescue ActiveRecord::RecordInvalid => e
			Rails.logger.error "コンテンツ削除のエラー発生しました。: #{e.record.errors.full_messages.join(", ")}"
		end
	end
end