Quando('eu somo {int} + {int}') do |int, int2|
# Quando('eu somo {int} {float} {float}') do |int, float, float2|
# Quando('eu somo {float} {float} {int}') do |float, float2, int|
# Quando('eu somo {float} {float} {float}') do |float, float2, float3|
  @soma = int + int2
end

Então('o resultado tem que ser {int}') do |resultado|
# Então('o resultado tem que ser {float}') do |float|
  expect(@soma).to eq resultado
  puts @soma 
  puts resultado
end