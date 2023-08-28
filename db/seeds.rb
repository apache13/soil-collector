# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

c1 = Customer.create({name: "Peter Parker", phone: "081-9999999", email: "test@test", address: "USA", remark: "Spider-Man"})
c2 = Customer.create({name: "Tony Stark", phone: "081-9999999", email: "test@test", address: "USA", remark: "Iron Man"})
c3 = Customer.create({name: "Steve Rogers", phone: "081-9999999", email: "test@test", address: "USA", remark: "Captain America"})
c4 = Customer.create({name: "Thor Odinson", phone: "081-9999999", email: "test@test", address: "USA", remark: "Thor Odinson"})
c5 = Customer.create({name: "Natasha Romanoff", phone: "081-9999999", email: "test@test", address: "USA", remark: "Black Widow"})
c6 = Customer.create({name: "Stephen Strange", phone: "081-9999999", email: "test@test", address: "Tibet", remark: "Doctor Strange"})

r1 = Request.create({customer: c1, receive: Date.new(2023,9,1), channel: "phone", ph: true, lime: true, om: true, p: true, k: true})
r2 = Request.create({customer: c2, receive: Date.new(2023,9,2), channel: "email", ph: true, lime: false, om: true, p: true, k: true})
r3 = Request.create({customer: c3, receive: Date.new(2023,9,3), channel: "phone", ph: true, lime: false, om: true, p: true, k: true})
r4 = Request.create({customer: c4, receive: Date.new(2023,9,4), channel: "email", ph: true, lime: false, om: true, p: true, k: true})
r5 = Request.create({customer: c5, receive: Date.new(2023,9,5), channel: "phone", ph: true, lime: false, om: true, p: true, k: true})
r6 = Request.create({customer: c6, receive: Date.new(2023,9,6), channel: "email", ph: true, lime: false, om: true, p: true, k: true})

ph1 = Ph.create({weight: 20.0, or: 20.0, ph1: 5.36, ph2: 5.45, ph3: 5.22})
lime1 = Lime.create({weight: 20.0, woodruff: 20.0, ph1: 5.36, ph2: 5.45, ph3: 5.43})
om1 = Om.create({weight: 20.0, K2CrO7_V1: 1.0, K2CrO7_N1: 1.0, FeSO4_1: 5.0, FeSO4_2: 4.9, FeSO4_3: 5.1, FeSO4_N2: 0.47, OC: 1.06, OM: 1.82})


r1s1 = Sample.create({request: r1, detail: "สวนที่บ้าน", location: "จุดที่ 1", plant: "ทุเรียน", ph: ph1, lime: lime1, om: om1})
r1s2 = Sample.create({request: r1, detail: "สวนที่บ้าน", location: "จุดที่ 2", plant: "ทุเรียน"})
r1s3 = Sample.create({request: r1, detail: "สวนที่บ้าน", location: "จุดที่ 3", plant: "ทุเรียน"})
r1s4 = Sample.create({request: r1, detail: "สวนที่บ้าน", location: "จุดที่ 4", plant: "ทุเรียน"})

r2s1 = Sample.create({request: r2, detail: "สวนที่บ้าน", location: "จุดที่ 1", plant: "มังคุุด"})
r2s2 = Sample.create({request: r2, detail: "สวนที่บ้าน", location: "จุดที่ 2", plant: "มังคุุด"})
r2s3 = Sample.create({request: r2, detail: "สวนที่บ้าน", location: "จุดที่ 3", plant: "มังคุุด"})
r2s4 = Sample.create({request: r2, detail: "สวนที่บ้าน", location: "จุดที่ 4", plant: "มังคุุด"})

