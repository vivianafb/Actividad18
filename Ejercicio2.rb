require 'date'
class Course
  attr_accessor :name
  def initialize(name, *fecha)
    @name = name
    @fecha = fecha.map { |date| Date.parse(date)}
  end
  def inicio(fecha_inicio)
    raise ArgumentError.new('argument is not a date') if fecha_inicio.class != Date
    @fecha.select { |date| date < fecha_inicio}
  end
  def termino(fecha_termino)
    raise ArgumentError.new('argument is not a date') if fecha_termino.class != Date
    @fecha.select { |date| date < fecha_termino}

  end
end

info = []
data = []
File.open('cursos.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  info << Course.new(*ls)
end

i = 0
info.each do |fechas|
p fechas.name
y = info[i].inicio(Date.today)
p y
end

i = 0
info.each do |fechas|
p fechas.name
d = info[i].termino(Date.today)
p d
end
