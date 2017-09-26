require 'test_helper'

class OperativePlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operative_plan = operative_plans(:one)
  end

  test "should get index" do
    get operative_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_operative_plan_url
    assert_response :success
  end

  test "should create operative_plan" do
    assert_difference('OperativePlan.count') do
      post operative_plans_url, params: { operative_plan: { description: @operative_plan.description, name: @operative_plan.name } }
    end

    assert_redirected_to operative_plan_url(OperativePlan.last)
  end

  test "should show operative_plan" do
    get operative_plan_url(@operative_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_operative_plan_url(@operative_plan)
    assert_response :success
  end

  test "should update operative_plan" do
    patch operative_plan_url(@operative_plan), params: { operative_plan: { description: @operative_plan.description, name: @operative_plan.name } }
    assert_redirected_to operative_plan_url(@operative_plan)
  end

  test "should destroy operative_plan" do
    assert_difference('OperativePlan.count', -1) do
      delete operative_plan_url(@operative_plan)
    end

    assert_redirected_to operative_plans_url
  end
end
