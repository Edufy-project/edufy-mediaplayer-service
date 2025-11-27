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

--Artists
insert into artists (name, bio, image_url)
values
    ('Bob Dylan', 'This is the bio for Bob Dylan.', 'images/bob_dylan.jpg'),
    ('Himiko Kikuchi', 'This is the bio for Himiko Kikuchi.', 'images/himiko_kikuchi.jpg'),
    ('T-SQUARE', 'This is the bio for T-SQUARE.', 'images/t_square.jpg'),
    ('Nas', 'This is the bio for Nas.', 'images/nas.jpg'),
    ('MF DOOM', 'This is the bio for MF DOOM.', 'images/MF_DOOM.jpg');
--Creators
insert into artists (name, bio, image_url)
values
    ('ThePrimeagen', 'This is the bio for ThePrimeagen.', 'images/theprimeagen.jpg'),
    ('Teej', 'This is the bio for Teej.', 'images/teej.jpg'),
    ('trashdev', 'This is the bio for trashdev.', 'images/trashdev.jpg'),
    ('userman', 'This is the bio for userman.', 'images/userman.jpg'),
    ('Magnus Mitbo', 'This is the bio for Magnus Mitbo.', 'images/magnus_mitbo.jpg'),
    ('Sebastian', 'This is the bio for Sebastian.', 'images/sebastian.jpg'),
    ('Anders', 'This is the bio for Anders.', 'images/anders.jpg'),
    ('Strudel', 'This is the bio for Strudel.', 'images/strudel.jpg'),
    ('Memoria', 'This is the bio for Memoria.', 'images/memoria.jpg'),
    ('Brogrammer', 'This is the bio for Brogrammer.', 'images/brogrammer.jpg');


