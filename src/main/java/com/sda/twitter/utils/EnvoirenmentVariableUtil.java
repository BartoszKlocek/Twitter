package com.sda.twitter.utils;

//intellij nie trawi kropek a zmiennych adres jest z kropkami. Wiec ta klasa zamienia kropki na slash

public class EnvoirenmentVariableUtil {
    //hibernate.connection.username
    //hibernate_connection_username
    public static String getVariable(String key) {
        return System.getenv(key.replace('.', '_'));
    }
}
