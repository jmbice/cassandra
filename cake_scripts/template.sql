CREATE KEYSPACE soundofcloud WITH replication = { 'class':'SimpleStrategy', 'replication_factor': 3 };


-- ./cassandra-loader -f /Users/jordan_bice/documents/hack-reactor/sdc/comments/dataGen/data/cassandra.csv -host 127.0.0.1 -skipRows 1 -schema "soundofcloud.comments_replies_bySong(song_id, comment_id, comment_author, comment_avatar, comment_timestamp, comment_text, reply_id, reply_author, reply_avatar, reply_timestamp, reply_text)"

-- CREATE TABLE comments_and_replies_by_song_id (
--     song_id uuid,
--     reply_id uuid,
--     pimary key ((song_id), comment_id, reply_id)
-- );
--
--
-- CREATE TABLE replies (
--     reply_id uuid,
--     reply_author varchar,
--     reply_avatar varchar,
--     reply_timestamp varchar,
--     reply_text varchar,
--     pimary key (reply_id)
-- );
--
-- CREATE TABLE comments (
--   comment_id uuid,
--   comment_author varchar,
--   comment_avatar varchar,
--   comment_timestamp varchar,
--   comment_text varchar,
--   pimary key (comment_id)
-- );
CREATE index idx_song_id ON soundofcloud.comments_replies_bySong(song_id);

CREATE index idx_reply_id ON soundofcloud.comments_replies_bySong(reply_id);

--////-->>>

CREATE TABLE comments_and_replies_by_song_id (
    song_id uuid,
    comment_id uuid,
    comment_author varchar,
    comment_avatar varchar,
    comment_timestamp varchar,
    comment_text varchar,
    reply_id uuid,
    reply_author varchar,
    reply_avatar varchar,
    reply_timestamp varchar,
    reply_text varchar,
    pimary key (song_id, comment_id, reply_id)
);


-- CREATE TABLE replies (
--     song_id uuid,
--     comment_id uuid,
--     reply_id uuid,
--     reply_author varchar,
--     reply_avatar varchar,
--     reply_timestamp varchar,
--     reply_text varchar,
--     pimary key (song_id, comment_id, reply_id)
-- );
--
-- CREATE TABLE comments (
--   comment_id uuid,
--   song_id uuid,
--   comment_author varchar,
--   comment_avatar varchar,
--   comment_timestamp varchar,
--   comment_text varchar,
--   pimary key (comment_id, song_id)
--
-- );
--
-- CREATE TABLE songs (
--   song_id uuid primary key
-- );
