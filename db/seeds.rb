puts "Start"
users = User.create([
  {name: "John", email: "john@hse.ru", isadmin: false},
  {name: "John II", email: "johnii@hse.ru", isadmin: true},
  {name: "John III", email: "johniii@hse.ru", isadmin: false}
  ])

puts "End"