class Roulette
  attr_accessor :apuesta
    def initialize(apuestas)
      @apuestas = apuestas
    end
    def play
       r = rand(1..10)
       puts "El numero entregado por la ruleta es: #{r}"
      if @apuestas == r
        puts 'Has ganado!'
        apuesta = []
        data = []
        File.open('winners.txt.txt', 'a') {|f| f.write
        data.each do |ap|
          ls = ap.split(', ')
          r << Roulette.new(ls)
        end
         apuesta
       }
      else
        puts 'Perdiste tu apuesta!'
        azar = []
        data = []
        File.open('roulette_history.txt', 'a') {|f| f.write
        data.each do |ap|
          ls = ap.split(', ')
          azar << Roulette.new(ls)
        end
         azar
       }
      end
    end
end

  h = Roulette.new(1)
  h.play
