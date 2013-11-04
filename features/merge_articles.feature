Feature: Merge Two Articles
	As an admin
	In order to combine the content of two articles
	I want to use merge
	
	Background:
		Given the blog is set up

	Scenario: A non-admin cannot merge two articles
		Given I am logged in as publisher
		Then the edit article page for "article 1" should not contain merge form

	Scenario: When articles are merged, the merged article should contain the text of both previous articles
		Given I am logged in as admin
		When I merge "article 1" and "article 2"
		Then I should see "Merge was successful."
		Then I should see content of "article 1" and "article 2"
	
	Scenario: 3- merge article author
		Given I have merged two articles
		When I view the merged article
		Then I should see one author for article
		Then I should see either one of authors
	
	Scenario: 4- carying comments to merge article
		Given I have comments on "article 1" and "article 2"
		When I have merge "article 1" and "article 2"
		And I view the merged article
		Then I should see comments from both articles
	
	Scenario: 5- merge article title
		Given I have merged two articles
		When I view the merged article
		Then I should see the same title as either articles
		