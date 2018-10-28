class Table
  attr_accessor :mesa
  def initialize(mesa, *dia)
    @mesa = mesa
    @dia = dia.map(&:to_i)
  end
  def mayor
    mayor = 0
    if @dia[0] > @dia[1]
      mayor = @dia[0]
    elsif @dia[0] < @dia[1]
      mayor = @dia[1]
    end

     e = 2
     while e != @dia.length
       if @dia[e] > mayor
         mayor = @dia[e]
       elsif @dia[e] < mayor
         mayor = mayor
       end
        e +=1
     end
       mayor
  end
  def promedio
    @dia.inject(&:+) / @dia.size.to_f
  end
end
mesa = []
data = []
File.open('casino.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
  ls = prod.split(', ')
  mesa << Table.new(*ls)
end
 p mesa

mesa.each do |dia|
   p dia.mesa
   p " El promedio es : #{dia.promedio} "
end

mesa.each do |dia|
  p dia.mesa
  p " El dia con mayor recaudacion es : #{dia.mayor} "
end
