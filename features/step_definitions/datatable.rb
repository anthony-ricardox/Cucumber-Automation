# # Este passo recebe a tabela do cenário.
# # O objeto 'table' contém os dados em formato de matriz.
# Dado(/^que eu tenho umas laranjas\s*$/) do |table|
#   # Converte a tabela para uma matriz simples, por exemplo:
#   # [["laranja", "10"]] ou [["laranja"], ["10"]]
#   raw = table.raw

#   # Caso a tabela venha no formato: |laranja|10|
#   # Exemplo: raw = [["laranja", "10"]]
#   if raw.length == 1 && raw[0].length == 2
#     @laranja = raw[0][1].to_i
#   # Caso a tabela venha no formato vertical:
#   # |laranja|
#   # |10|
#   # Exemplo: raw = [["laranja"], ["10"]]
#   elsif raw.length > 1 && raw[0].length == 1
#     @laranja = raw[1][0].to_i
#   # Caso a tabela venha em outro formato, tenta transformar em hash.
#   else
#     @laranja = table.rows_hash['laranja'].to_i
#   end
# end

# # Quando o usuário corta uma quantidade de laranjas,
# # subtrai essa quantidade da quantidade inicial.
# Quando('eu corto {int} laranjas') do |valor|
#   @total = @laranja - valor
# end

# # Verifica se a quantidade final ficou correta.
# # 'expect' é do RSpec e valida a condição.
# Então('eu verifico quantas laranjas sobraram inteiros') do
#   expect(@total).to eq(8)
#   # Exibe o resultado no console para visualizar no terminal.
#   puts @total
# end

# # Quando o usuário chupa uma quantidade de laranjas,
# # também subtrai da quantidade inicial.
# Quando('eu chupo {int} laranjas') do |valor|
#   @total = @laranja - valor
# end

# # Verifica se a quantidade final também está correta no segundo cenário.
# Então('eu verifico quantas laranjas sobraram') do
#   expect(@total).to eq(8)
#   puts @total
# end

# Primeiro cenário: tem a palavra "eu" e usa @laranja (singular)
Dado("que eu tenho umas laranjas") do |table|
  puts @laranja = table.rows_hash['laranja'].to_i
end

Quando("eu corto {int} laranjas") do |valor1|
  @cortar = valor1
  @total = @laranja - @cortar
end

Entao("eu verifico quantas laranjas sobraram inteiras.") do
  expect(@total).to eq 8
end


# Segundo cenário: NÃO tem a palavra "eu" e usa @laranjas (plural)
Dado("que tenho umas laranjas") do |table|
  table.hashes.each do |valor|
     @laranjas = valor['laranja'].to_i
  end
end

Quando("eu chupo {int} laranjas") do |valor2|
  @chupei = valor2
  @resultado = @laranjas - @chupei   # <--- Aqui usa @laranjas (plural)
end

Entao("eu verifico quantas laranjas sobraram") do
  expect(@resultado).to eq 8
end