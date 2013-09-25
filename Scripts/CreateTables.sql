DROP TABLE photoTag;
DROP TABLE tag;
DROP TABLE photo;

CREATE TABLE tag (
	name				varchar(80) primary key --name of the tag
);

CREATE TABLE photo (
	id						bigint primary key,
    folderpath     varchar(1000), --folder path only
    filename        varchar(255), --file name and it's extension
	source				varchar(255), --source of file i.e. file server or HDD
    blurb				varchar(1000) --small description of photo
);

CREATE TABLE photoTag (
	photo				bigint references photo(id),
	tag					varchar(80) references tag(name)
);
