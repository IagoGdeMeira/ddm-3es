const createTables = [
  '''
    CREATE TABLE user(
      id INTEGER NOT NULL PRIMARY KEY,
      username VARCHAR(40) NOT NULL UNIQUE,
      email VARCHAR(100) NOT NULL UNIQUE,
      password VARCHAR(30) NOT NULL,
      status CHAR(1) NOT NULL DEFAULT 'A',
      display_name VARCHAR(40) NULL,
      avatar_url VARCHAR(300) NULL,
      biography VARCHAR(300) NULL
    )
  '''
];

const insertTest = [
  '''
    INSERT INTO user(
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
    INSERT INTO user(
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