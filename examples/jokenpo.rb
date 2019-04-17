# Iniciamos um array com as opções da máquina a definir randômicamente.
maquina = %w(papel, tesoura, pedra).sample

# Iniciamos um contador em loop

for i in 0..3 do
  puts "#{i}"
  sleep(1)
end

puts "Jokenpooo! [Pedra-Papel-Tesoura]"
sleep(0.5)
jogada = gets.chomp.downcase


# Enquanto o jogador não fizer uma jogada válida, pedimos para jogar de novo
while jogada != "pedra" && jogada != "papel" && jogada != "tesoura"
	puts "jogo de novo"
	jogada = gets.chomp.downcase
end

# mensagem de vitória caso qualquer uma das condições seja true
if (jogada == "papel" && maquina == "pedra") || (jogada == "tesoura" && maquina == "papel") || (jogada == "pedra" && maquina == "tesoura")
  puts "EH TETRAAAA"
# se a jogada == maquina, deu empate
elsif jogada == maquina
  puts "moiou"
# se não ganhou nem empatou, só sobrou uma coisa pra acontecer...
else 
  puts "perdeu ne?!"
end