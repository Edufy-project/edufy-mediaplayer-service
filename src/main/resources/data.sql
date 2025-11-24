insert into albums (title, release_date, cover_image_url)
values
    ('Flying Beagle', '1987-10-21',  'cover_images/flying_beagle.jpg'),
    ('Blood on the Tracks', '1975-01-20',  'cover_images/blood_on_the_tracks.jpg'),
    ('Welcome To The Rose Garden', '1995-05-21',  'cover_images/rose_garden.jpg'),
    ('Illmatic', '1994-04-19',  'cover_images/illmatic.jpg'),
    ('Vaudeville Villain', '2003-09-16',  'cover_images/villain.jpg');

--Music genres
insert into genres (name)
values
    ('Folkrock'),
    ('Jazz Fusion'),
    ('Hip-hop');
--Video/pod genres
insert into genres (name)
values
    ('Programming'),
    ('Music'),
    ('Climbing');

insert into artists (name, bio, image_url)
values
    ('Bob Dylan', 'This is the bio for Bob Dylan.', 'images/bob_dylan.jpg');


insert into music (title, release_date, stream_url, album_id, album_order, created_at, genre_id)
values
    ('Look Your Back!', '1987-10-21', 'music/flying_beagle1.mp3', 1, 1, '1987-10-21', 2),
    ('A Seagull and Clouds', '1987-10-21', 'music/flying_beagle2.mp3', 1, 2, '1987-10-21', 2),
    ('Flying Beagle', '1987-10-21', 'music/flying_beagle3.mp3', 1, 3, '1987-10-21', 2),
    ('Fluffy', '1987-10-21', 'music/flying_beagle4.mp3', 1, 4, '1987-10-21', 2),
    ('Sandstorm', '1987-10-21', 'music/flying_beagle5.mp3', 1, 5, '1987-10-21', 2),
    ('Baby Talk', '1987-10-21', 'music/flying_beagle6.mp3', 1, 6, '1987-10-21', 2),
    ('The Second Summer', '1987-10-21', 'music/flying_beagle7.mp3', 1, 7, '1987-10-21', 2),
    ('Ducky Ducky', '1987-10-21', 'music/flying_beagle8.mp3',1, 8, '1987-10-21', 2),

    ('Tangled Up in Blue', '1975-01-20', 'music/blood_tracks1.mp3',2, 1, '1974-12-30', 1),
    ('Simple Twist of Fate', '1975-01-20', 'music/blood_tracks2.mp3',2, 2, '1974-09-19', 1),
    ('You''re a Big Girl Now', '1975-01-20', 'music/blood_tracks3.mp3',2, 3, '1974-12-27', 1),
    ('Idiot Wind', '1975-01-20', 'music/blood_tracks4.mp3',2, 4, '1974-12-27', 1),
    ('You''re Gonna Make Me Lonesome When You Go', '1975-01-20', 'music/blood_tracks5.mp3',2, 5, '1974-09-17', 1),
    ('Meet Me in the Morning', '1975-01-20', 'music/blood_tracks6.mp3',2, 6, '1974-09-16', 1),
    ('Lily, Rosemary and the Jack of Hearts', '1975-01-20', 'music/blood_tracks7.mp3',2, 7, '1974-12-30', 1),
    ('If You See Her, Say Hello', '1975-01-20', 'music/blood_tracks8.mp3',2, 8, '1974-12-30', 1),
    ('Shelter from the Storm', '1975-01-20', 'music/blood_tracks9.mp3',2, 9, '1974-09-17', 1),
    ('Buckets of Rain', '1975-01-20', 'music/blood_tracks10.mp3',2, 10, '1974-09-19', 1),

    ('Triumph', '1995-05-21', 'music/rose_garden1.mp3',3, 1, '1995-05-21', 2),
    ('Crown And Roses', '1995-05-21', 'music/rose_garden2.mp3', 3, 2, '1995-05-21', 2),
    ('History', '1995-05-21', 'music/rose_garden3.mp3', 3, 3, '1995-05-21', 2),
    ('Sunnyside Cruise', '1995-05-21', 'music/rose_garden4.mp3', 3, 4, '1995-05-21', 2),
    ('Splash!', '1995-05-21', 'music/rose_garden5.mp3', 3, 5, '1995-05-21', 2),
    ('Landscape', '1995-05-21', 'music/rose_garden6.mp3', 3, 6, '1995-05-21', 2),
    ('41, Parthenia Rd.', '1995-05-21', 'music/rose_garden7.mp3', 3, 7, '1995-05-21', 2),
    ('The Autumn Of ''75', '1995-05-21', 'music/rose_garden8.mp3', 3, 8, '1995-05-21', 2),
    ('Prime Time', '1995-05-21', 'music/rose_garden9.mp3', 3, 9, '1995-05-21', 2),

    ('The Genesis', '1994-04-19', 'music/illmatic1.mp3', 4, 1, '1994-04-19', 3),
    ('N.Y. State of Mind', '1994-04-19', 'music/illmatic2.mp3', 4, 2, '1994-04-19', 3),
    ('Life''s a Bitch (ft. AZ)', '1994-04-19', 'music/illmatic3.mp3', 4, 3, '1994-04-19', 3),
    ('The World Is Yours', '1994-04-19', 'music/illmatic4.mp3', 4, 4, '1994-04-19', 3),
    ('Halftime', '1994-04-19', 'music/illmatic5.mp3', 4, 5, '1994-04-19', 3),
    ('Memory Lane (Sittin'' in da Park)', '1994-04-19', 'music/illmatic6.mp3', 4, 6, '1994-04-19', 3),
    ('One Love', '1994-04-19', 'music/illmatic7.mp3', 4, 7, '1994-04-19', 3),
    ('One Time 4 Your Mind', '1994-04-19', 'music/illmatic8.mp3', 4, 8, '1994-04-19', 3),
    ('Represent', '1994-04-19', 'music/illmatic9.mp3', 4, 9, '1994-04-19', 3),
    ('It Ain''t Hard to Tell', '1994-04-19', 'music/illmatic10.mp3', 4, 10, '1994-04-19', 3),

    ('Overture', '2003-09-16', 'music/villain1.mp3', 5, 1, '2003-09-16', 3),
    ('Vaudeville Villain', '2003-09-16', 'music/villain2.mp3', 5, 2, '2003-09-16', 3),
    ('Lickupon', '2003-09-16', 'music/villain3.mp3', 5, 3, '2003-09-16', 3),
    ('The Drop', '2003-09-16', 'music/villain4.mp3', 5, 4, '2003-09-16', 3),
    ('Lactose and Lecithin', '2003-09-16', 'music/villain5.mp3', 5, 5, '2003-09-16', 3),
    ('A Dead Mouse', '2003-09-16', 'music/villain6.mp3', 5, 6, '2003-09-16', 3),
    ('Open Mic Nite, Pt. 1 (ft. Lord Sear, Brother Sambuca, Dr. Moreau and Louis Logic)', '2003-09-16', 'music/villain7.mp3', 5, 7, '2003-09-16', 3),
    ('RaeDawn', '2003-09-16', 'music/villain8.mp3', 5, 8, '2003-09-16', 3),
    ('Let Me Watch (ft. Apani B)', '2003-09-16', 'music/villain9.mp3', 5, 9, '2003-09-16', 3),
    ('Saliva', '2003-09-16', 'music/villain10.mp3', 5, 10, '2003-09-16', 3),
    ('Modern Day Mugging', '2003-09-16', 'music/villain11.mp3', 5, 11, '2003-09-16', 3),
    ('Open Mic Nite, Pt. 2 (ft. Lord Sear, AJ Ready Wright and Creature)', '2003-09-16', 'music/villain12.mp3', 5, 12, '2003-09-16', 3),
    ('Never Dead (ft. M. Sayyid)', '2003-09-16', 'music/villain13.mp3', 5, 13, '2003-09-16', 3),
    ('PopSnot', '2003-09-16', 'music/villain14.mp3', 5, 14, '2003-09-16', 3),
    ('Mr. Clean', '2003-09-16', 'music/villain15.mp3', 5, 15, '2003-09-16', 3),
    ('G.M.C.', '2003-09-16', 'music/villain16.mp3', 5, 16, '2003-09-16', 3),
    ('Untitled A.K.A. Change the Beat', '2003-09-16', 'music/villain17.mp3', 5, 17, '2003-09-16', 3);

