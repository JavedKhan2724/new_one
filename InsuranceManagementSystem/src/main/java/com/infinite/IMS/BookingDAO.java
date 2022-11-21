package com.infinite.IMS;

import java.sql.Date;

import java.util.Calendar;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;




public class BookingDAO {

    SessionFactory sessionFactory;
    Session session;
    
    
    public List<Booking> showBooking() {
        sessionFactory = SessionHelper.getConnection();
          Session session=sessionFactory.openSession();
          
          Criteria cr = session.createCriteria(Booking.class);
          cr.add(Restrictions.eq("status", Status.ACTIVE));
          List<Booking> bookingList =cr.list() ;
          return bookingList;
}
}