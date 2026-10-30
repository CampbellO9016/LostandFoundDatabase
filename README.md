#Lost and Found Database
The purpose of this database is to help return lost items to people, and to limit the amount of lost items that get thrown out or donated. 
This will help people find their belongings and get them returned in a structured manor.


###Use Cases
* As a student, I need to be able to fill out a form of the thing that I lost
* As an Admin, I need to review all of the lost item requests
* As an Admin, I need to be able to deny or accept a lost request
* As an Admin, I need to be able to contact the student to pick up their lost item
* As an Admin, I need to be able to sort by date
* AS an Admin, I need to be able to update items

###Business Rules
* Date requested cannot be before date lost (can be the same) 
* Progress is selected from not returned, pending return, returned 
* Every user is either a student or an admin
* Only admins can approve or deny lost requests



erDiagram
    items ||--|| found_items : "is identified as"

    lost_requests {
        varchar lostitem_id PK "UNIQUE"
        date date_requested
        varchar category
        varchar primary_color
        varchar brand
        date date_lost
    }

    items {
        integer item_id PK "UNIQUE"
        varchar category
        text description
        varchar brand
        varchar primary_color
    }

    found_items {
        integer item_id PK, FK "UNIQUE"
        integer place_found
        date date_found
        varchar progress "CHECK constraint"
    }
