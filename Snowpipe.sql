CREATE OR REPLACE SCHEMA SPOTIFY_ETL_PROJECT.pipes;

CREATE OR REPLACE pipe SPOTIFY_ETL_PROJECT.pipes.album_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO SPOTIFY_ETL_PROJECT.PUBLIC.tblAlbum
  FROM @SPOTIFY_ETL_PROJECT.PUBLIC.spotify_s3_int_stage/album_data/;

DESC pipe SPOTIFY_ETL_PROJECT.pipes.album_pipe;


CREATE OR REPLACE pipe SPOTIFY_ETL_PROJECT.pipes.artist_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO SPOTIFY_ETL_PROJECT.PUBLIC.tblArtist
  FROM @SPOTIFY_ETL_PROJECT.PUBLIC.spotify_s3_int_stage/artist_data/;

DESC pipe SPOTIFY_ETL_PROJECT.pipes.artist_pipe;


CREATE OR REPLACE pipe SPOTIFY_ETL_PROJECT.pipes.songs_pipe
  AUTO_INGEST = TRUE
  AS
  COPY INTO SPOTIFY_ETL_PROJECT.PUBLIC.tblSongs
  FROM @SPOTIFY_ETL_PROJECT.PUBLIC.spotify_s3_int_stage/songs_data/;

DESC pipe SPOTIFY_ETL_PROJECT.pipes.songs_pipe;