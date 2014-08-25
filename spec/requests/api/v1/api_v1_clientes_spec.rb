require 'rails_helper'

RSpec.describe "Api::V1::Clientes" do


  describe "GET /api_v1_clientes" do
    it 'should return 401 if not signed in' do

      get api_v1_clientes_path
      expect(response.status).to  eq(401)
    end

    it "works! (now write some real specs)" do
      sign_in_as_a_valid_user
      get api_v1_clientes_path
      expect(response.status).to eq(200)
    end

    it 'should return a single client' do
        cliente = Cliente.create nombre: 'John', apellido: 'Doe', email:'john@doe.com'
        get api_v1_cliente_path cliente.id
        expect(response.status).to  eq(200)
    end
  end
end
