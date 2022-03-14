require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

num_authors   = 10
num_libraries = 5
puts "creating #{num_authors} author"
num_authors.times do |t|

  author = Author.create(name:        Faker::FunnyName.name,
                         birthdate:   Faker::Date.between(from: '1950-01-01', to: '1999-01-01'),
                         nationality: Faker::Nation.nationality)

  #create books for author
  num_books = Faker::Number.between(from: 1, to: 5)
  num_books.times do |num|
    b = Book.create(title:  Faker::Book.title,
                    author: author,
                    isbn:   Faker::Number.number(digits: 10),
                    year:   Faker::Number.between(from: author.birthdate.year + 18, to: Date.today.year))
  end

  puts "\t #{author.name} has been saved to database with #{num_books} books"
end

puts "Creating #{num_libraries} libraries"
num_libraries.times do |t|
  l = Library.create(name: "#{Faker::University.name} library", nationality: Faker::Nation.nationality)
  puts "\t#{l.name} has been added to DB"
end

puts "Creating hungarian entities"
jozsi = Author.create(name:        "Józsi József",
                      birthdate:   Faker::Date.between(from: '1950-01-01', to: '1999-01-01'),
                      nationality: "Hungarian")

code_book = Book.create(title: "The art of coding", isbn: "-", year: 2022, author: jozsi)

hun_lib = Library.create(name: "BME könyvtár", nationality: "Hungarian")
hun_lib.acquisitions.create(book: code_book, year: 2022)

puts "Assigning books to libraries"
assignments = 0
all_books   = Book.all
Library.all.each do |library|

  num_books = Faker::Number.between(from: 1, to: 15)
  num_books.times do |num|

    b = all_books.sample
    library.acquisitions.create(book: b,
                                year: Faker::Number.between(from: b.year, to: Date.today.year))
    assignments += 1
  end

end
puts "\tAssigned #{assignments} books"
puts "Seed done!"