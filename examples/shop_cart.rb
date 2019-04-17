# TODO: you can build your instacart program here!

#Declarando inventário com preços e quantidade dentro da loja;
store = {
  'Kiwi' => {price: 1.25, inventory: 5},
      # Testar retorno do valor ':price' c/ `$stdout.puts #{kiwi[price]}`
  'Banana' => {price: 1.25, inventory:2},
  'Mango' => {price: 4.0, inventory:369},
  'Asparagus' => {price: 9.0, inventory: 1000}
}

#Mostrar menu de boas vindas
puts 'Bem vindx à Quitanda do Le Wagon!'
puts '-' * 36

#Exibir todos os produtos
store.each do |key, value|
  puts "Produto: #{key}: R$ #{value[:price]}. Temos #{value[:inventory]}"
end

#Declarando "carrinho" como um array vazio que será inputado pelo usuário.
cart = []

#Condição de loop que é verdadeiro enquanto o usuário não digita 'Quit'
loop do

  #Perguntando o nome do  produto
  $stdout.puts 'Qual item você deseja? (ou \'quit\' para sair)'
  product = gets.chomp.capitalize
  break if product == 'Quit'

  #Verifica se o produto existe na loja
  if store.key?(product)

  #Perguntando qual a quantidade necessária
  $stdout.puts 'Qual a quantidade que você deseja? (ou \'quit\' para sair)'
  quantity = gets.chomp.to_i

  #Quantidade do produto na loja
  inventory_product = store[product][:inventory]
    #Checa se o inventario do produto é maior que a quantidade do input.
    if inventory_product >= quantity
      #Adiciona o produto e a quantidade no carrinho
      cart << {product: product, quantity: quantity}
        #Atualiza o inventário atual.
        store_value = store[product]
        #Calcula qual os valores finais p/ o carrinho atual.
        store[product] = {price: store_value[:price], inventory: store_value[:inventory] - quantity}

      $stdout.print "Produto adicionado ao carrinho! "
    else
      $stdout.print "Desculpe, temos apenas #{inventory_product} unidades de #{product}."
    end
  else
    #Se o produto não existir
    $stdout.print 'Este produto está em falta. '
  end
end

# Declarando váriavel que guarda soma total
total = 0

# Exibindo extrato final do pedido
$stdout.puts '-------BILL---------'
cart.each do |product_hash|
  item = product_hash[:product]
  product_price = store[item][:price]
  product_quantity = product_hash[:quantity]
  total += product_price * product_quantity
  $stdout.puts "#{item}: #{product_quantity} x R$ #{product_price} = R$ #{product_price * product_quantity}"
end

# Imprimindo recibo final
$stdout.puts '-' * 34
$stdout.puts "Sua conta deu: R$#{total}"
$stdout.puts '-' * 34

# Imprimindo retorno do array ao exibir recibo.
# p cart
