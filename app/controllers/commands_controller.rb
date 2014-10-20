class CommandsController < ApplicationController
  before_filter :set_command, only: [:show, :edit, :update, :destroy]

  def index
    @commands = Command.all
    respond_with(@commands)
  end

  def show
    respond_with(@command)
  end

  def new
    @command = Command.new
    respond_with(@command)
  end

  def edit
  end

  def create
    @command = Command.new(params[:command])
    @command.save
    respond_with(@command)
  end

  def update
    @command.update_attributes(params[:command])
    respond_with(@command)
  end

  def destroy
    @command.destroy
    respond_with(@command)
  end

  private
    def set_command
      @command = Command.find(params[:id])
    end
end