insert into pods (title, release_date, stream_url, album_id, album_order, created_at, genre_id)
values
    ('Is front-end even real programming?', '2025-01-01', 'pod/theprimeagen', null, null, '2025-01-01', 4),
    ('Why we actually need more JS frameworks in 2025', '2025-01-10', 'pod/trashdev', null, null, '2025-01-10', 4),
    ('Why Jesus probably wrote his backend in Rust', '2024-12-24', 'pod/theprimeagen', null, null, '2024-12-24', 4),
    ('Neo-VIM would beat InteliJ in a foot race', '2022-09-11', 'pod/teej', null, null, '2022-09-11', 4),
    ('GUIs are for the WEAK!', '2019-12-12', 'pod/trashdev', null, null, '2022-12-12', 4),
    ('Is Virginia Wolf afraid of boiler plate?', '2014-03-14', 'pod/userman', null, null, '2014-03-14', 4),
    ('Why would we need auth? we run noDB', '2024-11-11', 'pod/trashdev', null, null, '2024-11-11', 4),
    ('Linus might deserve a Nobel peace price...', '2025-11-20', 'pod/teej', null, null, '2025-11-20', 4),
    ('Version control belongs in the terminal', '2025-12-20', 'pod/teej', null, null, '2025-12-20', 4),
    ('OOP is an eternal void of abstraction', '2025-02-10', 'pod/teej', null, null, '2025-02-10', 4),
    ('The version is under control... We push on save', '2020-01-10', 'pod/trashdev', null, null, '2020-01-10', 4),
    ('UI only becomes relevant as you start having users', '2021-01-01', 'pod/trashdev', null, null, '2021-01-01', 4),
    ('UI never becomes relevant if you only release for Linux', '2023-01-01', 'pod/trashdev', null, null, '2023-01-01', 4),
    ('I will start writing documentation once my team learns how to read code', '2025-12-12', 'pod/theprimeagen', null, null, '2025-12-12', 4),
    ('Do I have an optimization issue or do you simply have a weak CPU issue?', '2025-03-03', 'pod/trashdev', null, null, '2025-03-03', 4),
    ('How to refractor Doom off the company microwave', '2025-11-11', 'pod/trashdev', null, null, '2025-11-11', 4),
    ('How to refractor the face of the guy who put Doom on the company microwave', '2025-11-12', 'pod/trashdev', null, null, '2025-11-12', 4),

    ('Delay post Reverb is a war crime', '2025-12-12', 'pod/anders', null, null, '2025-12-12', 5),
    ('No VST can save poor production skills', '2025-02-03', 'pod/anders', null, null, '2025-10-02', 5),
    ('The L in FL Studio symbolises its users music', '2020-10-01', 'pod/strudel', null, null, '2020-10-01', 5),
    ('Is KK.Slider Jimmie Hendrix reincarnated?', '2021-10-01', 'pod/strudel', null, null, '2021-10-01', 5),
    ('Use a DE-esser on vocals or DE-lete your DAW', '2021-10-01', 'pod/strudel', null, null, '2021-10-01', 5),
    ('Ableton has a student discount...... just saying', '2025-09-11', 'pod/memoria', null, null, '2025-09-11', 5),
    ('FL Studio does not have a student discount...... just saying', '2025-09-11', 'pod/memoria', null, null, '2025-09-11', 5),
    ('Delete FL Studio..... just saying', '2025-09-11', 'pod/memoria', null, null, '2025-09-11', 5),
    ('Learn about compression based side chain!', '2023-03-03', 'pod/anders', null, null, '2023-03-03', 5);

