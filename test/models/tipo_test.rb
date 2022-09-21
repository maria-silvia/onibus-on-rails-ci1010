require "test_helper"

class TipoTest < ActiveSupport::TestCase
  test "não salvar Tipo sem nome" do
    item = tipos(:three)
    assert_not item.save, "Salvou Tipo sem nome"  
  end

  test "não salvar Tipo sem cor" do
    item = tipos(:four)
    assert_not item.save, "Salvou linha sem cor"  
  end
end