insert into music (title, release_date, stream_url, album_id, album_order, created_at, genre_id, artist_id, play_count)
values
    ('Look Your Back!', '1987-10-21', 'music/flying_beagle1.mp3', 1, 1, '1987-10-21', 2, 2, 150),
    ('A Seagull and Clouds', '1987-10-21', 'music/flying_beagle2.mp3', 1, 2, '1987-10-21', 2, 2, 120),
    ('Flying Beagle', '1987-10-21', 'music/flying_beagle3.mp3', 1, 3, '1987-10-21', 2, 2, 200),
    ('Fluffy', '1987-10-21', 'music/flying_beagle4.mp3', 1, 4, '1987-10-21', 2, 2, 90),
    ('Sandstorm', '1987-10-21', 'music/flying_beagle5.mp3', 1, 5, '1987-10-21', 2, 2, 180),
    ('Baby Talk', '1987-10-21', 'music/flying_beagle6.mp3', 1, 6, '1987-10-21', 2, 2, 75),
    ('The Second Summer', '1987-10-21', 'music/flying_beagle7.mp3', 1, 7, '1987-10-21', 2, 2, 160),
    ('Ducky Ducky', '1987-10-21', 'music/flying_beagle8.mp3',1, 8, '1987-10-21', 2, 2, 110),

    ('Tangled Up in Blue', '1975-01-20', 'music/blood_tracks1.mp3',2, 1, '1974-12-30', 1, 1, 300),
    ('Simple Twist of Fate', '1975-01-20', 'music/blood_tracks2.mp3',2, 2, '1974-09-19', 1, 1, 250),
    ('You''re a Big Girl Now', '1975-01-20', 'music/blood_tracks3.mp3',2, 3, '1974-12-27', 1, 1, 180),
    ('Idiot Wind', '1975-01-20', 'music/blood_tracks4.mp3',2, 4, '1974-12-27', 1, 1, 220),
    ('You''re Gonna Make Me Lonesome When You Go', '1975-01-20', 'music/blood_tracks5.mp3',2, 5, '1974-09-17', 1, 1, 190),
    ('Meet Me in the Morning', '1975-01-20', 'music/blood_tracks6.mp3',2, 6, '1974-09-16', 1, 1, 140),
    ('Lily, Rosemary and the Jack of Hearts', '1975-01-20', 'music/blood_tracks7.mp3',2, 7, '1974-12-30', 1, 1, 270),
    ('If You See Her, Say Hello', '1975-01-20', 'music/blood_tracks8.mp3',2, 8, '1974-12-30', 1, 1, 210),
    ('Shelter from the Storm', '1975-01-20', 'music/blood_tracks9.mp3',2, 9, '1974-09-17', 1, 1, 320),
    ('Buckets of Rain', '1975-01-20', 'music/blood_tracks10.mp3',2, 10, '1974-09-19', 1, 1, 170),

    ('Triumph', '1995-05-21', 'music/rose_garden1.mp3',3, 1, '1995-05-21', 2, 3, 130),
    ('Crown And Roses', '1995-05-21', 'music/rose_garden2.mp3', 3, 2, '1995-05-21', 2, 3, 110),
    ('History', '1995-05-21', 'music/rose_garden3.mp3', 3, 3, '1995-05-21', 2, 3, 95),
    ('Sunnyside Cruise', '1995-05-21', 'music/rose_garden4.mp3', 3, 4, '1995-05-21', 2, 3, 145),
    ('Splash!', '1995-05-21', 'music/rose_garden5.mp3', 3, 5, '1995-05-21', 2, 3, 125),
    ('Landscape', '1995-05-21', 'music/rose_garden6.mp3', 3, 6, '1995-05-21', 2, 3, 100),
    ('41, Parthenia Rd.', '1995-05-21', 'music/rose_garden7.mp3', 3, 7, '1995-05-21', 2, 3, 115),
    ('The Autumn Of ''75', '1995-05-21', 'music/rose_garden8.mp3', 3, 8, '1995-05-21', 2, 3, 135),
    ('Prime Time', '1995-05-21', 'music/rose_garden9.mp3', 3, 9, '1995-05-21', 2, 3, 120),

    ('The Genesis', '1994-04-19', 'music/illmatic1.mp3', 4, 1, '1994-04-19', 3, 4, 80),
    ('N.Y. State of Mind', '1994-04-19', 'music/illmatic2.mp3', 4, 2, '1994-04-19', 3, 4, 280),
    ('Life''s a Bitch (ft. AZ)', '1994-04-19', 'music/illmatic3.mp3', 4, 3, '1994-04-19', 3, 4, 240),
    ('The World Is Yours', '1994-04-19', 'music/illmatic4.mp3', 4, 4, '1994-04-19', 3, 4, 310),
    ('Halftime', '1994-04-19', 'music/illmatic5.mp3', 4, 5, '1994-04-19', 3, 4, 190),
    ('Memory Lane (Sittin'' in da Park)', '1994-04-19', 'music/illmatic6.mp3', 4, 6, '1994-04-19', 3, 4, 260),
    ('One Love', '1994-04-19', 'music/illmatic7.mp3', 4, 7, '1994-04-19', 3, 4, 230),
    ('One Time 4 Your Mind', '1994-04-19', 'music/illmatic8.mp3', 4, 8, '1994-04-19', 3, 4, 150),
    ('Represent', '1994-04-19', 'music/illmatic9.mp3', 4, 9, '1994-04-19', 3, 4, 270),
    ('It Ain''t Hard to Tell', '1994-04-19', 'music/illmatic10.mp3', 4, 10, '1994-04-19', 3, 4, 290),

    ('Overture', '2003-09-16', 'music/villain1.mp3', 5, 1, '2003-09-16', 3, 5, 70),
    ('Vaudeville Villain', '2003-09-16', 'music/villain2.mp3', 5, 2, '2003-09-16', 3, 5, 180),
    ('Lickupon', '2003-09-16', 'music/villain3.mp3', 5, 3, '2003-09-16', 3, 5, 140),
    ('The Drop', '2003-09-16', 'music/villain4.mp3', 5, 4, '2003-09-16', 3, 5, 160),
    ('Lactose and Lecithin', '2003-09-16', 'music/villain5.mp3', 5, 5, '2003-09-16', 3, 5, 120),
    ('A Dead Mouse', '2003-09-16', 'music/villain6.mp3', 5, 6, '2003-09-16', 3, 5, 100),
    ('Open Mic Nite, Pt. 1 (ft. Lord Sear, Brother Sambuca, Dr. Moreau and Louis Logic)', '2003-09-16', 'music/villain7.mp3', 5, 7, '2003-09-16', 3, 5, 130),
    ('RaeDawn', '2003-09-16', 'music/villain8.mp3', 5, 8, '2003-09-16', 3, 5, 110),
    ('Let Me Watch (ft. Apani B)', '2003-09-16', 'music/villain9.mp3', 5, 9, '2003-09-16', 3, 5, 190),
    ('Saliva', '2003-09-16', 'music/villain10.mp3', 5, 10, '2003-09-16', 3, 5, 150),
    ('Modern Day Mugging', '2003-09-16', 'music/villain11.mp3', 5, 11, '2003-09-16', 3, 5, 170),
    ('Open Mic Nite, Pt. 2 (ft. Lord Sear, AJ Ready Wright and Creature)', '2003-09-16', 'music/villain12.mp3', 5, 12, '2003-09-16', 3, 5, 125),
    ('Never Dead (ft. M. Sayyid)', '2003-09-16', 'music/villain13.mp3', 5, 13, '2003-09-16', 3, 5, 135),
    ('PopSnot', '2003-09-16', 'music/villain14.mp3', 5, 14, '2003-09-16', 3, 5, 115),
    ('Mr. Clean', '2003-09-16', 'music/villain15.mp3', 5, 15, '2003-09-16', 3, 5, 165),
    ('G.M.C.', '2003-09-16', 'music/villain16.mp3', 5, 16, '2003-09-16', 3, 5, 145),
    ('Untitled A.K.A. Change the Beat', '2003-09-16', 'music/villain17.mp3', 5, 17, '2003-09-16', 3, 5, 155);

