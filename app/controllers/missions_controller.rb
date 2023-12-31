class MissionsController < ApplicationController
  before_action :authenticate_user! # Deviseでログインユーザーのみアクセス許可

  def index
    @missions = Mission.all
    @completed_missions = current_user ? current_user.missions : []
  end
end