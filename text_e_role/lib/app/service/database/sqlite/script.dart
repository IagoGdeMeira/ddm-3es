const createTables = [
  '''
    CREATE TABLE users(
      id INTEGER NOT NULL PRIMARY KEY,
      username VARCHAR(40) NOT NULL UNIQUE,
      email VARCHAR(100) NOT NULL UNIQUE,
      password VARCHAR(30) NOT NULL,
      status CHAR(1) NOT NULL DEFAULT 'A',
      display_name VARCHAR(40) NULL,
      avatar_url VARCHAR(300) NULL,
      biography VARCHAR(300) NULL
    );

    CREATE TABLE direct_chats (
      id INTEGER NOT NULL PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      description VARCHAR(200),
      status CHAR(1) NOT NULL DEFAULT 'A',
      user1_id INTEGER NOT NULL REFERENCES users(id),
      user2_id INTEGER NOT NULL REFERENCES users(id)
    );

    CREATE TABLE general_chats (
      id INTEGER NOT NULL PRIMARY KEY,
      name VARCHAR(50) NOT NULL,
      description TEXT,
      status CHAR(1) NOT NULL DEFAULT 'A',
      creator_id INTEGER NOT NULL REFERENCES users(id),
      creation_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
    );

    CREATE TABLE general_chat_moderators (
      general_chat_id INTEGER NOT NULL REFERENCES general_chats(id) ON DELETE CASCADE,
      moderator_id INTEGER NOT NULL REFERENCES users(id),
      PRIMARY KEY (general_chat_id, moderator_id)
    );

    CREATE TABLE game_chats (
      id INTEGER PRIMARY KEY REFERENCES general_chats(id)
    );

    CREATE TABLE game_chat_masters (
      game_chat_id INTEGER NOT NULL REFERENCES game_chats(id) ON DELETE CASCADE,
      master_id INTEGER NOT NULL REFERENCES users(id),
      PRIMARY KEY (game_chat_id, master_id)
    );

    CREATE TABLE messages(
      id INTEGER NOT NULL PRIMARY KEY,
      content VARCGAR(1000) NOT NULL,
      sending_date DATETIME NOT NULL,
      edit_date DATETIME,
      status CHAR(1) NOT NULL DEFAULT 'A',
      author_id INTEGER REFERENCES users(id)
    );

    CREATE TABLE media (
      id INTEGER NOT NULL PRIMARY KEY,
      file_name VARCHAR(100) NOT NULL,
      file_path TEXT NOT NULL,
      size INTEGER NOT NULL,
      status CHAR(1) NOT NULL DEFAULT 'A',
      message_id INTEGER REFERENCES messages(id)
    );
  '''
];

const insertTest = [
  '''
    INSERT INTO users(
      username,
      email,
      password,
      status
    ) VALUES (
      'usertest',
      'example@domain.com',
      'ValidP@ssw0rd',
      'A'
    );
  ''',
  '''
    INSERT INTO users(
      username,
      email,
      password,
      status
    ) VALUES (
      'testuser',
      'new-example@domain.com',
      'ValidP@ssw0rd',
      'A'
    );
  '''
];