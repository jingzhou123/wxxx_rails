# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
article = Article.create(title: 'one', body: 'na')
parent_comment = Comment.create(commenter: 'parent', body: 'na')
article.comments<<parent_comment
child_comment = Comment.create(commenter: 'child', body: 'na', parent_id: parent_comment.id)
