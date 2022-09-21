require "test_helper"

class LinhaTest < ActiveSupport::TestCase

  test "não salvar Linha sem nome" do
    item = linhas(:three)
    assert_not item.save, "Salvou linha sem nome"  
  end

  test "não salvar Linha sem codigo" do
    item = linhas(:four)
    assert_not item.save, "Salvou linha sem codigo"  
  end

end
