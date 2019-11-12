require 'digest/md5'
require 'digest/sha1'

puts "Введите слово или фразу для шифрования:"

# Ввод слова для шифровки
word = STDIN.gets.chomp

  puts "Каким способом зашифровать:\n"\
      "1. MD5\n"\
      "2. SHA1"

  # Ввод варианта шифровки
  answer = STDIN.gets.to_i

# .between? - между значениями (min, max)
# until - выполняет пока условие ложно
until answer.between?(1, 2)
  puts 'Выберите 1 или 2'
  answer = STDIN.gets.to_i
end

puts "Вот что получилось: "

  # Проверяем какую шифровку выбрал пользователь
  case answer
  when 1
    # Вывод слова в шифровке MD5
    puts Digest::MD5.hexdigest(word)
  when 2
    # Вывод слова в шифровке SHA1
    puts Digest::SHA1.hexdigest (word)
  end






