puts "🌱 Seeding spices..."

# Seed your database here
Book.create(title: "The Alchemist", author: "Paulo Coelho", likes: 0)
Book.create(title: "The River Between", author: "Ngugi wa Thiongo", likes: 1)
Book.create(title: "The Richest Man in Babylon", author: "Danity Kane", likes: 0)
Book.create(title: "Havana", author: "Camilla Castro", likes: 2)
Book.create(title: "Becoming", author: "Michelle Obama", likes: 0)



all_reviews = ["This book is amazing!", "I love this book!", "This book is so good!", "I can't put this book down!", "This book is so interesting!"]

Book.all.each do |book|
    Review.create(text: all_reviews.sample, book_id: book.id)
end


puts "✅ Done seeding!"