insert into pods (title, release_date, stream_url, album_id, album_order, created_at, genre_id, artist_id)
values
    ('Is front-end even real programming?', '2025-01-01', 'pod/theprimeagen', null, null, '2025-01-01', 4, 6),
    ('Why we actually need more JS frameworks in 2025', '2025-01-10', 'pod/trashdev', null, null, '2025-01-10', 4, 8),
    ('Why Jesus probably wrote his backend in Rust', '2024-12-24', 'pod/theprimeagen', null, null, '2024-12-24', 4, 6),
    ('Neo-VIM would beat InteliJ in a foot race', '2022-09-11', 'pod/teej', null, null, '2022-09-11', 4, 7),
    ('GUIs are for the WEAK!', '2019-12-12', 'pod/trashdev', null, null, '2022-12-12', 4, 8),
    ('Is Virginia Wolf afraid of boiler plate?', '2014-03-14', 'pod/userman', null, null, '2014-03-14', 4, 9),
    ('Why would we need auth? we run noDB', '2024-11-11', 'pod/trashdev', null, null, '2024-11-11', 4, 8),
    ('Linus might deserve a Nobel peace price...', '2025-11-20', 'pod/teej', null, null, '2025-11-20', 4, 7),
    ('Version control belongs in the terminal', '2025-12-20', 'pod/teej', null, null, '2025-12-20', 4, 7),
    ('OOP is an eternal void of abstraction', '2025-02-10', 'pod/teej', null, null, '2025-02-10', 4, 7),
    ('The version is under control... We push on save', '2020-01-10', 'pod/trashdev', null, null, '2020-01-10', 4, 8),
    ('UI only becomes relevant as you start having users', '2021-01-01', 'pod/trashdev', null, null, '2021-01-01', 4, 8),
    ('UI never becomes relevant if you only release for Linux', '2023-01-01', 'pod/trashdev', null, null, '2023-01-01', 4, 8),
    ('I will start writing documentation once my team learns how to read code', '2025-12-12', 'pod/theprimeagen', null, null, '2025-12-12', 4, 6),
    ('Do I have an optimization issue or do you simply have a weak CPU issue?', '2025-03-03', 'pod/trashdev', null, null, '2025-03-03', 4, 8),
    ('How to refractor Doom off the company microwave', '2025-11-11', 'pod/trashdev', null, null, '2025-11-11', 4, 8),
    ('How to refractor the face of the guy who put Doom on the company microwave', '2025-11-12', 'pod/trashdev', null, null, '2025-11-12', 4, 8),
    ('Delay post Reverb is a war crime', '2025-12-12', 'pod/anders', null, null, '2025-12-12', 5, 12),
    ('No VST can save poor production skills', '2025-02-03', 'pod/anders', null, null, '2025-10-02', 5, 12),
    ('The L in FL Studio symbolises its users music', '2020-10-01', 'pod/strudel', null, null, '2020-10-01', 5, 13),
    ('Is KK.Slider Jimmie Hendrix reincarnated?', '2021-10-01', 'pod/strudel', null, null, '2021-10-01', 5, 13),
    ('Use a DE-esser on vocals or DE-lete your DAW', '2021-10-01', 'pod/strudel', null, null, '2021-10-01', 5, 13),
    ('Ableton has a student discount...... just saying', '2025-09-11', 'pod/memoria', null, null, '2025-09-11', 5, 14),
    ('FL Studio does not have a student discount...... just saying', '2025-09-11', 'pod/memoria', null, null, '2025-09-11', 5, 14),
    ('Delete FL Studio..... just saying', '2025-09-11', 'pod/memoria', null, null, '2025-09-11', 5, 14),
    ('Learn about compression based side chain!', '2023-03-03', 'pod/anders', null, null, '2023-03-03', 5, 12);

