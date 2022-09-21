require "application_system_test_case"

class TerminalsTest < ApplicationSystemTestCase
  setup do
    @terminal = terminals(:one)
  end

  test "visiting the index" do
    visit terminals_url
    assert_selector "h1", text: "Terminals"
  end

  test "should create terminal" do
    visit terminals_url
    click_on "New terminal"

    fill_in "Endereco", with: @terminal.endereco_id
    fill_in "Nome", with: @terminal.nome
    click_on "Create Terminal"

    assert_text "Terminal was successfully created"
    click_on "Back"
  end

  test "should update Terminal" do
    visit terminal_url(@terminal)
    click_on "Edit this terminal", match: :first

    fill_in "Endereco", with: @terminal.endereco_id
    fill_in "Nome", with: @terminal.nome
    click_on "Update Terminal"

    assert_text "Terminal was successfully updated"
    click_on "Back"
  end

  test "should destroy Terminal" do
    visit terminal_url(@terminal)
    click_on "Destroy this terminal", match: :first

    assert_text "Terminal was successfully destroyed"
  end
end
