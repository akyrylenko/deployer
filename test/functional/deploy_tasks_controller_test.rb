require 'test_helper'

class DeployTasksControllerTest < ActionController::TestCase
  setup do
    @deploy_task = deploy_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deploy_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deploy_task" do
    assert_difference('DeployTask.count') do
      post :create, deploy_task: { issue: @deploy_task.issue, stage_id: @deploy_task.stage_id, user_id: @deploy_task.user_id }
    end

    assert_redirected_to deploy_task_path(assigns(:deploy_task))
  end

  test "should show deploy_task" do
    get :show, id: @deploy_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deploy_task
    assert_response :success
  end

  test "should update deploy_task" do
    put :update, id: @deploy_task, deploy_task: { issue: @deploy_task.issue, stage_id: @deploy_task.stage_id, user_id: @deploy_task.user_id }
    assert_redirected_to deploy_task_path(assigns(:deploy_task))
  end

  test "should destroy deploy_task" do
    assert_difference('DeployTask.count', -1) do
      delete :destroy, id: @deploy_task
    end

    assert_redirected_to deploy_tasks_path
  end
end