insert into videos (title, release_date, stream_url, album_id, album_order, created_at, genre_id, artist_id)
values
    ('Overcoming the Dawn Wall', '2022-07-09', 'video/magnusmitbo', null, null, '2022-07-09', 6, 10),
    ('Drone 2.0 is a trick on humanity', '2024-12-03', 'video/magnusmitbo', null, null, '2024-12-03', 6, 10),
    ('Baking a cake with Mag dust instead of sugar', '2025-07-15', 'video/magnusmitbo', null, null, '2025-07-15', 6, 10),
    ('Are Kilter grades meant to hurt your feelings?', '2025-07-17', 'video/sebastian', null, null, '2025-07-17', 6, 11),
    ('Lead climbing Point Blanc with a 3-meter rope', '2012-12-12', 'video/sebastian', null, null, '2012-12-12', 6, 11),
    ('How to roll your own Oauth in 2025', '2025-09-09', 'video/theprimagen', null, null, '2025-09-09', 4, 6),
    ('DO NOT UPLOAD THE API KEY TO GITHUB!', '2025-11-14', 'video/theprimagen', null, null, '2025-11-14', 4, 6),
    ('If HTML is a language ill just learn French instead', '2025-07-03', 'video/trashdev', null, null, '2025-07-03', 4, 8),
    ('Development being done on IOS is devlopment in the wrong direction', '2025-04-14', 'video/userman', null, null, '2025-04-14', 4, 9),
    ('Is vibe coding for 0.5X devs?', '2025-02-20', 'video/teej', null, null, '2025-02-20', 4, 7),
    ('How to exit Neo VIM, Part #1', '2025-05-01', 'video/teej', null, null, '2025-05-01', 4, 7),
    ('How to exit Neo VIM, Part #2', '2025-05-02', 'video/teej', null, null, '2025-05-02', 4, 7),
    ('How to exit Neo VIM, Part #3 (final part)', '2025-05-03', 'video/teej', null, null, '2025-05-03', 4, 7),
    ('Arch Linux  install tutorial', '2025-06-06', 'video/userman', null, null, '2025-06-06', 4, 9),
    ('Welcome to the Rice Fields (Arch Linux)', '2025-06-08', 'video/userman', null, null, '2025-06-08', 4, 9),
    ('I dont refractor, I rewrite to Rust', '2023-03-03', 'video/memoria', null, null, '2023-03-03', 4, 14),
    ('I ported Doom to my girlfriends diabetes monitor', '2023-03-03', 'video/memoria', null, null, '2023-03-03', 4, 14),
    ('How to download Temple OS on your Nintendo Switch', '2025-11-12', 'video/memoria', null, null, '2025-11-12', 4, 14),
    ('Xcode is cool in the same way falling from the third floor is cool', '2025-03-12', 'video/memoria', null, null, '2025-03-12', 4, 14),
    ('How to center a div in html', '2001-03-12', 'video/brogramer', null, null, '2001-03-12', 4, 15),
    ('VS Code is for interns, real devs work in Notepad', '2002-03-12', 'video/brogramer', null, null, '2002-03-12', 4, 15),
    ('My SQL? we store data in Excel', '2003-03-12', 'video/brogramer', null, null, '2003-03-12', 4, 15),
    ('No clean code is written on a 2004 ThinkPad at 2 am, but the solution we require is.', '2004-03-12', 'video/brogramer', null, null, '2004-03-12', 4, 15),
    ('I build software like I build houses... With a back door', '2005-03-12', 'video/brogramer', null, null, '2005-03-12', 4, 15),
    ('Why scale, when you can just drop inactive users from the DB - (my life as an insurance banking dev)', '2025-12-12', 'video/memoria', null, null, '2025-12-12', 4, 14);