require "application_system_test_case"

class PostesTest < ApplicationSystemTestCase
  setup do
    @poste = postes(:one)
  end

  test "visiting the index" do
    visit postes_url
    assert_selector "h1", text: "Postes"
  end

  test "should create poste" do
    visit postes_url
    click_on "New poste"

    fill_in "Email", with: @poste.email
    fill_in "First name", with: @poste.first_name
    fill_in "Last name", with: @poste.last_name
    fill_in "Phone", with: @poste.phone
    fill_in "Twitter", with: @poste.twitter
    click_on "Create Poste"

    assert_text "Poste was successfully created"
    click_on "Back"
  end

  test "should update Poste" do
    visit poste_url(@poste)
    click_on "Edit this poste", match: :first

    fill_in "Email", with: @poste.email
    fill_in "First name", with: @poste.first_name
    fill_in "Last name", with: @poste.last_name
    fill_in "Phone", with: @poste.phone
    fill_in "Twitter", with: @poste.twitter
    click_on "Update Poste"

    assert_text "Poste was successfully updated"
    click_on "Back"
  end

  test "should destroy Poste" do
    visit poste_url(@poste)
    click_on "Destroy this poste", match: :first

    assert_text "Poste was successfully destroyed"
  end
end
