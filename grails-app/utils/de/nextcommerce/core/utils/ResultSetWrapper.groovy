package de.nextcommerce.core.utils;

import java.sql.*

class ResultSetWrapper implements Iterator {
 
    private ResultSet data    // Aktuelles ResultSet
 
    // Konstruktor übernimmt einen Resultset
    def ResultSetWrapper(ResultSet resultSet) {
        data = resultSet
    }

    // Properties sind Spalten des ResultSet
    Object getProperty(String property) {
        data.getObject(property)
    }

    // Setzen von Properties nicht implementiert.
    void setProperty(String property, Object value) {
        throw new UnsupportedOperationException()
    }
 
    // Implementierung von next() aus Iterator
    // Schaltet zur nächsten Zeile
    def next() {
        if (data.next()) return this
        throw new NoSuchElementException()
    }

    // Implementierung von hasNext() aus Iterator
    // Prüft, ob es weitere Zeilen gibt
    boolean hasNext() {
        return ! data.isLast()
    }

    // Keine Implementierung von remove() aus Iterator
    void remove() {
        throw new UnsupportedOperationException()
    }

    // Methode zum Durchlaufen des ResultSet mit einer
    // Closure
    void eachRow (Closure closure) {
        if (! data.isBeforeFirst()) {
            data.beforeFirst()
        }
        while (data.next()) {
            closure(this)
        }
    }

    // Leitet alle Aufrufe von undefinierten Methoden
    // an das ResultSet weiter.
    def invokeMethod (String methodName, Object args) {
        return data."$methodName"(*args)
    }
}