# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Folder.destroy_all
Wiki.destroy_all
Bookmark.destroy_all

user = User.create(username: "mimi", password: "123")

folder = Folder.create(user_id: user.id, name: "Bookmarks")

wikione = Wiki.create(page_id: 1234, page_title: "Mimi's Wiki", snippet: "This is a test wiki", img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.SjNf6PGWclzpelQKF4fkWAHaHa%26pid%3DApi&f=1", cat_title: "Education", cat_id: "222")
wikitwo = Wiki.create(page_id: 4321, page_title: "Mimi's SECOND Wiki", snippet: "This is a SECOND test wiki", img: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.SjNf6PGWclzpelQKF4fkWAHaHa%26pid%3DApi&f=1")

bookmark = Bookmark.create(user_id: user.id, wiki_id: wikione.id, folder_id: folder.id)