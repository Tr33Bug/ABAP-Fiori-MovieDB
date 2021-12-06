CLASS yhka05m_testdata DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.


CLASS yhka05m_testdata IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
    DELETE FROM YHKA05m_MOVIE.
    DATA: moviesData TYPE TABLE OF YHKA05m_MOVIE.
    moviesData = VALUE #(

         (
    movie_uuid = 'AF3E90B5D5AB4D2E97AB3533245124B1'
    movie_title = 'Iron Man'
    movie_description = 'After being held captive in an Afghan cave, billionaire Tony Stark creates a unique suit of armor to fight evil.'
    movie_playtime = '126'
    movie_release = '2008'
    director_uuid = 'ED299348C7F144B1862D1E8C8A58B8B9'
    movierow_uuid = 'ABEE50AAC36743AC80501DF9D593D75D'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/8ugaeA-nMTc'
    movie_age_rating = '13'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTczNTI2ODUwOF5BMl5BanBnXkFtZTcwMTU0NTIzMw@@._V1_.jpg'
    )

    (
    movie_uuid = 'B8C8E3979B5B4C7A8DEC8B73720A59BE'
    movie_title = 'The Incredible Hulk'
    movie_description = 'Bruce Banner, a scientist on the run from the U.S. government, must find a cure for the monster he will be turned into once he loses his temper.'
    movie_playtime = '112'
    movie_release = '2008'
    director_uuid = '1EC682D1FCA84375A317FD6BF7016718'
    movierow_uuid = '8AC91EF31617482183E495B0EBE79CBF'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/xbqNb2PFKKA'
    movie_age_rating = '16'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTUyNzk3MjA1OF5BMl5BanBnXkFtZTcwMTE1Njg2MQ@@._V1_.jpg'
    )

    (
    movie_uuid = '3015DA09D5094FB2B162EBCD69C4D2BA'
    movie_title = 'Iron Man 2'
    movie_description = 'With the world now aware of his identity as Iron Man, he must contend with both his declining health and a vengeful madman with ties to his father`s legacy'
    movie_playtime = '124'
    movie_release = '2010'
    director_uuid = 'ED299348C7F144B1862D1E8C8A58B8B9'
    movierow_uuid = 'ABEE50AAC36743AC80501DF9D593D75D'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/qsRZghNciIo'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTM0MDgwNjMyMl5BMl5BanBnXkFtZTcwNTg3NzAzMw@@._V1_.jpg'
    )

    (
    movie_uuid = 'AE275BB4D80D4545986C16F768A21249'
    movie_title = 'Thor'
    movie_description = 'The powerful but arrogant god Thor is driven out of Asgard to live among humans in Midgard (Earth), where he soon becomes one of their best defenders.'
    movie_playtime = '115'
    movie_release = '2011'
    director_uuid = 'FFDC96944EAF4DF194F0DC9AC92CE793'
    movierow_uuid = '5C4D14F15911424397E9A8C1EAE53401'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/JOddp-nlNvQ'
    movie_age_rating = '11'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg'
    )

    (
    movie_uuid = '3B501A9325274EC8A25CFD329478218E'
    movie_title = 'Captain America: The First Avenger'
    movie_description = 'Steve Rogers, discarded because of his physique, transforms into Captain America after taking a "super soldier serum." But this comes at a price when he must stand up to a warmonger and a terrorist organization.'
    movie_playtime = '124'
    movie_release = '2011'
    director_uuid = '6A9AE96ABD1E4C419BF427ADDF855980'
    movierow_uuid = 'E04A685545A248FA82BC65F43815BA8F'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/JerVrbLldXw'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTYzOTc2NzU3N15BMl5BanBnXkFtZTcwNjY3MDE3NQ@@._V1_.jpg'
    )

    (
    movie_uuid = 'A5255E9F8DAB4817ACB026DBCFFAD49F'
    movie_title = 'The Avengers'
    movie_description = 'Earth`s mightiest heroes must come together and learn to fight as a team if they are to stop the evil Loki and his alien army from enslaving humanity.'
    movie_playtime = '143'
    movie_release = '2012'
    director_uuid = 'D3FC95A8C28D48F88C99DF27881E36A3'
    movierow_uuid = '5CB99E8EC9214AC8A0CFB98A80AC3EB9'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/eOrNdBpGMv8'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'
    )

    (
    movie_uuid = 'FE22EB63B3D34AF3B8998797ACA4B93E'
    movie_title = 'Iron Man 3'
    movie_description = 'When Tony Star`s world is destroyed by a fearsome terrorist named Mandarin, he embarks on an odyssey of rebuilding and retribution.'
    movie_playtime = '130'
    movie_release = '2013'
    director_uuid = '23F02B5E00C6471584C5D6946B6F2C92'
    movierow_uuid = 'ABEE50AAC36743AC80501DF9D593D75D'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/Ke1Y3P9D0Bc'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMjE5MzcyNjk1M15BMl5BanBnXkFtZTcwMjQ4MjcxOQ@@._V1_.jpg'
    )

    (
    movie_uuid = '7C9DE5B4D10941F596F911B01EC6FB5F'
    movie_title = 'Thor: The Dark World'
    movie_description = 'When a powerful entity, the Aether, takes possession of Dr. Jane Foster, Thor is put on notice by the cosmic phenomenon known as the Convergence and the murderous Dark Elves.'
    movie_playtime = '112'
    movie_release = '2013'
    director_uuid = 'FB42763D2D6A4891B7BE2899040829E6'
    movierow_uuid = '5C4D14F15911424397E9A8C1EAE53401'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/npvJ9FTgZbM'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTQyNzAwOTUxOF5BMl5BanBnXkFtZTcwMTE0OTc5OQ@@._V1_.jpg'
    )

    (
    movie_uuid = '20B931619A33439BB502F150980FD4B5'
    movie_title = 'Captain America: The Winter Soldier'
    movie_description = 'Steve Rogers aka Captain America is still having trouble adjusting to modern life. That`s why he teams up with another Avenger and agents from S.H.I.E.L.D. to fight a new threat from history: the killer Winter Soldier.'
    movie_playtime = '136'
    movie_release = '2014'
    director_uuid = 'EDE3F03772CF4C9C9940DCB1FB91708B'
    movierow_uuid = 'E04A685545A248FA82BC65F43815BA8F'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/tbayiPxkUMM'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMzA2NDkwODAwM15BMl5BanBnXkFtZTgwODk5MTgzMTE@._V1_.jpg'
    )

    (
    movie_uuid = '3D3FC70BA4084E7E9F512AFBEE550230'
    movie_title = 'Guardians of the Galaxy'
    movie_description = 'A group of intergalactic criminals are forced to work together to stop a fanatical warrior from taking control of the universe.'
    movie_playtime = '121'
    movie_release = '2014'
    director_uuid = '3AA8D0AA3AF2460098FAF3E91029F6F9'
    movierow_uuid = '0D21A07F338E4CB589E0017A807D9CC8'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/d96cjJhvlMA'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTAwMjU5OTgxNjZeQTJeQWpwZ15BbWU4MDUxNDYxODEx._V1_.jpg'
    )

    (
    movie_uuid = '0B8B23CC6AA44661A952E42535926A24'
    movie_title = 'Avengers: Age of Ultron'
    movie_description = 'Tony Stark and Bruce Banner want to get a peace program called Ultron off the ground, but things go wrong. The result is the malicious artificial intelligence Ultron, which wants to wipe out humanity.'
    movie_playtime = '141'
    movie_release = '2015'
    director_uuid = 'D3FC95A8C28D48F88C99DF27881E36A3'
    movierow_uuid = '5CB99E8EC9214AC8A0CFB98A80AC3EB9'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/tmeOjFno6Do'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTM4OGJmNWMtOTM4Ni00NTE3LTg3MDItZmQxYjc4N2JhNmUxXkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_.jpg'
    )

    (
    movie_uuid = 'F826B4ED331448508619148D13281D0C'
    movie_title = 'Ant-Man'
    movie_description = 'Equipped with a special suit that allows him to shrink himself to miniature size and amplify his powers, master thief Scott Lang helps his mentor Dr. Hank Pym save the world.'
    movie_playtime = '117'
    movie_release = '2015'
    director_uuid = '216FB86F00854E4287775A4D79B4AF06'
    movierow_uuid = 'A976E50656C145BC845C8C1C83FC2603'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/pWdKf3MneyI'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMjM2NTQ5Mzc2M15BMl5BanBnXkFtZTgwNTcxMDI2NTE@._V1_.jpg'
    )

    (
    movie_uuid = '30DE6C05F8674F7E9EC38903B7125B66'
    movie_title = 'Captain America: Civil War'
    movie_description = 'Political interference in the Avengers` activities causes a rift between former allies Captain America and Iron Man.'
    movie_playtime = '147'
    movie_release = '2016'
    director_uuid = 'EDE3F03772CF4C9C9940DCB1FB91708B'
    movierow_uuid = 'E04A685545A248FA82BC65F43815BA8F'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/dKrVegVI0Us'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMjQ0MTgyNjAxMV5BMl5BanBnXkFtZTgwNjUzMDkyODE@._V1_.jpg'
    )

    (
    movie_uuid = '01A39585DAE84B2ABFE013B9CC5FE540'
    movie_title = 'Doctor Strange'
    movie_description = 'After his career is destroyed, a brilliant but arrogant and conceited neurosurgeon learns about his true abilities from a healer in Tibet and becomes the most powerful magician in the world as he fights evil.'
    movie_playtime = '115'
    movie_release = '2016'
    director_uuid = '98A6CB6B8BA94892B549DEE6324CBC21'
    movierow_uuid = '874D4193A7EB468FACC88F673D4FB75B'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/HSzx-zryEgM'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BNjgwNzAzNjk1Nl5BMl5BanBnXkFtZTgwMzQ2NjI1OTE@._V1_.jpg'
    )

    (
    movie_uuid = 'C7BE8A8231664A5AB1FDF63F3846B57A'
    movie_title = 'Guardians of the Galaxy Vol. 2'
    movie_description = 'Set to the background music of "Awesome Mixtape #2," "Guardians of the Galaxy Vol. 2" continues the team`s adventures, and the mystery of Peter Quill`s true parentage is revealed.'
    movie_playtime = '136'
    movie_release = '2017'
    director_uuid = '3AA8D0AA3AF2460098FAF3E91029F6F9'
    movierow_uuid = '0D21A07F338E4CB589E0017A807D9CC8'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/dW1BIid8Osg'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BNjM0NTc0NzItM2FlYS00YzEwLWE0YmUtNTA2ZWIzODc2OTgxXkEyXkFqcGdeQXVyNTgwNzIyNzg@._V1_.jpg'
    )

    (
    movie_uuid = '99C8EDC85CEC49CDAD455C2699DCF7EF'
    movie_title = 'Spider-Man: Homecoming'
    movie_description = 'Still euphoric from the thrilling battle with the Avengers, Peter returns home to live with his Aunt May and under the watchful eye of his new mentor, Tony Stark.'
    movie_playtime = '133'
    movie_release = '2017'
    director_uuid = '216FB86F00854E4287775A4D79B4AF06'
    movierow_uuid = '9D6C1525ADC24B8EBF79E8EE72688B95'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/8wNgphPi5VM'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BNTk4ODQ1MzgzNl5BMl5BanBnXkFtZTgwMTMyMzM4MTI@._V1_.jpg'
    )

    (
    movie_uuid = '4F907E3FFB8842B2A8A6779A9AA102D5'
    movie_title = 'Thor: Ragnarok'
    movie_description = 'In Marvel Studios Thor: Ragnarok, Thor must stop the destruction of his world and with it the end of Asgard civilization at the hands of the ruthless Hela.'
    movie_playtime = '130'
    movie_release = '2017'
    director_uuid = '0A7A79D341E747E1BEBA2743B5B5E3A1'
    movierow_uuid = '5C4D14F15911424397E9A8C1EAE53401'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/ue80QwXMRHg'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMjMyNDkzMzI1OF5BMl5BanBnXkFtZTgwODcxODg5MjI@._V1_.jpg'
    )

    (
    movie_uuid = 'B1E3991A10D34E9FA7D688D9EE7D2E13'
    movie_title = 'Black Panther'
    movie_description = 'T`Challa, the new ruler of the advanced empire of Wakanda, must save his country from being torn apart by external and internal enemies.'
    movie_playtime = '134'
    movie_release = '2018'
    director_uuid = '0F2CC92CC9AF41F3B998422AD5476D09'
    movierow_uuid = '9DB032FF7CC446F093DDACEF8760FCF5'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/xjDjIWPwcPU'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg'
    )

    (
    movie_uuid = '283EAA615A2B410EB8F9DDCD5AA85584'
    movie_title = 'Avengers: Infinity War'
    movie_description = 'The Avengers and their allies must be ready to sacrifice everything to defeat the mighty Thanos before his galactic plan of destruction brings an end to the universe.'
    movie_playtime = '149'
    movie_release = '2018'
    director_uuid = 'EDE3F03772CF4C9C9940DCB1FB91708B'
    movierow_uuid = '5CB99E8EC9214AC8A0CFB98A80AC3EB9'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/6ZfuNTqbHE8'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_.jpg'
    )

    (
    movie_uuid = 'E8E34BD3E05A44E3855AF4E04279DA7C'
    movie_title = 'Ant-Man and the Wasp'
    movie_description = 'Scott Lang is desperately trying to be a superhero and a father at the same time.'
    movie_playtime = '118'
    movie_release = '2018'
    director_uuid = '216FB86F00854E4287775A4D79B4AF06'
    movierow_uuid = 'A976E50656C145BC845C8C1C83FC2603'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/8_rTIAOohas'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BYjcyYTk0N2YtMzc4ZC00Y2E0LWFkNDgtNjE1MzZmMGE1YjY1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg'
    )

    (
    movie_uuid = '7AE068501F0147669B3AC1941CF8E2FF'
    movie_title = 'Captain Marvel'
    movie_description = 'Carol Danvers becomes one of the most powerful heroes in the universe when Earth is caught in the middle of a galactic war between two alien races.'
    movie_playtime = '123'
    movie_release = '2019'
    director_uuid = '1BB3E04CFB664177A7C54BA2CC18C910'
    movierow_uuid = '44AF0DC122384EABAC266F3646FB31C2'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/Z1BCujX3pw8'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTE0YWFmOTMtYTU2ZS00ZTIxLWE3OTEtYTNiYzBkZjViZThiXkEyXkFqcGdeQXVyODMzMzQ4OTI@._V1_.jpg'
    )

    (
    movie_uuid = '63B5B97A3C8E436AAEC6AA888DCE3746'
    movie_title = 'Avengers: Endgame'
    movie_description = 'After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of the remaining allies, the Avengers once again mount to undo Thanos` actions and restore order to the universe.'
    movie_playtime = '181'
    movie_release = '2019'
    director_uuid = 'EDE3F03772CF4C9C9940DCB1FB91708B'
    movierow_uuid = '5CB99E8EC9214AC8A0CFB98A80AC3EB9'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/TcMBFSGVi1c'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_.jpg'
    )

    (
    movie_uuid = '51D48240C31442878C865545B02530C4'
    movie_title = 'Spider-Man: Far from Home'
    movie_description = 'Peter Parker and his friends are going on a summer vacation to Europe. There Peter tries to save his friends from the villain Mysterio.'
    movie_playtime = '129'
    movie_release = '2019'
    director_uuid = '216FB86F00854E4287775A4D79B4AF06'
    movierow_uuid = '9D6C1525ADC24B8EBF79E8EE72688B95'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/ZYzbalQ6Lg8'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMGZlNTY1ZWUtYTMzNC00ZjUyLWE0MjQtMTMxN2E3ODYxMWVmXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg'
    )

    (
    movie_uuid = '8297EFE3E70B45E7A38DE3C8F7465D47'
    movie_title = 'Black Widow'
    movie_description = 'A film about Natasha Romanova in her search for the films Civil War and Infinity War.'
    movie_playtime = '134'
    movie_release = '2021'
    director_uuid = '1BB3E04CFB664177A7C54BA2CC18C910'
    movierow_uuid = '638217BE21EF49FEBA7286746484413A'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/ybji16u608U'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BNjRmNDI5MjMtMmFhZi00YzcwLWI4ZGItMGI2MjI0N2Q3YmIwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'
    )

    (
    movie_uuid = '3D68F29572A949739DB9A88BE5FAFF81'
    movie_title = 'Shang-Chi and the Legend of the Ten Rings'
    movie_description = 'Shang-Chi, the master of weaponry-based Kung Fu, is forced to confront his past after being drawn into the Ten Rings organization.'
    movie_playtime = '132'
    movie_release = '2021'
    director_uuid = '7696A2BE88F741D68D8DAB01D8339DBC'
    movierow_uuid = '26369BAE3DB047CFB0AC1FE3E3C813A9'
    movie_meta_score = '4'
    movie_trailer_link = 'https://www.youtube.com/embed/8YjFbMbfXaQ'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BNTliYjlkNDQtMjFlNS00NjgzLWFmMWEtYmM2Mzc2Zjg3ZjEyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'
    )

    (
    movie_uuid = 'DE21D66EE4324FD888FC8E206319F421'
    movie_title = 'Eternals'
    movie_description = 'The saga of the Eternals, a race of immortal beings who lived on Earth and shaped its history and civilizations.'
    movie_playtime = '156'
    movie_release = '2021'
    director_uuid = 'C5A1BFE276CD4A8DB2522D582A8BDB00'
    movierow_uuid = '4139BCBB2F2049E7B0D4FCDB9EC7865B'
    movie_meta_score = '3'
    movie_trailer_link = 'https://www.youtube.com/embed/x_me3xsvDgk'
    movie_age_rating = '12'
    movie_cover = 'https://m.media-amazon.com/images/M/MV5BMTExZmVjY2ItYTAzYi00MDdlLWFlOWItNTJhMDRjMzQ5ZGY0XkEyXkFqcGdeQXVyODIyOTEyMzY@._V1_.jpg'
    )






    ).
    INSERT YHKA05m_MOVIE FROM TABLE @moviesData.

    DELETE FROM YHKA05m_DIRECTOR.
    DATA: directorData TYPE TABLE OF YHKA05m_DIRECTOR.
    directorData = VALUE #(
        (
    director_uuid = 'ED299348C7F144B1862D1E8C8A58B8B9'
    director_name  = 'Jon Favreau'
    director_age  = '1966'
    )

    (
    director_uuid = '1EC682D1FCA84375A317FD6BF7016718'
    director_name  = 'Louis Leterrier'
    director_age  = '1973'
    )

    (
    director_uuid = 'FFDC96944EAF4DF194F0DC9AC92CE793'
    director_name  = 'Kenneth Branagh'
    director_age  = '1960'
    )

    (
    director_uuid = '6A9AE96ABD1E4C419BF427ADDF855980'
    director_name  = 'Joe Johnston'
    director_age  = '1973'
    )

    (
    director_uuid = 'D3FC95A8C28D48F88C99DF27881E36A3'
    director_name  = 'Joss Whedon'
    director_age  = '1964'
    )

    (
    director_uuid = '23F02B5E00C6471584C5D6946B6F2C92'
    director_name  = 'Shane Black'
    director_age  = '1961'
    )

    (
    director_uuid = 'FB42763D2D6A4891B7BE2899040829E6'
    director_name  = 'Alan Taylor'
    director_age  = '1965'
    )

    (
    director_uuid = 'EDE3F03772CF4C9C9940DCB1FB91708B'
    director_name  = 'Anthony Russo'
    director_age  = '1970'
    )

    (
    director_uuid = '98A6CB6B8BA94892B549DEE6324CBC21'
    director_name  = 'Scott Derrickson'
    director_age  = '1966'
    )

    (
    director_uuid = '3AA8D0AA3AF2460098FAF3E91029F6F9'
    director_name  = 'James Gunn'
    director_age  = '1966'
    )

    (
    director_uuid = '216FB86F00854E4287775A4D79B4AF06'
    director_name  = 'Peyton Reed'
    director_age  = '1964'
    )

    (
    director_uuid = 'AD4ACE02691E4BF189F7D309A1418F0B'
    director_name  = 'Jon Watts'
    director_age  = '1981'
    )

    (
    director_uuid = '0A7A79D341E747E1BEBA2743B5B5E3A1'
    director_name  = 'Taika Waititi'
    director_age  = '1975'
    )

    (
    director_uuid = '0F2CC92CC9AF41F3B998422AD5476D09'
    director_name  = 'Ryan Coogler'
    director_age  = '1986'
    )

    (
    director_uuid = '1BB3E04CFB664177A7C54BA2CC18C910'
    director_name  = 'Anna Boden'
    director_age  = '1976'
    )

    (
    director_uuid = 'F5F6E686DFB148C8B59C1841EF35B47C'
    director_name  = 'Cate Shortland'
    director_age  = '1968'
    )

    (
    director_uuid = '7696A2BE88F741D68D8DAB01D8339DBC'
    director_name  = 'Destin Daniel Cretton'
    director_age  = '1978'
    )

    (
    director_uuid = 'C5A1BFE276CD4A8DB2522D582A8BDB00'
    director_name  = 'Chloé Zhao'
    director_age  = '1982'
    )

    ).
    INSERT YHKA05m_DIRECTOR FROM TABLE @directorData.

    DELETE FROM yhka05m_movierow.
    DATA: movierowData TYPE TABLE OF yhka05m_movierow.
    movierowData = VALUE #(
        (
    movierow_uuid = 'ABEE50AAC36743AC80501DF9D593D75D'
    movierow_title = 'Iron Man Films'
    movierow_description = 'Iron Man is a superhero appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '8AC91EF31617482183E495B0EBE79CBF'
    movierow_title = 'Hulk Films'
    movierow_description = 'The Hulk is a fictional superhero appearing in publications by the American publisher Marvel Comics.'
    )

    (
    movierow_uuid = '5C4D14F15911424397E9A8C1EAE53401'
    movierow_title = 'Thor Films'
    movierow_description = 'Thor is a fictional character appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = 'E04A685545A248FA82BC65F43815BA8F'
    movierow_title = 'Captain America Films'
    movierow_description = 'Captain America is a superhero appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '5CB99E8EC9214AC8A0CFB98A80AC3EB9'
    movierow_title = 'Avengers Films'
    movierow_description = 'The Avengers are a fictional team of superheroes that appears in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '0D21A07F338E4CB589E0017A807D9CC8'
    movierow_title = 'Guardians of the Galaxy Films'
    movierow_description = 'The Guardians of the Galaxy is a fictional superhero team appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '9D6C1525ADC24B8EBF79E8EE72688B95'
    movierow_title = 'Spider-Man Films'
    movierow_description = 'Spider-Man is a superhero created by writer-editor Stan Lee and writer-artist Steve Ditko. '
    )

    (
    movierow_uuid = '638217BE21EF49FEBA7286746484413A'
    movierow_title = 'Black Widow Films'
    movierow_description = 'Black Widow is the name of several fictional characters appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '26369BAE3DB047CFB0AC1FE3E3C813A9'
    movierow_title = 'Shang-Chi Films'
    movierow_description = 'Xu Shang-Chi is a fictional character portrayed by Simu Liu in the Marvel Cinematic Universe (MCU) multimedia franchise, based on the Marvel Comics character of the same name.'
    )

    (
    movierow_uuid = '4139BCBB2F2049E7B0D4FCDB9EC7865B'
    movierow_title = 'Eternals Films'
    movierow_description = 'The Eternals are a fictional extraterrestrial race of humanoids appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '874D4193A7EB468FACC88F673D4FB75B'
    movierow_title = 'Doctor Strange Films'
    movierow_description = 'Doctor Stephen Strange is a fictional character appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = 'A976E50656C145BC845C8C1C83FC2603'
    movierow_title = 'Ant-Man Films'
    movierow_description = 'Ant-Man is the name of several superheroes appearing in books published by Marvel Comics.'
    )

    (
    movierow_uuid = '9DB032FF7CC446F093DDACEF8760FCF5'
    movierow_title = 'Black Panther Films'
    movierow_description = 'Black Panther is a fictional character and superhero appearing in American comic books published by Marvel Comics.'
    )

    (
    movierow_uuid = '44AF0DC122384EABAC266F3646FB31C2'
    movierow_title = 'Captain Marvel Films'
    movierow_description = 'Captain Marvel is the name of several fictional superheroes appearing in American comic books published by Marvel Comics.'
    )

    ).
    INSERT yhka05m_movierow FROM TABLE @movierowData.

    out->write( sy-dbcnt ).

    out->write( 'Data inserted successfully!' ).

  ENDMETHOD.
ENDCLASS.
