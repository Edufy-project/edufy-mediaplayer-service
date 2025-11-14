insert into albums (title, release_date, cover_image_url)
values
    ('Flying Beagle', '1987-10-21',  'cover_images/flying_beagle.jpg'),
    ('Blood on the Tracks', '1975-01-20',  'cover_images/blood_on_the_tracks.jpg'),
    ('Welcome To The Rose Garden', '1995-05-21',  'cover_images/rose_garden.jpg'),
    ('Illmatic', '1994-04-19',  'cover_images/illmatic.jpg'),
    ('Vaudeville Villain', '2003-09-16',  'cover_images/villain.jpg');

insert into music (title, release_date, stream_url, genre, album_id, album_order, created_at)
values
    ('Look Your Back!', '1987-10-21', 'music/flying_beagle1.mp3', 'Jazz Fusion',1, 1, '1987-10-21'),
    ('A Seagull and Clouds', '1987-10-21', 'music/flying_beagle2.mp3', 'Jazz Fusion',1, 2, '1987-10-21'),
    ('Flying Beagle', '1987-10-21', 'music/flying_beagle3.mp3', 'Jazz Fusion',1, 3, '1987-10-21'),
    ('Fluffy', '1987-10-21', 'music/flying_beagle4.mp3', 'Jazz Fusion',1, 4, '1987-10-21'),
    ('Sandstorm', '1987-10-21', 'music/flying_beagle5.mp3', 'Jazz Fusion',1, 5, '1987-10-21'),
    ('Baby Talk', '1987-10-21', 'music/flying_beagle6.mp3', 'Jazz Fusion',1, 6, '1987-10-21'),
    ('The Second Summer', '1987-10-21', 'music/flying_beagle7.mp3', 'Jazz Fusion',1, 7, '1987-10-21'),
    ('Ducky Ducky', '1987-10-21', 'music/flying_beagle8.mp3', 'Jazz Fusion',1, 8, '1987-10-21'),

    ('Tangled Up in Blue', '1975-01-20', 'music/blood_tracks1.mp3', 'Folkrock',2, 1, '1974-12-30'),
    ('Simple Twist of Fate', '1975-01-20', 'music/blood_tracks2.mp3', 'Folkrock',2, 2, '1974-09-19'),
    ('You''re a Big Girl Now', '1975-01-20', 'music/blood_tracks3.mp3', 'Folkrock',2, 3, '1974-12-27'),
    ('Idiot Wind', '1975-01-20', 'music/blood_tracks4.mp3', 'Folkrock',2, 4, '1974-12-27'),
    ('You''re Gonna Make Me Lonesome When You Go', '1975-01-20', 'music/blood_tracks5.mp3', 'Folkrock',2, 5, '1974-09-17'),
    ('Meet Me in the Morning', '1975-01-20', 'music/blood_tracks6.mp3', 'Folkrock',2, 6, '1974-09-16'),
    ('Lily, Rosemary and the Jack of Hearts', '1975-01-20', 'music/blood_tracks7.mp3', 'Folkrock',2, 7, '1974-12-30'),
    ('If You See Her, Say Hello', '1975-01-20', 'music/blood_tracks8.mp3', 'Folkrock',2, 8, '1974-12-30'),
    ('Shelter from the Storm', '1975-01-20', 'music/blood_tracks9.mp3', 'Folkrock',2, 9, '1974-09-17'),
    ('Buckets of Rain', '1975-01-20', 'music/blood_tracks10.mp3', 'Folkrock',2, 10, '1974-09-19'),

    ('Triumph', '1995-05-21', 'music/rose_garden1.mp3', 'Jazz Fusion',3, 1, '1995-05-21'),
    ('Crown And Roses', '1995-05-21', 'music/rose_garden2.mp3', 'Jazz Fusion',3, 2, '1995-05-21'),
    ('History', '1995-05-21', 'music/rose_garden3.mp3', 'Jazz Fusion',3, 3, '1995-05-21'),
    ('Sunnyside Cruise', '1995-05-21', 'music/rose_garden4.mp3', 'Jazz Fusion',3, 4, '1995-05-21'),
    ('Splash!', '1995-05-21', 'music/rose_garden5.mp3', 'Jazz Fusion',3, 5, '1995-05-21'),
    ('Landscape', '1995-05-21', 'music/rose_garden6.mp3', 'Jazz Fusion',3, 6, '1995-05-21'),
    ('41, Parthenia Rd.', '1995-05-21', 'music/rose_garden7.mp3', 'Jazz Fusion',3, 7, '1995-05-21'),
    ('The Autumn Of ''75', '1995-05-21', 'music/rose_garden8.mp3', 'Jazz Fusion',3, 8, '1995-05-21'),
    ('Prime Time', '1995-05-21', 'music/rose_garden9.mp3', 'Jazz Fusion',3, 9, '1995-05-21'),

    ('The Genesis', '1994-04-19', 'music/illmatic1.mp3', 'Hip-hop',4, 1, '1994-04-19'),
    ('N.Y. State of Mind', '1994-04-19', 'music/illmatic2.mp3', 'Hip-hop',4, 2, '1994-04-19'),
    ('Life''s a Bitch (ft. AZ)', '1994-04-19', 'music/illmatic3.mp3', 'Hip-hop',4, 3, '1994-04-19'),
    ('The World Is Yours', '1994-04-19', 'music/illmatic4.mp3', 'Hip-hop',4, 4, '1994-04-19'),
    ('Halftime', '1994-04-19', 'music/illmatic5.mp3', 'Hip-hop',4, 5, '1994-04-19'),
    ('Memory Lane (Sittin'' in da Park)', '1994-04-19', 'music/illmatic6.mp3', 'Hip-hop',4, 6, '1994-04-19'),
    ('One Love', '1994-04-19', 'music/illmatic7.mp3', 'Hip-hop',4, 7, '1994-04-19'),
    ('One Time 4 Your Mind', '1994-04-19', 'music/illmatic8.mp3', 'Hip-hop',4, 8, '1994-04-19'),
    ('Represent', '1994-04-19', 'music/illmatic9.mp3', 'Hip-hop',4, 9, '1994-04-19'),
    ('It Ain''t Hard to Tell', '1994-04-19', 'music/illmatic10.mp3', 'Hip-hop',4, 10, '1994-04-19'),

    ('Overture', '2003-09-16', 'music/villain1.mp3', 'Hip-hop',5, 1, '2003-09-16'),
    ('Vaudeville Villain', '2003-09-16', 'music/villain2.mp3', 'Hip-hop',5, 2, '2003-09-16'),
    ('Lickupon', '2003-09-16', 'music/villain3.mp3', 'Hip-hop',5, 3, '2003-09-16'),
    ('The Drop', '2003-09-16', 'music/villain4.mp3', 'Hip-hop',5, 4, '2003-09-16'),
    ('Lactose and Lecithin', '2003-09-16', 'music/villain5.mp3', 'Hip-hop',5, 5, '2003-09-16'),
    ('A Dead Mouse', '2003-09-16', 'music/villain6.mp3', 'Hip-hop',5, 6, '2003-09-16'),
    ('Open Mic Nite, Pt. 1 (ft. Lord Sear, Brother Sambuca, Dr. Moreau and Louis Logic)', '2003-09-16', 'music/villain7.mp3', 'Hip-hop',5, 7, '2003-09-16'),
    ('RaeDawn', '2003-09-16', 'music/villain8.mp3', 'Hip-hop',5, 8, '2003-09-16'),
    ('Let Me Watch (ft. Apani B)', '2003-09-16', 'music/villain9.mp3', 'Hip-hop',5, 9, '2003-09-16'),
    ('Saliva', '2003-09-16', 'music/villain10.mp3', 'Hip-hop',5, 10, '2003-09-16'),
    ('Modern Day Mugging', '2003-09-16', 'music/villain11.mp3', 'Hip-hop',5, 11, '2003-09-16'),
    ('Open Mic Nite, Pt. 2 (ft. Lord Sear, AJ Ready Wright and Creature)', '2003-09-16', 'music/villain12.mp3', 'Hip-hop',5, 12, '2003-09-16'),
    ('Never Dead (ft. M. Sayyid)', '2003-09-16', 'music/villain13.mp3', 'Hip-hop',5, 13, '2003-09-16'),
    ('PopSnot', '2003-09-16', 'music/villain14.mp3', 'Hip-hop',5, 14, '2003-09-16'),
    ('Mr. Clean', '2003-09-16', 'music/villain15.mp3', 'Hip-hop',5, 15, '2003-09-16'),
    ('G.M.C.', '2003-09-16', 'music/villain16.mp3', 'Hip-hop',5, 16, '2003-09-16'),
    ('Untitled A.K.A. Change the Beat', '2003-09-16', 'music/villain17.mp3', 'Hip-hop',5, 17, '2003-09-16');

