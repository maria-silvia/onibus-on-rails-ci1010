require "test_helper"

class LinhasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @linha = linhas(:one)
  end

  test "should get index" do
    get linhas_url
    assert_response :success
  end

  test "should get new" do
    get new_linha_url
    assert_response :success
  end

  test "should create linha" do
    assert_difference("Linha.count") do
      post linhas_url, params: { linha: { codigo: @linha.codigo, nome: @linha.nome, tipo_id: @linha.tipo_id } }
    end

    assert_redirected_to linha_url(Linha.last)
  end

  test "should show linha" do
    get linha_url(@linha)
    assert_response :success
  end

  test "should get edit" do
    get edit_linha_url(@linha)
    assert_response :success
  end

  test "should update linha" do
    patch linha_url(@linha), params: { linha: { codigo: @linha.codigo, nome: @linha.nome, tipo_id: @linha.tipo_id } }
    assert_redirected_to linha_url(@linha)
  end

  test "should destroy linha" do
    assert_difference("Linha.count", -1) do
      delete linha_url(@linha)
    end

    assert_redirected_to linhas_url
  end
end
