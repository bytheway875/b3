require 'test_helper'

class BattlestarGalacticasControllerTest < ActionController::TestCase
  setup do
    @battlestar_galactica = battlestar_galacticas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:battlestar_galacticas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create battlestar_galactica" do
    assert_difference('BattlestarGalactica.count') do
      post :create, battlestar_galactica: { actor: @battlestar_galactica.actor, character: @battlestar_galactica.character, quote: @battlestar_galactica.quote }
    end

    assert_redirected_to battlestar_galactica_path(assigns(:battlestar_galactica))
  end

  test "should show battlestar_galactica" do
    get :show, id: @battlestar_galactica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @battlestar_galactica
    assert_response :success
  end

  test "should update battlestar_galactica" do
    put :update, id: @battlestar_galactica, battlestar_galactica: { actor: @battlestar_galactica.actor, character: @battlestar_galactica.character, quote: @battlestar_galactica.quote }
    assert_redirected_to battlestar_galactica_path(assigns(:battlestar_galactica))
  end

  test "should destroy battlestar_galactica" do
    assert_difference('BattlestarGalactica.count', -1) do
      delete :destroy, id: @battlestar_galactica
    end

    assert_redirected_to battlestar_galacticas_path
  end
end
