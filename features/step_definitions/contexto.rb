Dado('que eu tenha {int} laranjas na bolsa') do |valor|
# Dado('que eu tenha {float} laranjas na bolsa') do |float|
  @laranjas = valor 

end

Quando('eu coloco {int} laranja na bolsa') do |valor2|
# Quando('eu coloco {float} laranja na bolsa') do |float|
  @coloquei = valor2
  @resultado = @laranjas + @coloquei
end

Então('eu verifico se o total  de laranjas  na bolsa é {int}') do |total|
# Então('eu verifico se o total  de laranjas  na bolsa é {float}') do |float|
  expect(@resultado).to eq total

end

Quando('eu tiro {int} laranjas da bolsa') do |valor3|
# Quando('eu tiro {float} laranjas da bolsa') do |float|
  
  @retirei = valor3
  @resultado = @laranjas - @retirei
end

Então('eu verifico com quantas laranjas eu fiquei na bolsa') do
  
    expect(@resultado).to eq 8 
end
