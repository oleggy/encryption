# Шифрование фразы по md5 или sha-1
require 'digest'
system "clear" or system "cls"

puts "Введите фразу для шифрования: \n"
user_input = STDIN.gets.chomp

encrypt_method = 0

while !([1,2,3].include?(encrypt_method)) do
  puts "\nКаким методом шифруем?\n1. MD5\n2. SHA-1\n3. SHA-2\n"
  encrypt_method = STDIN.gets.to_i
end

case encrypt_method
  when 1
    puts "\nВот, что получилось:\n " + Digest::MD5.hexdigest(user_input)
  when 2
    puts "Вот, что получилось:\n" + Digest::SHA1.hexdigest(user_input)
  when 3
    puts "Вот, что получилось:\n" + Digest::SHA2.hexdigest(user_input)
end
