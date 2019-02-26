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
