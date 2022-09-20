require "application_system_test_case"

class LinhasTest < ApplicationSystemTestCase
  setup do
    @linha = linhas(:one)
  end

  test "visiting the index" do
    visit linhas_url
    assert_selector "h1", text: "Linhas"
  end

  test "should create linha" do
    visit linhas_url
    click_on "New linha"

    fill_in "Codigo", with: @linha.codigo
    fill_in "Nome", with: @linha.nome
    fill_in "Tipo", with: @linha.tipo_id
    click_on "Create Linha"

    assert_text "Linha was successfully created"
    click_on "Back"
  end

  test "should update Linha" do
    visit linha_url(@linha)
    click_on "Edit this linha", match: :first

    fill_in "Codigo", with: @linha.codigo
    fill_in "Nome", with: @linha.nome
    fill_in "Tipo", with: @linha.tipo_id
    click_on "Update Linha"

    assert_text "Linha was successfully updated"
    click_on "Back"
  end

  test "should destroy Linha" do
    visit linha_url(@linha)
    click_on "Destroy this linha", match: :first

    assert_text "Linha was successfully destroyed"
  end
end
