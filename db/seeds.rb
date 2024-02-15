# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# 開発環境の場合のみサンプルユーザーを作成
if Rails.env.development?
  12.times do |i|
    username = "user#{i + 1}"
    email = "km@#{i + 1}"
    password = "1234"

    User.create!(
      username: username,
      email: email,
      password: password,
      password_confirmation: password,
      admin: false
    )
    save(validate: false)
  end
end

# 本番環境の場合のみ管理者アカウントを作成
if Rails.env.production?
  admin_email = ENV['ADMIN_EMAIL']
  admin_password = ENV['ADMIN_PASSWORD']

  # すでに存在しない場合のみ作成
  unless User.exists?(email: admin_email)
    User.create!(
      username: '管理者',
      email: admin_email,
      password: admin_password,
      password_confirmation: admin_password,
      admin: true
    )
  end
end
