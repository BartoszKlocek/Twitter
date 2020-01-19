CREATE TABLE IF NOT EXISTS `TB_USER`
(
    `US_ID`       INT AUTO_INCREMENT,
    `USER_NAME`   VARCHAR(25) NOT NULL,
    `US_PASSWORD` VARCHAR(25) NOT NULL,
    PRIMARY KEY (`US_ID`)
);

CREATE TABLE IF NOT EXISTS `TB_ARTICLE`
(
    `AR_ID`      INT AUTO_INCREMENT,
    `AR_US_ID`   INT           NOT NULL,
    `AR_CONTENT` VARCHAR(1000) NOT NULL,
    FOREIGN KEY fk_user_id (AR_US_ID) REFERENCES TB_USER (US_ID)
#         updatowany bedie nie tylko ta tabela ale wszystkie inne tabele
        ON UPDATE CASCADE
#         nie usuniemy uzytkownika jesli nie usuniemy artykulu
        ON DELETE RESTRICT,
    PRIMARY KEY (`AR_ID`)
);