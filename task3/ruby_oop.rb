class LibraryItem
    attr_accessor :title, :author, :publication_year
    def initialize(title, author, publication_year)
        @title=title
        @author=author
        @publication_year=publication_year
    end
    def display_details()
        puts "Title: #@title"
        puts "Author name: #@author"
        puts "Year: #@publication_year"
    end