CREATE
    DATABASE MSSQL_BASIC;

USE MSSQL_BASIC;

CREATE
    TABLE
        dbo.TEST_DATASET(
            id INTEGER PRIMARY KEY,
            test_column_1 BIGINT,
            test_column_10 FLOAT,
            test_column_11 REAL,
            test_column_12 DATE,
            test_column_13 smalldatetime,
            test_column_14 datetime,
            test_column_15 datetime2,
            test_column_16 TIME,
            test_column_18 CHAR,
            test_column_2 INT,
            test_column_20 text,
            test_column_21 nchar,
            test_column_22 nvarchar(MAX),
            test_column_23 ntext,
            test_column_25 VARBINARY(3),
            test_column_3 SMALLINT,
            test_column_4 tinyint,
            test_column_6 DECIMAL(
                5,
                2
            ),
            test_column_7 NUMERIC
        );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        1,
        - 9223372036854775808,
        '123',
        '123',
        '0001-01-01',
        '1900-01-01',
        '1753-01-01',
        '0001-01-01',
        '13:00:01',
        'a',
        - 2147483648,
        'a',
        'a',
        'a',
        'a',
        CAST(
            'ABC' AS VARBINARY
        ),
        - 32768,
        0,
        999.33,
        '99999'
    );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        2,
        9223372036854775807,
        '1234567890.1234567',
        '1234567890.1234567',
        '9999-12-31',
        '2079-06-06',
        '9999-12-31',
        '9999-12-31',
        '13:00:04Z',
        '*',
        2147483647,
        'abc',
        '*',
        'abc',
        'abc',
        CAST(
            'ABC' AS VARBINARY
        ),
        32767,
        255,
        999.33,
        '99999'
    );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        3,
        0,
        '1234567890.1234567',
        '1234567890.1234567',
        '1999-01-08',
        '2079-06-06',
        '9999-12-31T13:00:04Z',
        '9999-12-31T13:00:04.123456Z',
        '13:00:04.123456Z',
        '*',
        2147483647,
        'Some test text 123$%^&*()_',
        N'ї',
        N'Миші йдуть на південь, не питай чому;',
        N'Миші йдуть на південь, не питай чому;',
        CAST(
            'ABC' AS VARBINARY
        ),
        32767,
        255,
        999.33,
        '99999'
    );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        4,
        0,
        '1234567890.1234567',
        '1234567890.1234567',
        '1999-01-08',
        '2079-06-06',
        '9999-12-31T13:00:04.123Z',
        '9999-12-31T13:00:04.123456Z',
        '13:00:04.123456Z',
        '*',
        2147483647,
        '',
        N'ї',
        N'櫻花分店',
        N'櫻花分店',
        CAST(
            'ABC' AS VARBINARY
        ),
        32767,
        255,
        999.33,
        '99999'
    );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        5,
        0,
        '1234567890.1234567',
        '1234567890.1234567',
        '1999-01-08',
        '2079-06-06',
        '9999-12-31T13:00:04.123Z',
        '9999-12-31T13:00:04.123456Z',
        '13:00:04.123456Z',
        '*',
        2147483647,
        '',
        N'ї',
        '',
        '',
        CAST(
            'ABC' AS VARBINARY
        ),
        32767,
        255,
        999.33,
        '99999'
    );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        6,
        0,
        '1234567890.1234567',
        '1234567890.1234567',
        '1999-01-08',
        '2079-06-06',
        '9999-12-31T13:00:04.123Z',
        '9999-12-31T13:00:04.123456Z',
        '13:00:04.123456Z',
        '*',
        2147483647,
        '',
        N'ї',
        N'\xF0\x9F\x9A\x80',
        N'\xF0\x9F\x9A\x80',
        CAST(
            'ABC' AS VARBINARY
        ),
        32767,
        255,
        999.33,
        '99999'
    );

INSERT
    INTO
        dbo.TEST_DATASET
    VALUES(
        7,
        0,
        '1234567890.1234567',
        '1234567890.1234567',
        '1999-01-08',
        '2079-06-06',
        '9999-12-31T13:00:04.123Z',
        '9999-12-31T13:00:04.123456Z',
        '13:00:04.123456Z',
        '*',
        2147483647,
        '',
        N'ї',
        N'\xF0\x9F\x9A\x80',
        N'\xF0\x9F\x9A\x80',
        CAST(
            'ABC' AS VARBINARY
        ),
        32767,
        255,
        999.33,
        '99999'
    );
