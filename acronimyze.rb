
def acronimyze(string)
  # 1. Separar as palavras em uma lista
word_list = string.split(" ")   
  # 2. Criar uma nova lista 
  result = []
  # 3. Preencher essa lista com o inicio de cada palavra
  word_list.each do | word | 
    result.push(word[0])
    end
  # 4. Após a lista preenchida, transformar o resultado em string e maiúsculo
  result.join.to_s.upcase
end

puts acronimyze("Away from Keyboard") == "AFK"
puts acronimyze("Lot of Laught") == "LOL"
puts acronimyze("") == ""