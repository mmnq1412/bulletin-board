class Comment < ApplicationRecord
    # コメントの属性
    belongs_to :user # ユーザーに対するリレーションシップ
    belongs_to :post # 投稿に対するリレーションシップ
    
    # バリデーション
    validates :content, presence: true # コメント内容が必須であることをバリデート
    
    # その他のメソッドやコードを追加できます
  end
  