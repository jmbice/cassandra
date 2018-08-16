CREATE KEYSPACE soundofcloud WITH replication={'class':'SimpleStrategy','replication_factor':1};

CREATE TABLE soundofcloud.comments_replies_bySong(
    song_id int,
    comment_id int,
    reply_id int,
    comment_author varchar,
    comment_avatar varchar,
    comment_timestamp varchar,
    comment_text varchar,
    reply_author varchar,
    reply_avatar varchar,
    reply_timestamp varchar,
    reply_text varchar,
    PRIMARY KEY(song_id, comment_id, reply_id)
);
