# Task 3-Library Catalog System

In this task, I created a library catalog system in Ruby. The main goal was to practice OOP concepts by creating different types of library items and managing them in one library. First, I created the `LibraryItem` class, where I included the information that all items have in common: title, author, and publication year. I also created a method to display this information.

At first, I called the method `display_details`, but later I changed it to `display_info` so that I could use the same name throughout my code. After that, I created three classes: `Book`, `DVD`, and `CD`. Each one has its own additional information. For example, a book has a genre, a DVD has a director, and a CD has an artist. I used `super` so that I would not have to write the initialization of the common attributes again in every class. I also made each class display its own information along with the common details.

Then, I created the `Library` class to store and manage the items. I added methods to add an item, remove an item, and display all the items in the library. I also created the `display_item` method because I wanted to call `display_info` for any item without having to check what type of item it was.

This is where I demonstrated polymorphism. Even though books, DVDs, and CDs have different information, I can call the same `display_info` method for all of them. Ruby automatically uses the correct version depending on the object. Inheritance is used because all three classes come from `LibraryItem` and share its common information. Encapsulation is used through `attr_reader`, which lets me read the attributes without providing a way to change them through setter methods. I also used method overriding because each class has its own version of `display_info`.

Finally, I created one book, one DVD, and one CD, displayed their information, and added them to the library. I then displayed all the items stored in the library.
