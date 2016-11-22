require 'test_helper'

class BelongingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @belonging = belongings(:one)
  end

  test "should get index" do
    get belongings_url
    assert_response :success
  end

  test "should get new" do
    get new_belonging_url
    assert_response :success
  end

  test "should create belonging" do
    assert_difference('Belonging.count') do
      post belongings_url, params: { belonging: { description: @belonging.description, employee_id: @belonging.employee_id, location: @belonging.location, manufacturer: @belonging.manufacturer, month: @belonging.month, name: @belonging.name, notes: @belonging.notes, organization: @belonging.organization, part: @belonging.part, year: @belonging.year } }
    end

    assert_redirected_to belonging_url(Belonging.last)
  end

  test "should show belonging" do
    get belonging_url(@belonging)
    assert_response :success
  end

  test "should get edit" do
    get edit_belonging_url(@belonging)
    assert_response :success
  end

  test "should update belonging" do
    patch belonging_url(@belonging), params: { belonging: { description: @belonging.description, employee_id: @belonging.employee_id, location: @belonging.location, manufacturer: @belonging.manufacturer, month: @belonging.month, name: @belonging.name, notes: @belonging.notes, organization: @belonging.organization, part: @belonging.part, year: @belonging.year } }
    assert_redirected_to belonging_url(@belonging)
  end

  test "should destroy belonging" do
    assert_difference('Belonging.count', -1) do
      delete belonging_url(@belonging)
    end

    assert_redirected_to belongings_url
  end
end
