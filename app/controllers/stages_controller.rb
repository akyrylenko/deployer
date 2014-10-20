class StagesController < ApplicationController
  before_filter :set_stage, only: [:show, :edit, :update, :destroy]

  def index
    @stages = Stage.all
    respond_with(@stages)
  end

  def show
    respond_with(@stage)
  end

  def new
    @stage = Stage.new
    respond_with(@stage)
  end

  def edit
  end

  def create
    @stage = Stage.new(params[:stage])
    @stage.save
    respond_with(@stage)
  end

  def update
    @stage.update_attributes(params[:stage])
    respond_with(@stage)
  end

  def destroy
    @stage.destroy
    respond_with(@stage)
  end

  private
    def set_stage
      @stage = Stage.find(params[:id])
    end
end
