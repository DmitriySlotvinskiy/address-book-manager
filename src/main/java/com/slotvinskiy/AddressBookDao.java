package com.slotvinskiy;

import java.util.Iterator;

public class AddressBookDao {
    private static AddressBook addressBook;

    private static AddressBookDao addressBookDao = null;

    private AddressBookDao() {
        addressBook = AddressBook.getInstance();
    }

    public static AddressBookDao getInstance() {
        if (addressBookDao == null) {
            addressBookDao = new AddressBookDao();
        }
        return addressBookDao;
    }

    public boolean create(String firstName, String lastName, String address) {
        return addressBook.create(firstName, lastName, address);
    }

    public String[] readAll() {
        Iterator iterator = addressBook.iterator();
        String[] records = new String[addressBook.size()];
        int i = 0;
        while (iterator.hasNext()) {
            records[i] = (String) iterator.next();
            i++;
        }
        return records;
    }

    public void sort(SortOrder sortOrder) {
        addressBook.sortedBy(sortOrder);
    }

    public String getAddressBy(String firstName, String lastName) {
        return addressBook.read(firstName, lastName);
    }

    public boolean update(String firstName, String lastName, String address) {
        return addressBook.update(firstName, lastName, address);
    }

    public boolean delete(String firstName, String lastName) {
        return addressBook.delete(firstName, lastName);
    }

}
