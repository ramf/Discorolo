# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.create(email: "admin@example.com", password: '123456')


# ROLE = 0 admin
# ROLE = 1 Usuário

User.create(name: "Romênia Irlandia Soares Dutra",
            email: "8776",
            password: '123456',
            role: 0
)

User.create(name: "Marcia Maria Freitas de Queiroz",
            email: "287",
            password: '123456',
            role: 0
)

User.create(name: "João Alfredo Pinto Moreira",
            email: "05598766370",
            password: '123456',
            role: 1
)
