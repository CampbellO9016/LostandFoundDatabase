drop table if exists lost_requests;
drop table if exists found_items;
drop table if exists items;

create table lost_requests (
    lostitem_id  varchar(255) not null primary key unique,
    date_requested date not null,
    category varchar(255) ,
    primary varchar(100),
    brand varchar(100),
    date_lost date
);

create table found_items (
    item_id   integer not null unique foreign key,
    place_found  integer not null ,
    date_found   date not null default current_date,
    progress  not null check (lower(progress) in ('not returned', 'pending return','returned')),
);

create table items (
    item_id   integer not null unique primary key,
    category varchar(255) not null,
    description text not null,
    brand varchar(100),
    primary color varchar(100)
);

