class IssuesController < ApplicationController
  before_filter :set_issue, only: [:show, :edit, :update, :destroy]

  def index
    @issues = Issue.all
    respond_with(@issues)
  end

  def show
    respond_with(@issue)
  end

  def new
    @issue = Issue.new
    respond_with(@issue)
  end

  def edit
  end

  def create
    @issue = Issue.new(params[:issue])
    @issue.save
    respond_with(@issue)
  end

  def update
    @issue.update_attributes(params[:issue])
    respond_with(@issue)
  end

  def destroy
    @issue.destroy
    respond_with(@issue)
  end

  private
    def set_issue
      @issue = Issue.find(params[:id])
    end
end
