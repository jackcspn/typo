Feature: Using Categories
    As an author
    In order to magange my articles
    I want to have some categories

    Background:
        Given the blog is set up
        And I am logged into the admin panel

    Scenario: Successfully create categories
        Given I am on the new categories page
        When I fill in "category_name" with "Foo"
        And I fill in "category_keywords" with "Bar"
        And I fill in "category_permalink" with "MyLink"
        And I fill in "category_description" with "MyDescription"
        And I press "Save"
        Then I should see "Foo"
        Then I should see "Bar"
        Then I should see "MyLink"
        Then I should see "MyDescription"
        Then I should see "Category was successfully saved."
    
    Scenario: Successfully edit categories
        Given the following categories exist:
            |name        | keywords  | permalink   | description     |
            |acdemic     | study     | 123  | learning blogs  |
        And I am on the new categories page
        Then I follow "acdemic"
        When I fill in "category_name" with "entertaiment"
        And I fill in "category_keywords" with "fun"
        And I fill in "category_permalink" with "456"
        And I fill in "category_description" with "leisure blogs"
        And I press "Save"
        Then I should see "entertaiment"
        Then I should see "fun"
        Then I should see "456"
        Then I should see "leisure blogs"
        Then I should not see "acdemic"
        Then I should not see "study"
        Then I should not see "123"
        Then I should not see "learning blogs"
        Then I should see "Category was successfully saved."

