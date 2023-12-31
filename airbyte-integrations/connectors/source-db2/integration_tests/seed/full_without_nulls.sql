CREATE
    SCHEMA DB2_FULL_NONULL;

CREATE
    TABLE
        DB2_FULL_NONULL.TEST_DATASET(
            ID INTEGER NOT NULL PRIMARY KEY,
            TEST_COLUMN_1 SMALLINT,
            TEST_COLUMN_10 BOOLEAN,
            TEST_COLUMN_11 CHAR,
            TEST_COLUMN_12 VARCHAR(256),
            TEST_COLUMN_13 VARCHAR(128),
            TEST_COLUMN_14 NCHAR,
            TEST_COLUMN_15 NVARCHAR(128),
            TEST_COLUMN_16 GRAPHIC(8),
            TEST_COLUMN_17 VARGRAPHIC(8),
            TEST_COLUMN_18 VARBINARY(32),
            TEST_COLUMN_19 BLOB,
            TEST_COLUMN_2 INTEGER,
            TEST_COLUMN_20 CLOB,
            TEST_COLUMN_21 NCLOB,
            TEST_COLUMN_22 XML,
            TEST_COLUMN_23 DATE,
            TEST_COLUMN_24 TIME,
            TEST_COLUMN_25 TIMESTAMP,
            TEST_COLUMN_3 BIGINT,
            TEST_COLUMN_4 DECIMAL(
                31,
                0
            ),
            TEST_COLUMN_5 REAL,
            TEST_COLUMN_6 DOUBLE,
            TEST_COLUMN_7 DECFLOAT(16),
            TEST_COLUMN_8 DECFLOAT(34),
            TEST_COLUMN_9 DECFLOAT
        );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        1,
        - 32768,
        't',
        'a',
        'тест',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        ' ',
        ' ',
        ' ',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB(' '),
        - 2147483648,
        ' ',
        ' ',
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '0001-01-01',
        '00.00.00',
        '2018-03-22-12.00.00.123',
        - 9223372036854775808,
        1,
        0,
        DOUBLE('-1.7976931348623157E+308'),
        0,
        0,
        SNaN
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        2,
        32767,
        'true',
        ' ',
        '⚡ test ��',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '1:59 PM',
        '2018-03-22-12.00.00.123456',
        9223372036854775807,
        DECIMAL(
            (
                - 1 + 10E + 29
            ),
            31,
            0
        ),
        CAST(
            '-3.4028234663852886E38' AS REAL
        ),
        DOUBLE('-2.2250738585072014E-308'),
        1.0E308,
        DECFLOAT(
            10E + 307,
            34
        ),
        NaN
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        3,
        32767,
        'y',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180322125959',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        REAL('-1.1754943508222875e-38'),
        DOUBLE('2.2250738585072014E-308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        4,
        32767,
        'yes',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        REAL(
            1.1754943508222875e - 38
        ),
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        5,
        32767,
        'on',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        6,
        32767,
        '1',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        7,
        32767,
        'f',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        8,
        32767,
        'false',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        9,
        32767,
        'n',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        10,
        32767,
        'no',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        11,
        32767,
        'off',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        12,
        32767,
        '0',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );

INSERT
    INTO
        DB2_FULL_NONULL.TEST_DATASET
    VALUES(
        13,
        32767,
        '0',
        '*',
        '!"#$%&\''()*+,-./:;<=>?\@[\]^_\`{|}~',
        chr(33)|| chr(34)|| chr(35)|| chr(36)|| chr(37)|| chr(38)|| chr(39)|| chr(40)|| chr(41),
        'テ',
        'テスト',
        '12345678',
        VARGRAPHIC(
            100500,
            ','
        ),
        VARBINARY(
            'test VARBINARY type',
            19
        ),
        BLOB('test BLOB type'),
        2147483647,
        CLOB('test CLOB type'),
        NCLOB('test NCLOB type'),
        XMLPARSE(
            DOCUMENT '<?xml version="1.0"?><book><title>Manual</title><chapter>...</chapter></book>' PRESERVE WHITESPACE
        ),
        '9999-12-31',
        '23.59.59',
        '20180101 12:00:59 PM',
        9223372036854775807,
        DECIMAL(
            (
                1 - 10E + 29
            ),
            31,
            0
        ),
        3.4028234663852886E38,
        DOUBLE('1.7976931348623157E+308'),
        1.0E - 306,
        DECFLOAT(
            10E - 307,
            34
        ),
        - Infinity
    );
