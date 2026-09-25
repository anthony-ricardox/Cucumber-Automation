Quando('eu multiplico minhas {int} pelo {int}') do |laranja, valor|
# Quando('eu multiplico minhas {int} pelo {float}') do |int, float|
# Quando('eu multiplico minhas {float} pelo {int}') do |float, int|
# Quando('eu multiplico minhas {float} pelo {float}') do |float, float2|
  @multi = laranja * valor
end

Então('eu vejo qual {int} da multiplicação') do |resultado|
# Então('eu vejo qual {float} da multiplicação') do |float|
  expect(@multi).to eq  resultado
end