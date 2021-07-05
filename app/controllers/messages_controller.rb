class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end
  def new
  end
  def create
    @message = Message.create!(message_params)
  end
  def destroy
    @message = Message.find(params[:id])
    @message.destroy!
  end
  def edit
    @message = Message.find(params[:id])
  end
  def update
    @message = Message.find(params[:id])
    @message.update!(message_params)
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end
end
