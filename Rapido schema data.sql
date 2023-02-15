use application;
create table user(
    id int NOT null unique key,
	user_id int NOT null primary key ,
	pickup_location varchar(100) NOT NULL,
	destination varchar(100) NOT NULL,
	vehicle_type varchar(100) NOT NULL,
	payment_mode varchar(100) NOT NULL,
	is_booked varchar(100) NOT null,
	vehicle_id int NOT null unique key
	);
	create table vehicle(
	id int not null primary key,
	vehicle_id int not null,
	vehicle_type varchar(100) null,
	foreign key(vehicle_id)references user(vehicle_id)
	);
	create table bike(
	id int NOT null primary key,
	bike_number varchar(100) NOT NULL,
	bike_type varchar(100) NOT null,
	foreign key(id)references vehicle(vehicle_id)
	);
	create table auto(
	id int NOT null primary key,
	auto_number varchar(100) NOT NULL,
	auto_type varchar(100) NOT null,
	foreign key(id)references vehicle(vehicle_id)
	);
	create table vehicle_booked(
	vehicle_id int NOT NULL,
	otp int NOT NULL,
	ride_status varchar(100) NOT null,
	foreign key(vehicle_id) references vehicle(vehicle_id)
	);
	CREATE TABLE payment (
	payment_id int NOT NULL,
	payment_mode varchar(100) NOT NULL,
	payment_status varchar(100) NOT null
	
    );
    create table rating(
    id int NOT null primary key,
    user_id int not null,
	rating_given int NULL,
	rating_status varchar(100) NOT null,
	foreign key(user_id)references user(user_id)
    );
    create table cancellation(
    id int NOT null primary key,
	description varchar(100) NULL,
	vehicle_arrived varchar(100) NOT NULL,
	cancellation_status varchar(100) NOT null,
	foreign key(id) references user(user_id)
    );
    create table is_vehicle_arrived(
    id int not null primary key,
    arrived_status varchar(100) NOT NULL,
	waiting_charge int NOT null,
	foreign key(id)references vehicle(vehicle_id)
    );
    insert into user values(1,1,"patrikanagar","N-heights","bike","online","yes",1);
        insert into user values(2,2,"lbnagar","N-heights","auto","cash","pending",2);
            insert into user values(3,3,"kukatpally","N-heights","bike","online","no",3);
    insert into vehicle values(1,1,"bike");
    insert into vehicle values(2,2,"auto");
    insert into vehicle values(3,3,"bike");
    insert into bike values(1,"TSA123","honda");
    insert into bike values(2,"TSA4253","activa");
    insert into bike values(3,"TSA163","splender");
    insert into auto values(1,"TSGH","BAJAJ");
    insert into auto values(2,"TSGH","RE");
    insert into auto values(3,"TSGH","BAJAJ");
    insert into vehicle_booked values(1,2134,"Booked");
    insert into vehicle_booked values(1,2134,"pending");
    insert into vehicle_booked values(1,2134,"Booked");
    insert into payment values(1,"online","done");
    insert into payment values(2,"cash","done");
    insert into payment values(3,"online","done");
    insert into rating values(1,1,5,"done");
    insert into rating values(2,2,4,"done");
    insert into rating values(3,3,3,"done");
    insert into cancellation values(1,"reason not specified","yes","done");
        insert into cancellation values(2,"reason not specified","no","done");
            insert into cancellation values(3,"reason not specified","yes","done");
    insert into is_vehicle_arrived values(1,"done",50);
      insert into is_vehicle_arrived values(2,"done",50);
        insert into is_vehicle_arrived values(3,"done",50);
    