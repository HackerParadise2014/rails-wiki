# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.create(title:"Cake", text: "Cake is a form of bread or bread-like food. In its modern forms, it is typically a sweet baked dessert. In its oldest forms, cakes were normally fried breads or cheesecakes, and normally had a disk shape. Determining whether a given food should be classified as bread, cake, or pastry can be difficult.")
Article.create(title:"Protected", text: "I'm a protected article.Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation. Whenever I find myself growing grim about the mouth; whenever it is a damp, drizzly November in my soul; whenever I find myself involuntarily pausing before coffin warehouses, and bringing up the rear of every funeral I meet; and especially whenever my hypos get such an upper hand of me, that it requires a strong moral principle to prevent me from deliberately stepping into the street, and methodically knocking people's hats off—then, I account it high time to get to sea as soon as I can. This is my substitute for pistol and ball. With a philosophical flourish Cato throws himself upon his sword; I quietly take to the ship. There is nothing surprising in this. If they but knew it, almost all men in their degree, some time or other, cherish very nearly the same feelings towards the ocean with me.", protected: true)
Article.create(title:"I'm a Secret!", text: "You can't see me because I'm archived. In its modern forms, it is typically a sweet baked dessert. In its oldest forms, cakes were normally fried breads or cheesecakes, and normally had a disk shape. Determining whether a given food should be classified as bread, cake, or pastry can be difficult.", archived: true)

5.times do 
	Article.create(title:"#{Faker::Name.title}", text:"#{Faker::Lorem.paragraph(sentence_count=10)}")
end