// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//= require jquery3
//= require popper
//= require bootstrap-sprockets

// 下記を有効にすると削除機能に問題が発生する
import "@hotwired/turbo-rails"
// import { Turbo } from "@hotwired/turbo-rails"
// Turbo.session.drive = false
import "controllers/folder"
import "./memo/memo_form"
import "./mypage/mypage"

