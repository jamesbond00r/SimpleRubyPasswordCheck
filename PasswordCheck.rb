DataBase = {
  'TestUser' => 'Test',
  'Rob' => '323232',
  'Amy' => 'Love',
  'GuyCool' => 'Password123'

}.freeze

def TestUser(user, password)
  bool = false
  DataBase.each do |key, _value|
    bool = true if user == key && password == _value
  end
  bool
end

puts 'Welcome please login...'
puts 'UserName: '
userName = gets.chomp
puts 'Password: '
password = gets.chomp
if TestUser(userName, password)
  puts "Welcome Back! #{userName}"
else puts 'Username or Password dint match please try again'
end
