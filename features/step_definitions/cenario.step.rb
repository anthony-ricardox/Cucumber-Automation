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