insert into videos (title, release_date, stream_url, album_id, album_order, created_at, genre_id)
values
    ('Overcoming the Dawn Wall', '2022-07-09', 'video/magnusmitbo', null, null, '2022-07-09', 6),
    ('Drone 2.0 is a trick on humanity', '2024-12-03', 'video/magnusmitbo', null, null, '2024-12-03', 6),
    ('Baking a cake with Mag dust instead of sugar', '2025-07-15', 'video/magnusmitbo', null, null, '2025-07-15', 6),
    ('Are Kilter grades meant to hurt your feelings?', '2025-07-17', 'video/sebastian', null, null, '2025-07-17', 6),
    ('Lead climbing Point Blanc with a 3-meter rope', '2012-12-12', 'video/sebastian', null, null, '2012-12-12', 6),

    ('How to roll your own Oauth in 2025', '2025-09-09', 'video/theprimagen', null, null, '2025-09-09', 4),
    ('DO NOT UPLOAD THE API KEY TO GITHUB!', '2025-11-14', 'video/theprimagen', null, null, '2025-11-14', 4),
    ('If HTML is a language ill just learn French instead', '2025-07-03', 'video/trashdev', null, null, '2025-07-03', 4),
    ('Development being done on IOS is devlopment in the wrong direction', '2025-04-14', 'video/userman', null, null, '2025-04-14', 4),
    ('Is vibe coding for 0.5X devs?', '2025-02-20', 'video/teej', null, null, '2025-02-20', 4),
    ('How to exit Neo VIM, Part #1', '2025-05-01', 'video/teej', null, null, '2025-05-01', 4),
    ('How to exit Neo VIM, Part #2', '2025-05-02', 'video/teej', null, null, '2025-05-02', 4),
    ('How to exit Neo VIM, Part #3 (final part)', '2025-05-03', 'video/teej', null, null, '2025-05-03', 4),
    ('Arch Linux  install tutorial', '2025-06-06', 'video/userman', null, null, '2025-06-06', 4),
    ('Welcome to the Rice Fields (Arch Linux)', '2025-06-08', 'video/userman', null, null, '2025-06-08', 4),
    ('I dont refractor, I rewrite to Rust', '2023-03-03', 'video/memoria', null, null, '2023-03-03', 4),
    ('I ported Doom to my girlfriends diabetes monitor', '2023-03-03', 'video/memoria', null, null, '2023-03-03', 4),
    ('How to download Temple OS on your Nintendo Switch', '2025-11-12', 'video/memoria', null, null, '2025-11-12', 4),
    ('Xcode is cool in the same way falling from the third floor is cool', '2025-03-12', 'video/memoria', null, null, '2025-03-12', 4),
    ('How to center a div in html', '2001-03-12', 'video/brogramer', null, null, '2001-03-12', 4),
    ('VS Code is for interns, real devs work in Notepad', '2002-03-12', 'video/brogramer', null, null, '2002-03-12', 4),
    ('My SQL? we store data in Excel', '2003-03-12', 'video/brogramer', null, null, '2003-03-12', 4),
    ('No clean code is written on a 2004 ThinkPad at 2 am, but the solution we require is.', '2004-03-12', 'video/brogramer', null, null, '2004-03-12', 4),
    ('I build software like I build houses... With a back door', '2005-03-12', 'video/brogramer', null, null, '2005-03-12', 4),
    ('Why scale, when you can just drop inactive users from the DB - (my life as an insurance banking dev)', '2025-12-12', 'video/memoria', null, null, '2025-12-12', 4);

/*insert into music_artists (music_id, artist_id)
values
    (1, 1);*/