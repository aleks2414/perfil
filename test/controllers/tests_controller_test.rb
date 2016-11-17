require 'test_helper'

class TestsControllerTest < ActionController::TestCase
  setup do
    @test = tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test" do
    assert_difference('Test.count') do
      post :create, test: { 31: @test.31, 32: @test.32, email: @test.email, l11: @test.l11, l12: @test.l12, l13: @test.l13, l14: @test.l14, l1total: @test.l1total, l21: @test.l21, l22: @test.l22, l23: @test.l23, l24: @test.l24, l25: @test.l25, l26: @test.l26, l2total: @test.l2total, l33: @test.l33, l34: @test.l34, l3total: @test.l3total, l41: @test.l41, l42: @test.l42, l43: @test.l43, l44: @test.l44, l4total: @test.l4total, l51: @test.l51, l52: @test.l52, l53: @test.l53, l54: @test.l54, l55: @test.l55, l5total: @test.l5total, l61: @test.l61, l62: @test.l62, l63: @test.l63, l64: @test.l64, l6total: @test.l6total, l71: @test.l71, l72: @test.l72, l73: @test.l73, l74: @test.l74, l7total: @test.l7total, l81: @test.l81, l82: @test.l82, l83: @test.l83, l8total: @test.l8total, nombre: @test.nombre }
    end

    assert_redirected_to test_path(assigns(:test))
  end

  test "should show test" do
    get :show, id: @test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test
    assert_response :success
  end

  test "should update test" do
    patch :update, id: @test, test: { 31: @test.31, 32: @test.32, email: @test.email, l11: @test.l11, l12: @test.l12, l13: @test.l13, l14: @test.l14, l1total: @test.l1total, l21: @test.l21, l22: @test.l22, l23: @test.l23, l24: @test.l24, l25: @test.l25, l26: @test.l26, l2total: @test.l2total, l33: @test.l33, l34: @test.l34, l3total: @test.l3total, l41: @test.l41, l42: @test.l42, l43: @test.l43, l44: @test.l44, l4total: @test.l4total, l51: @test.l51, l52: @test.l52, l53: @test.l53, l54: @test.l54, l55: @test.l55, l5total: @test.l5total, l61: @test.l61, l62: @test.l62, l63: @test.l63, l64: @test.l64, l6total: @test.l6total, l71: @test.l71, l72: @test.l72, l73: @test.l73, l74: @test.l74, l7total: @test.l7total, l81: @test.l81, l82: @test.l82, l83: @test.l83, l8total: @test.l8total, nombre: @test.nombre }
    assert_redirected_to test_path(assigns(:test))
  end

  test "should destroy test" do
    assert_difference('Test.count', -1) do
      delete :destroy, id: @test
    end

    assert_redirected_to tests_path
  end
end
