package com.sda.twitter.persistance;

import com.sda.twitter.utils.EnvoirenmentVariableUtil;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


// klasa zwraa obiekt sessionFactory ktory
// bedzie mogl wykonywac operacje na bazie danych


//tutaj znajdujaa sie zmienne srodowiskowe do ktorych przypisane zsotaly haslo, uzytkownik i url , aby nie bylo ich widac z zewnatz
//w hibernate.cfg.xml
public class HibernateUtil {
    private static final SessionFactory SESSION_FACTORY = buildSessionFactory();
    private static final String HIBERNATE_CONNECTION_USERNAME = "hibernate.connection.username";
    private static final String HIBERNATE_CONNECTION_PASSWORD = "hibernate.connection.password";
    private static final String HIBERNATE_CONNECTION_URL = "hibernate.connection.url";

//    private static SessionFactory buildSessionFactory() {
//System.getenv();
//        ServiceRegistry serviceRegistry = (ServiceRegistry) new StandardServiceRegistryBuilder()
//                .configure("hibernate.cfg.xml").build();
//
//        Metadata metadata = new MetadataSources(serviceRegistry)
//                .getMetadataBuilder().build();
//        return metadata.getSessionFactoryBuilder().build();
//    }
//
//    public static SessionFactory getSessionFactory() {
//        return SESSION_FACTORY;
//    }
//}

    //albo, to jest to samo co wyzej
    public static SessionFactory buildSessionFactory() {

        try {
            return new Configuration()
                    .setProperty(HIBERNATE_CONNECTION_URL, EnvoirenmentVariableUtil.getVariable(HIBERNATE_CONNECTION_URL))
                    .setProperty(HIBERNATE_CONNECTION_PASSWORD, EnvoirenmentVariableUtil.getVariable((HIBERNATE_CONNECTION_PASSWORD)))
                    .setProperty(HIBERNATE_CONNECTION_USERNAME, EnvoirenmentVariableUtil.getVariable(HIBERNATE_CONNECTION_USERNAME))
                    .configure()
                    .buildSessionFactory();
        } catch (Throwable ex) {
            System.err.println("Initial SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static SessionFactory getSessionFactory() {
        return SESSION_FACTORY;
    }

}