class DeployTasksController < ApplicationController
  before_filter :set_deploy_task, only: [:show, :edit, :update, :destroy]

  def index
    @deploy_tasks = DeployTask.all
    respond_with(@deploy_tasks)
  end

  def show
    respond_with(@deploy_task)
  end

  def new
    @deploy_task = DeployTask.new
    respond_with(@deploy_task)
  end

  def edit
  end

  def create
    @deploy_task = DeployTask.new(params[:deploy_task])
    @deploy_task.save
    respond_with(@deploy_task)
  end

  def update
    @deploy_task.update_attributes(params[:deploy_task])
    respond_with(@deploy_task)
  end

  def destroy
    @deploy_task.destroy
    respond_with(@deploy_task)
  end

  private
    def set_deploy_task
      @deploy_task = DeployTask.find(params[:id])
    end
end
