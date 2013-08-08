require 'httparty'
require "loterias/sena/parser"

module Loterias
  class Sena
    include HTTParty
    base_uri 'www1.caixa.gov.br/loterias/loterias/megasena'
    # debug_output

    parser Sena::Parser

    def self.sorteio(drawing = nil)
      if drawing
        get("/megasena_pesquisa_new.asp", { :query => { :submeteu => "sim", :opcao => "value", :txtConcurso => drawing } }  )
      else
        get("/megasena_pesquisa_new.asp", { :query => { :f_megasena => (Time.now.to_f * 1000).to_i } } )
      end
    end

  end
end
