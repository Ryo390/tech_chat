class AnswersController < ApplicationController
  def create
    Answer.create(answer_params)
    redirect_to root_path([:chat_id])
  end

  private
  def answer_params
    params.require(:answer).parmit(:content, :name).marge(chat_id: params[:chat_id])
  end
end
