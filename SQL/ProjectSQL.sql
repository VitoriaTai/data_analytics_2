CREATE TABLE VideoTrack (
	ID serial primary key,
	title_video varchar(255),
	length_minutes varchar(255),
	url varchar(255)
);
select*from VideoTrack;

insert into VideoTrack(title_video, length_minutes, url) 
		values('Step Forward - CHILLOBEY', '1:36', 'https://soundcloud.com/rsvcomethru/step-forward');
insert into VideoTrack(title_video, length_minutes, url) 
		values('Obey Me - CHILLOBEY', '2:27', 'https://soundcloud.com/rsvcomethru/plz-dwat');
insert into VideoTrack(title_video, length_minutes, url) 
		values('Gaze - CHILLOBEY', '3:37', 'https://soundcloud.com/rsvcomethru/paintbottlecap');

CREATE TABLE Reviewers(
	ID serial primary key,
	user_name varchar(355),
	rating varchar(355),
	short_text varchar(355)
);

select*from Reviewers;

insert into Reviewers(user_name, rating, short_text)
		values('Ben', '5', 'Great Artist!');
insert into Reviewers(user_name, rating, short_text)
		values('Maxx', '3', 'Its good');

select*from VideoTrack inner join Reviewers on VideoTrack.id = Reviewers.id;


