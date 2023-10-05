create view view_users(userid, fname, lname, employeeid, password, pincode) as
SELECT users.userid,
       users.fname,
       users.lname,
       users.employeeid,
       users.password,
       users.pincode
FROM users;

alter table view_users
    owner to postgres;

