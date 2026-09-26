# Passos do Cucumber para demonstrar o uso de "chamando outros steps".
# Esse arquivo representa cenários que trabalham com a quantidade de laranjas
# no estoque e reutilizam passos em outros cenários.

# Dado: define o estado inicial do cenário.
# Neste caso, o usuário informa quantas laranjas existem no estoque.
Dado('eu tenho {int} laranjas no estoque') do |valor1|
# Dado('eu tenho {float} laranjas no estoque') do |float|
   @laranja = valor1
   puts @laranja
end

# Quando: executa a ação de amassar uma quantidade de laranjas.
# A quantidade restante no estoque é calculada subtraindo o valor informado.
Quando('eu amasso {int} laranjas') do |valor2|
# Quando('eu amasso {float} laranjas') do |float|
    @total = @laranja - valor2
    puts @retiro
end

# Então: valida que a quantidade restante está correta.
# Nesse cenário, a expectativa é que sobrem 5 laranjas.
Entao('eu verifico quantas laranjas sobraram no estoque') do
  expect(@total).to eq 5
  puts @total
end

# Quando: exemplo de reutilização de um passo dentro de outro passo.
# O comando "steps" executa outro bloco de passos antes da lógica principal.
# Aqui, antes de vender as laranjas, o sistema chama novamente o passo
# "Dado eu tenho 10 laranjas no estoque".
Quando('revendo {int} laranjas') do |valor|
  # Chamando outro passo antes do "Quando" principal
  steps %Q{
       Dado eu tenho 10 laranjas no estoque
    }
    @resultado = @laranja - valor
end

# Então: confirma que a quantidade restante após a venda foi calculada corretamente.
# Neste cenário, espera-se que o resultado final seja 8.
Então('eu verifico com quantas laranjas eu fiquei') do
    expect(@resultado).to eq 8
end