

use little_lemon;
show tables from little_lemon;
select* from Bookings where bookingDate between "2021-11-11" and "2021-11-13";
SELECT* FROM Customers;
select customers.fullname,
bookings.bookingID from customers
JOIN Bookings on customers.customerID=bookings.CustomerID WHERE Bookingdate ='2021-11-11';
select bookingdate,count(*) as total_booking from bookings group by bookingdate;
replace into courses (coursename,cost) values ('kabasa',20.00);
CREATE TABLE DeliveryAddress (
  ID INT PRIMARY KEY,
  Address VARCHAR(255) NOT NULL,
  Type VARCHAR(50) NOT NULL DEFAULT 'Private',
  CustomerID INT NOT NULL,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
select* from deliveryaddress;
alter table courses add column Ingredients varchar(100);
select fullname 
from customers
where customerID in (select customerid from bookings where bookingdate = '2021-11-11');
CREATE VIEW BookingsView AS
SELECT BookingID, BookingDate, NumberOfGuests
FROM Bookings
WHERE BookingDate < '2021-11-13' AND NumberOfGuests > 3;
SELECT * FROM BookingsView;
SELECT 
  CONCAT(
    'ID: ', BookingID, ', Date: ', BookingDate, ', Number of guests: ', NumberOfGuests
  ) AS "Booking Details"
FROM Bookings;