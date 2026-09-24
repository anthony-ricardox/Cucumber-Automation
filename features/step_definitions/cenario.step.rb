Dado('eu tenha {int} laranjas') do |valor1|
# Dado('eu tenha {float} laranjas') do |float|
  @quantidade = valor1
end

Quando('eu como {int} laranjas') do |valor2|
# Quando('eu como {float} laranjas') do |float|
  @comeu = valor2
  @results =   @quantidade - @comeu
end

Então('eu vejo quantas laranjas sobraram.') do
  puts @results
  expect(@results ).to eq 8
  
end


Quando('eu compro {int} laranjas') do |c|
# Quando('eu compro {float} laranjas') do |float|
 @comprar = c
  @total =   @quantidade + @comprar
end

Então('eu vejo quantas laranjas eu tenho.') do
  puts @total
  expect(@total ).to eq 15
end