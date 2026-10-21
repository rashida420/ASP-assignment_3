class LibraryItem
    attr_reader :title, :author, :publication_year
    def initialize(title, author, publication_year)
        @title=title
        @author=author
        @publication_year=publication_year
    end
    def display_info()
        puts "Title: #{@title}"
        puts "Author name: #{@author}"
        puts "Year: #{@publication_year}"
    end
end
class Book < LibraryItem
    attr_reader :genre
    def initialize(title, author, publication_year, genre)
        super(title, author, publication_year)
        @genre=genre
    end
    def display_info()
        puts "Information about book:"
        super
        puts "Genre: #{@genre}"
    end

end

class DVD < LibraryItem
    attr_reader :director
    def initialize(title, author, publication_year, director)
        super(title, author, publication_year)
        @director=director
    end
     def display_info()
        puts "Information about DVD:"
        super
        puts "Director: #{@director}"
    end
end



class CD < LibraryItem
    attr_reader :artist
    def initialize(title, author, publication_year, artist)
        super(title, author, publication_year)
        @artist=artist
    end
     def display_info()
        puts "Information about CD:"
        super
        puts "Artist: #{@artist}"
    end
end

class Library 
    def initialize
        @library_item=[]
    end
    def add_item(item)
        puts "Added item "
        @library_item.push(item)
    end
    def remove_item(item)
        puts "Removed item:"
        @library_item.delete(item)
    end

    def display_item(item)  
        item.display_info  
    end

    def display_all_items()
        for item in @library_item
            display_item(item)
        end
    end

end

book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming")
dvd  = DVD.new("Inception", "Christopher Nolan", 2010, "Science Fiction")
cd   = CD.new("A Day at the Races", "Queen", 1976, "Rock")

book.display_info
dvd.display_info
cd.display_info

library = Library.new
library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

library.display_all_items

    
