# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# db/seeds.rb

# ユーザーデータを追加
User.create(name: "ユーザー名", email: "user@example.com")

# コメントデータを追加
Comment.create(content: "テストコメント1", user_id: 1)
Comment.create(content: "テストコメント2", user_id: 1)