insert into pods (title, release_date, stream_url, genre, album_id, album_order, created_at)
values
    ('Is front-end even real programming?', '2025-01-01', 'pod/theprimeagen', 'programming', null, null, '2025-01-01'),
    ('Why we actually need more JS frameworks in 2025', '2025-01-10', 'pod/trashdev', 'programming', null, null, '2025-01-10'),
    ('Why Jesus probably wrote his backend in Rust', '2024-12-24', 'pod/theprimeagen', 'programming', null, null, '2024-12-24'),
    ('Neo-VIM would beat InteliJ in a foot race', '2022-09-11', 'pod/teej', 'programming', null, null, '2022-09-11'),
    ('GUIs are for the WEAK!', '2019-12-12', 'pod/trashdev', 'programming', null, null, '2022-12-12'),
    ('Are you afraid of boiler plate?', '2014-03-14', 'pod/userman', 'programming', null, null, '2014-03-14'),
    ('Why would we need auth? we run noDB', '2024-11-11', 'pod/trashdev', 'programming', null, null, '2024-11-11'),
    ('Linus might deserve a Nobel peace price...', '2025-11-20', 'pod/teej', 'programming', null, null, '2022-11-20'),

    ('Delay post Reverb is a war crime', '2025-12-12', 'pod/anders', 'music', null, null, '2025-12-12'),
    ('No VST can save poor production skills', '2025-02-03', 'pod/anders', 'music', null, null, '2025-10-02'),
    ('I dont need the metronome to make bangers', '2025-10-02', 'pod/anders', 'music', null, null, '2025-10-02');

insert into videos (title, release_date, stream_url, genre, album_id, album_order, created_at)
values
    ('Overcoming the Dawn Wall', '2022-07-09', 'video/magnusmitbo', 'climbing', null, null, '2022-07-09'),
    ('Drone 2.0 is a trick on humanity', '2024-12-03', 'video/magnusmitbo', 'climbing', null, null, '2024-12-03'),
    ('Baking a cake with magdust instead of sugar', '2025-07-15', 'video/magnusmitbo', 'climbing', null, null, '2025-07-15'),

    ('How to roll your own Oauth in 2025', '2025-09-09', 'video/theprimagen', 'programming', null, null, '2025-09-09'),
    ('DO NOT UPLOAD THE API KEY TO GITHUB!', '2025-11-14', 'video/theprimagen', 'programming', null, null, '2025-11-14'),
    ('If HTML is a language ill just learn French instead', '2025-07-03', 'video/trashdev', 'programming', null, null, '2025-07-03'),
    ('Development being done on IOS is devlopment in the wrong direction', '2025-04-14', 'video/userman', 'programming', null, null, '2025-04-14'),
    ('Linux Arch install tutorial', '2025-06-06', 'video/userman', 'programming', null, null, '2025-06-06');

