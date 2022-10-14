OPTIONS = ["Pedra", "Papel", "Tesoura"]
COMP_CHOICE = ["Pedra", "Papel", "Tesoura"].sample

def check_result(player_choice, tries)  
  if COMP_CHOICE == player_choice
    puts "Você fez a mesma escolha q a maquina, EMPATE!"
    exit
  else
    if COMP_CHOICE == "Pedra"
      player_win = player_choice == "Papel"
    elsif COMP_CHOICE == "Papel"
      player_win = player_choice == "Tesoura"
    elsif COMP_CHOICE == "Tesoura"
      player_win = player_choice == "Pedra"
    end
  end

  if player_win
    puts "Você venceu! Computador escolheu #{COMP_CHOICE} em #{tries} tentativas"
    exit
  else
    puts "Você perdeu! Computador escolheu #{COMP_CHOICE}"
  end
end

tries = 1

loop do
  puts "Qual a sua escolha: (Pedra, Papel ou Tesoura)? (Digite exit p/ sair)"
  player_choice = gets.chomp
  
  if  OPTIONS.include?(player_choice)
   check_result(player_choice, tries)
  elsif player_choice == "exit"
    exit
  else
    puts "Opção Invalida, escolha entre: #{OPTIONS.join(" | ")}"
  end
  tries += 1
end

