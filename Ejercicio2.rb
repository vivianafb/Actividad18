require 'date'
class Course
  def initialize(name, *fecha)
    @name = name
    @fecha = fecha.map { |date| Date.parse(date)}
  end
  def inicio(fecha_entregada)
    raise ArgumentError.new('argument is not a date') if fecha_entregada.class != Date
    @fecha.select { |date| date < fecha_entregada}
  end
  def termino(fechas)
    raise ArgumentError.new('argument is not a date') if fechas.class != Date
    @fecha.select { |date| date < fechas}

  end
end

info = []
data = []
File.open('cursos.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  info << Course.new(*ls)
end
p info

p info[0].inicio(Date.today)

p info[0].termino(Date.today)
