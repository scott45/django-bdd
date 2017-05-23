Feature: System interaction
  As a standard user
  I want to login
  So i can see the homepage

Background: There are to-do's and users in the system
    Given there are a number of to-do's:
        |    Docker           |
        |    Django             |
        |    Testing            |
        |    Public Speaking    |
        |    DevOps             |
        |    PHP                |

    And there are many users, each with different interests:
        |    name           |   interests                  |
        |    scotty         |   Django, Testing, Docker    |
        |    david          |   Django, Public Speaking    |
        |    timothy        |   Testing, Devops            |
        |    onyango        |   Public Speaking, DevOps    |

Scenario Outline: Filter users
    Given I am a logged in user
    When I filter the list of users by <filter>
    Then I see <num> users

    Examples:
        |    filter             |    num    |
        |    Django             |    2      |
        |    Django, Testing    |    3      |
        |    PHP                |    0      |
