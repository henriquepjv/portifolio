# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Contact.create(subject: 'Assunto 1',
                         body: 'corpo email',
                         email: 'usuario@gmail.com')

Contact.create(subject: 'Assunto 2',
                               body: 'corpo email',
                               email: 'usuario@gmail.com')

Post.create(title: 'titulo post 1',
                   description: 'descriçao',
                   body:'corpo do post')

Post.create(title: 'titulo post 2',
           description: 'descriçao',
           body:'corpo do post')

Post.create(title: 'titulo post 3',
           description: 'descriçao',
           body:'corpo do post')

User.create(email: 'henriquepjv@hotmail.com',
           password: '123456',
                   name: 'Henrique',
                   city: 'sp',
                   phone: '2345-6789',
                   role: 'admin')

User.create(email: 'user@hotmail.com',
                   password: '123456',
                   name: 'Banana',
                   city: 'sp',
                   phone: '2345-6789',
                   role: 'user')

p "Created  Contacts:#{Contact.count}, Posts:#{Post.count}, Usuários:#{User.count}"
