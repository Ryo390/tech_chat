class ChatsController < ApplicationController

  def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new
  end

  def create
    Chat.create(chat_params)
    redirect_to root_path
  end

  def show
    @chat = Chat.find(params[:id])
    @answer = Answer.new 
    @answer = @chat.answers
  end

  private
  def chat_params
    params.require(:chat).permit(:title, :content, :name)
  end
end
