require "test_helper"

class PostesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poste = postes(:one)
  end

  test "should get index" do
    get postes_url
    assert_response :success
  end

  test "should get new" do
    get new_poste_url
    assert_response :success
  end

  test "should create poste" do
    assert_difference("Poste.count") do
      post postes_url, params: { poste: { email: @poste.email, first_name: @poste.first_name, last_name: @poste.last_name, phone: @poste.phone, twitter: @poste.twitter } }
    end

    assert_redirected_to poste_url(Poste.last)
  end

  test "should show poste" do
    get poste_url(@poste)
    assert_response :success
  end

  test "should get edit" do
    get edit_poste_url(@poste)
    assert_response :success
  end

  test "should update poste" do
    patch poste_url(@poste), params: { poste: { email: @poste.email, first_name: @poste.first_name, last_name: @poste.last_name, phone: @poste.phone, twitter: @poste.twitter } }
    assert_redirected_to poste_url(@poste)
  end

  test "should destroy poste" do
    assert_difference("Poste.count", -1) do
      delete poste_url(@poste)
    end

    assert_redirected_to postes_url
  end
end
