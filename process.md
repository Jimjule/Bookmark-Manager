# Bookmark Manager


# Process


Now that the .all method returns bookmarks, it's time to make use of the pg gem and refactor .all to access the bookmark_manager database.

REFACTOR - The previous test won't work as the query I'm about to make will not return objects. Refactored test to simple return all bookmarks.

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
