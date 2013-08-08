require 'set'

module Loterias
  class Sena

    class Parser < HTTParty::Parser

      def parse
        ar = body.force_encoding("ISO-8859-1").encode("UTF-8").split('|')
        {
          :drawing_number => ar[0],
          :rollover => ar[1],
          :draw_numbers => ar[2].scan(/<li>(\d\d)<\/li>/).flatten.to_set,
          :six_numbers_winners => ar[3],
          :six_numbers_prize => ar[4],
          :five_numbers_winners => ar[5],
          :five_numbers_prize => ar[6],
          :four_numbers_winners => ar[7],
          :four_numbers_winners => ar[8],
          # imagem_anterior => ar[9],
          # imagem_posterior => ar[10],
          :drawing_date => Time.parse(ar[11]),
          :drawing_city => ar[12],
          :drawing_state => ar[13],
          :auditory => ar[14],
          :observation => ar[15],
          :next_big_drawing => ar[16],
          :next_big_drawing_end_code => ar[17],
          :next_big_drawing_ammount => ar[18],
          # ganhadores sena por estado => ar[19],
          :draw_numbers_ordered => ar[20].scan(/<li>(\d\d)<\/li>/).flatten,
          :next_drawing_ammount => ar[21],
          :next_drawing_date => Time.parse(ar[22]),
          :new_years_eve_drawing_ammount => ar[23],
          :levy => ar[24],
        }

      end

    end

  end
end
