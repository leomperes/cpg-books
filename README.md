# CPG - Books

[![Maintainability](https://api.codeclimate.com/v1/badges/f7e10d0e67f3a34506fb/maintainability)](https://codeclimate.com/github/leomperes/cpg-books/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/f7e10d0e67f3a34506fb/test_coverage)](https://codeclimate.com/github/leomperes/cpg-books/test_coverage)

## Introduction

You will write a brief application to handle data entry and reporting for book
products. Write as lean an implementation as possible that covers the requirements
defined below.

Please use Rails **5.1** or **5.2** and whichever gems you feel are appropriate. The _CSS
framework_ must be **Foundation**.

The site does not have to be aesthetically advanced, but your code should be. We are
looking for elegant solutions to the problems introduced, and code that conforms to
best practices and standards guidelines. Use any appropriate gems that aid code
quality.

Use **Rspec** and **Capybara** for testing. Please aim to have greater than _**50% code
coverage**_.

## Data Model

The following information needs to be stored about books, formats and authors. You
are free to determine the most appropriate method of modeling data. Please seed
formats with 3 entries and authors with 5 entries.

+   **Books**
    +   Title
    +   Release date
    +   Base price
+   **Formats**
    +   Name
+   **Authors**
    +   First Name
    +   Last Name

### Table associations

+   A book has exactly 1 format

+   A book has 1 or more authors

+   A format may be used by many books

+   Authors may write many books

### Business Rules

+   A book must have a title and release date. If the release date is within
    2 months it must have a base price.

+   Author names are unique.

+   Formats are unique and must be one of `hardcover`, `softcover`, or `digital`.

## Application

Create a page that lists all books and their titles. The title should link to a book
product detail page. There should be a link to create a new book. There should be a
link to the report page.

Create a page that shows book product details. All fields relevant to a book should
be displayed. There should be a link to return to the book list page and a link to edit
the current book. The author names should be concatenated into a single field.

Create a page where all details for a book may be created or edited, along with
choosing an existing format and one or more existing authors. You should determine
the most appropriate method of organizing the UI.

Create a report page which lists all hardcover books released in 2018. Include title
and release date fields, and to the book product detail page.

## JSON Access

In addition to to html, provide JSON responses to Books index, Books create and
books show.

The following fields should be returned:

+   **`BooksController#index`**
    +   Id
    +   Title (concatenate to 20 characters max, drop ‘The”, or “A” if it is the first word of a title)
    +   Release date (format YYYY)
    +   Base price
    +   Author Name (concatenate first and last name with a space between)
+   **`BooksController#show`**
    +   Id
    +   Title
    +   Release date (format MM-DD-YYYY)
    +   Base price
    +   Currency name
    +   Author First Name
    +   Author Last Name
    +   Format Name
+   **`BooksController#create`**
    +   Allow the following fields to be set through a json post:
        +   Id
        +   Title
        +   Release date
        +   Base price
        +   Author_id

Turn on a **protect_from_forgery** filter for html posts, but leave it off for json posts.


# Results

1.  For JSON calls, you can test running the HTTP requests in `./docs/api/books-api.http`.
2.  Run `rails test` for code coverage and see the report in `./coverage/index.html`.


[![Analytics](https://ga-beacon.appspot.com/UA-25165099-7/cpg-books/README.md?flat)](https://github.com/leomperes/cpg-books "CPG - Books")
