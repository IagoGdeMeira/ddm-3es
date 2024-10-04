const createTables = [
  '''
    CREATE TABLE user(
      id INTEGER NOT NULL PRIMARY KEY,
      username VARCHAR(40) NOT NULL,
      email VARCHAR(200) NOT NULL,
      password VARCHAR(30) NOT NULL,
      status CHAR(1) NOT NULL,
      display_name VARCHAR(40) NULL,
      avatar_URL VARCHAR(300) NULL,
      biography VARCHAR(300) NULL
    )
  '''
];
