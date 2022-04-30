require "test_helper"

class ClienteTest < ActiveSupport::TestCase
  test 'cliente sem nome' do
    cliente = Cliente.new(nome: '', email: 'cliente@admin.com', cpf: '70369935454', password:'123456', password_confirmation:'123456')
    assert_not cliente.save
  end
  test 'cliente valido' do
    cliente = Cliente.new(nome: 'Teste', email: 'cliente@admin.com', cpf: '70369935454', password:'123456', password_confirmation:'123456')
    assert cliente.save
  end
  test 'cliente sem email' do
    cliente = Cliente.new(nome: 'Teste', email: '', cpf: '70369935454', password:'123456', password_confirmation:'123456')
    assert_not cliente.save
  end
end
