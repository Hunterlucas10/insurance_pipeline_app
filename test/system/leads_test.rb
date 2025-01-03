require "application_system_test_case"

class LeadsTest < ApplicationSystemTestCase
  setup do
    @lead = leads(:one)
  end

  test "visiting the index" do
    visit leads_url
    assert_selector "h1", text: "Leads"
  end

  test "should create lead" do
    visit leads_url
    click_on "New lead"

    fill_in "Agent", with: @lead.agent
    fill_in "Date added", with: @lead.date_added
    fill_in "Email", with: @lead.email
    fill_in "First name", with: @lead.first_name
    fill_in "Last name", with: @lead.last_name
    fill_in "Last update", with: @lead.last_update
    fill_in "Line of business", with: @lead.line_of_business
    fill_in "Notes", with: @lead.notes
    fill_in "Phone", with: @lead.phone
    fill_in "Status", with: @lead.status
    click_on "Create Lead"

    assert_text "Lead was successfully created"
    click_on "Back"
  end

  test "should update Lead" do
    visit lead_url(@lead)
    click_on "Edit this lead", match: :first

    fill_in "Agent", with: @lead.agent
    fill_in "Date added", with: @lead.date_added.to_s
    fill_in "Email", with: @lead.email
    fill_in "First name", with: @lead.first_name
    fill_in "Last name", with: @lead.last_name
    fill_in "Last update", with: @lead.last_update.to_s
    fill_in "Line of business", with: @lead.line_of_business
    fill_in "Notes", with: @lead.notes
    fill_in "Phone", with: @lead.phone
    fill_in "Status", with: @lead.status
    click_on "Update Lead"

    assert_text "Lead was successfully updated"
    click_on "Back"
  end

  test "should destroy Lead" do
    visit lead_url(@lead)
    click_on "Destroy this lead", match: :first

    assert_text "Lead was successfully destroyed"
  end
end
