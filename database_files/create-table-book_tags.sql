/*write the SQL CREATE statement for your BOOK_TAGS table.
You can either write the script manually and execute it through
pgAdmin or you can create the table by using pgAdmin's wizard.
Afterwards, insert one row of dummy data that adds a tag to the
sample book in the BOOKS table. */
drop table if exists BOOK_TAGS;
create table BOOK_TAGS (
	isbn_13 varchar(13) not null check (isbn_13 ~ '[0-9]{13}'),
	tag_name varchar(255) not null,
	primary key (isbn_13, tag_name),
	foreign key (isbn_13) references BOOKS (isbn_13)
);
insert into BOOKS (isbn_13) values (1234567890123);