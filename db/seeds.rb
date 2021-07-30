puts "Clearing old data..."
Message.destroy_all
Project.destroy_all
Skill.destroy_all
Tag.destroy_all

puts "Seeding Projects..."

# create projects
photo = Project.create(name: "Megan E. McCarty Photography")
zen = Project.create(name: "ZenStudio413")
dave = Project.create(name: "Dr. David Adamski")
bf = Project.create(name: "Butterfly Finder")
flex = Project.create(name: "Flexbox Playground")

puts "Seeding Tags..."

# create tags
django_rest = Tag.create(name: "Django REST Framework")
django = Tag.create(name: "Django")
wag = Tag.create(name: "Wagtail CMS")
ruby = Tag.create(name: "Ruby")
rack = Tag.create(name: "Rack")
html = Tag.create(name: "HTML")
css = Tag.create(name: "CSS")
js = Tag.create(name: "JavaScript")
react = Tag.create(name: "React JS")

photo.tags << django_rest
photo.tags << react
photo.tags << html
photo.tags << css

puts "Done!"