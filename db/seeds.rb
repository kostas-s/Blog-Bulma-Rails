# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.find_or_create_by(title:"Crystal Ball – Automation in Ten Years Time by Richard Bradshaw",
body:"Richard’s article is more technical than some but still easy to read. It looks ahead in genuine honesty without naming products that may or may not apply to the future of testing. It is real and forward-looking without being misleading. Richard’s writings are solid and certainly worth spending time on.")

Article.find_or_create_by(title:"The Future of Software Testing by Angie Jones",
body:"An easy read that offers a positive and invigorated look at the future of software testing. It answers questions about where the industry is headed and what QA people need to do to be part of the growth. A great forward-thinking look from a master inventor and someone who specializes in thinking outside the box.")

Article.find_or_create_by(title:"Heuristics for Mushroom Picking (and testing) by Helena Jeret-Mae",
body:"This article is a quality assurance article for everyone in the field and one of the few software testing articles that are not overbearing on the technical side but simple and to the point. An enjoyable read. The author’s writing has an easy-going tone and makes reading about QA not simply something you have to do for work but something you might even enjoy.")

Article.find_or_create_by(title:"Three Wishes with Aladdin’s Magic Lamp by Luke Liu",
body:"Another article that offers a positive take on software testing looks at the QA area’s future and what can be in it for those in the field. It talks about professional progression in a simple way that makes the reading enjoyable and not tedious. Luke has great insight from a younger person’s perspective. Fresh and simple reading with good content about the future.")

Article.find_or_create_by(title:"Getting Product Feedback from online Communities by Rosie Sherry",
body:"Rosie gets it. Her articles are succinct and grounded. Some are 50 words and other full articles. This one is not about QA as much as it is about talking to people and understanding a product by finding out where it needs to go and what is needed to get there. Not every article has to be technical, sometimes it’s good to read up on ideas that are people-based so you know who your end-user is.")