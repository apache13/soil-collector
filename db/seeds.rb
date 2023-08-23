# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

c1 = Customer.create({name: "c1", phone: "123456789", email: "test@test", address: "thailand", remark: "test"})
c2 = Customer.create({name: "c2", phone: "123456789", email: "test@test", address: "thailand", remark: "test"})
c3 = Customer.create({name: "c3", phone: "123456789", email: "test@test", address: "thailand", remark: "test"})

r1 = Request.create({customer: c1, receive: Date.new(2023,9,1), channel: "phone"})
r2 = Request.create({customer: c1, receive: Date.new(2023,9,2), channel: "email"})
r3 = Request.create({customer: c2, receive: Date.new(2023,9,3), channel: "phone"})
r4 = Request.create({customer: c2, receive: Date.new(2023,9,4), channel: "email"})
r5 = Request.create({customer: c3, receive: Date.new(2023,9,5), channel: "phone"})
r6 = Request.create({customer: c3, receive: Date.new(2023,9,6), channel: "email"})