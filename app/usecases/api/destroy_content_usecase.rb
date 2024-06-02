class Api::DestroyContentUsecase < Api::Usecase
  class Input < Api::Usecase::Input
    attr_accessor :id, :content
  end

  def destroy
    begin
      content = Contents.find(input.id)
      content.destroy!
      { success: true, id: input.id }
    rescue ActiveRecord::RecordNotFound
      Rails.logger.error "Content with ID #{input.id} not found."
      { success: false, error: 'Content not found' }
    rescue ActiveRecord::RecordInvalid => e
      Rails.logger.error "コンテンツ削除のエラー発生しました。: #{e.record.errors.full_messages.join(", ")}"
      { success: false, error: 'Failed to delete content' }
    end
  end
end