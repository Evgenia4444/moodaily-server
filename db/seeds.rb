Post.destroy_all
#Category.destroy_all
User.destroy_all
Element.destroy_all 

puts "Start"
users = User.create([
  {id: '1', name: "Alisa453", email: "alisaivanova@yandex.ru", isadmin: false},
  {id: '2', name: "Max", email: "max@yandex.ru", isadmin: true},
  {id: '3', name: "MashaMI", email: "mashami@yandex.ru", isadmin: false}
  ])

  posts = [
  { user_id: "1",
  id: '1',
    content: "Наконец-то моя грусть постепенно уходит. Наверное, это связано с появляющимися надеждами и хорошей погодой."
  },
  { user_id: "2",
  id: '2',
    content: "Встреча с подругами очень подняла мне сегодня настроение. Мы много смеялись и поделились друг с другом всеми новостями, происходящими в наших жизнях"
  },
  { user_id: "3",
  id: '3',
    content: "Сегодня опять не поняла ту тему( Грустно от этого. Надеюсь, что в следующий раз пойму"
  }
  ]

  elements = Element.create([
    {name: "sadness", imageLink: "https://unsplash.com/photos/S-TQiqBugos" },
    {name: "happiness", imageLink: "https://unsplash.com/photos/S-TQiqBugos" },
    {name: "joy", imageLink: "https://unsplash.com/photos/S-TQiqBugos" }
    ])
  
    posts.each do |post|
      postik = Post.create(post)
      puts "Some magic just create a #{ postik.user_id } with id #{ postik.id }!"
    end

puts "End"

