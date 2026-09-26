
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



# Primeiro cenário: recebe a tabela em formato chave/valor
# Exemplo: |laranja | 10 |
Dado("que eu tenho umas laranjas") do |table|
  # rows_hash transforma a tabela em um hash e pega o valor da chave 'laranja'.
  @laranja = table.rows_hash['laranja'].to_i
end

# O cenário diz que eu vou cortar 2 laranjas.
# Então subtraio essa quantidade da quantidade inicial.
Quando("eu corto {int} laranjas") do |valor1|
  @cortar = valor1
  @total = @laranja - @cortar
end

# Verifica se sobraram 8 laranjas inteiras.
Entao("eu verifico quantas laranjas sobraram inteiros") do
  expect(@total).to eq 8
end

# Segundo cenário: recebe a tabela em formato vertical
# Exemplo:
# |laranja|
# |10     |
Dado("que tenho umas laranjas") do |table|
  # hashes percorre cada linha como um hash e pega o valor da coluna 'laranja'.
  table.hashes.each do |valor|
    @laranjas = valor['laranja'].to_i
  end
end

# O cenário diz que eu vou chupar 2 laranjas.
# Então subtraio essa quantidade da quantidade inicial.
Quando("eu chupo {int} laranjas") do |valor2|
  @chupei = valor2
  @resultado = @laranjas - @chupei
end

# Verifica se sobraram 8 laranjas.
Entao("eu verifico quantas laranjas sobraram") do
  expect(@resultado).to eq 8
end