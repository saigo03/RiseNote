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

# プロコン用のユーザー作成
12.times do |i|
  #一般ユーザー
  username = "user#{i + 1}"
  user_email = "km@#{i + 1}"
  password = "1234"

  #管理者
  admin_email = "ad@#{i + 1}"

  # すでに存在しない場合のみ作成
  unless User.exists?(email: admin_email)
    admin = User.new(
      username: '管理者',
      email: admin_email,
      password: password,
      password_confirmation: password,
      admin: true
    )
    admin.save(validate: false)
  end

  unless User.exists?(email: user_email)
    user = User.new(
      username: username,
      email: user_email,
      password: password,
      password_confirmation: password,
      admin: false
    )
    user.save(validate: false)
  end
end

# 本番環境の場合のみ管理者アカウントを作成(メインの管理者)
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

# Mission データの追加
# ミッション１の作成
missions = [
  { name: "ミッション1", description: "メモの作成", completion_criteria: "メモを1回作成する", point_value: 1 },
  { name: "ミッション2", description: "メモの作成", completion_criteria: "メモを3回作成する", point_value: 1 },
  { name: "ミッション3", description: "メモの作成", completion_criteria: "メモを5回作成する", point_value: 1 },
  { name: "ミッション4", description: "メモの作成", completion_criteria: "メモを10回作成する", point_value: 1 },
  { name: "ミッション5", description: "メモの作成", completion_criteria: "メモを20回作成する", point_value: 1 },
  { name: "ミッション6", description: "メモの作成", completion_criteria: "メモを30回作成する", point_value: 1 },
  { name: "ミッション7", description: "メモの作成", completion_criteria: "メモを50回作成する", point_value: 1 },
  { name: "ミッション8", description: "メモの作成", completion_criteria: "メモを77回作成する", point_value: 1 },
  { name: "ミッション9", description: "メモの作成", completion_criteria: "メモを100作成する", point_value: 1 },
]

missions.each do |mission_attributes|
  Mission.find_or_create_by(name: mission_attributes[:name]) do |mission|
    mission.description = mission_attributes[:description]
    mission.completion_criteria = mission_attributes[:completion_criteria]
    mission.point_value = mission_attributes[:point_value]
  end
end

