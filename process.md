# Bookmark Manager


# Process


Now that the .all method returns bookmarks, it's time to make use of the pg gem and refactor .all to access the bookmark_manager database.

REFACTOR - The previous test won't work as the query I'm about to make will not return objects. Refactored test to simply return all bookmarks.

Works as intended.

RED - Removed current .all method to check that tests work currently, they do.

(Expected nil, got 3 bookmark objects)

RED - In .all method, connected to database and saved results to 'marks' variable.

(Expected database object, got 3 bookmark objects)

RED - Saved selection of all from bookmark table to 'all_bookmarks'

(Similar error)

GREEN - .all method returns mapped selection

PASSED ALL TESTS, 100% COVERAGE


REFACTOR - Controller now takes data from app.rb instead of having a hard-coded list, and bookmarks view prints a list from bookmarks.all

PASSED ALL TESTS, 100% COVERAGE


Set up a test database to be referenced during test cases instead of the production database.

REFACTOR - Made two methods into a single load_test_database method.

Set up a test environment variable so that the spec references the test database.

REFACTOR - Moved bookmark functionality to index view.

TEST - Added feature test expecting user to fill in a form with a url, and then submit the form and see the updated page with the url in the database.

RED - See above

(No url field)

RED - Added url field

(No button to click)

RED - Added button

(Expected page to include new url)

GREEN - Added loop to controller that adds the submitted url to the appropriate database.

PASSED ALL TESTS, 100% COVERAGE

REFACTOR - Moved loop to new class .create method to keep controller skinny and to separate concerns


Step 11 - Modified databases to include title column

Modified add bookmark feature test to fill in a title field and expect to see it

RED - See above

(Unable to find field title)

RED - Added title field

(Expected to see title)

GREEN - Updated .create class method to add title to database, prints database as hash

PASSED ALL TESTS, 100% COVERAGE


Now I can see the url and the title, but I only want to show the title in the hash.

TEST - Updated feature test to expect a link with href value of url.

RED - See above

(Expected to find link)

RED - Updated bookmarks erb to show a href using the hash values

(Test looking for urls in content)

RED - Updated tests to expect a href with a url and title

(Could not find title)

GREEN - Debugged method to insert url and title together, instead of separately with missing values.

PASSED ALL TESTS, 100% COVERAGE


Step 12 - Implement deleting bookmarks

TEST - Created feature test, expecting the user to be able to delete an existing bookmark

RED - See above

(Unable to find select box)

RED - Created dropdown form and delete button

(Expected not to find link, but it did)

RED - Added Bookmark.delete method to view

(Expected to find a different link, but running non-existent method breaks the page)


Before addressing this error, it is worth considering how existing bookmarks will be deleted, and since the most pragmatic method involves referencing the id in the database, it will be necessary to pass more information to the view, so a hash is impractical.

REFACTOR - Changed hash to array, .all now pushes object instances to view instead of hash

DEBUG - Many tests expecting hashes changed to work with arrays and new id parameter

(Expected to find a different link, but running non-existent method breaks the page)

RED - Defined the .delete method

(Expected to find Google with href)

GREEN - Debugged the .delete method using p to get visibility

PASSED ALL TESTS, 100% COVERAGE
Works as intended.
