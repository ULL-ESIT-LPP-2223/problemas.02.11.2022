# frozen_string_literal: true

RSpec.describe Gema do
  it "has a version number" do
    expect(Gema::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(false)
  end

  describe Gema::Punto do
    it "Se puede intanciar un punto" do
      expect(Gema::Punto.new(0,0)).not_to eq(nil)
    end
    context "Atributos, getters, to_s" do
      it "Un punto debe tener unas coordenadas x e y" do
        expect(Gema::Punto.new(0,0).x).to eq(0)
        expect(Gema::Punto.new(0,0).y).to eq(0)
      end
      it "Un punto debe tener un conversor a cadena to_s" do
        expect(Gema::Punto.new(0,0).to_s).to eq("(0,0)")
      end
    end
    context "Métodos de instancia" do
      it "Se puede multiplicar un punto por un escalar" do
        expect((Gema::Punto.new(1,1)*5).to_s).to eq("(5,5)")
      end
    end
  end
end
