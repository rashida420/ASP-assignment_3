class LibraryItem
    attr_accessor :title, :author, :publication_year
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
