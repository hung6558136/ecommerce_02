20.times do |i|
  email = "demo#{i}@gmail.com"
  password = "123456"
  role = "1"
  sign_in_count = "1"
  User.create!(email: email, password: password, role: role,
    sign_in_count: sign_in_count)
end
