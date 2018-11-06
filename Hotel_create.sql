
-- tables
-- Table: Booking
CREATE TABLE Booking (
    ID int  NOT NULL,
    Rooms_ID int  NOT NULL,
    Guests_ID int  NOT NULL,
    check_in date  NOT NULL,
    check_out date  NOT NULL,
    CONSTRAINT Booking_pk PRIMARY KEY (ID)
);

-- Table: Guests
CREATE TABLE Guests (
    ID int  NOT NULL,
    first_name varchar(32)  NOT NULL,
    last_name varchar(32)  NOT NULL,
    email varchar(32)  NOT NULL,
    phone_number varchar(32)  NOT NULL,
    CONSTRAINT Guests_pk PRIMARY KEY (ID)
);

-- Table: Rooms
CREATE TABLE Rooms (
    ID int  NOT NULL,
    Floor int  NOT NULL,
    Price decimal(8,2)  NOT NULL,
    CONSTRAINT Id PRIMARY KEY (ID)
);

-- foreign keys
-- Reference: Booking_Guests (table: Booking)
ALTER TABLE Booking ADD CONSTRAINT Booking_Guests
    FOREIGN KEY (Guests_ID)
    REFERENCES Guests (ID)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- Reference: Booking_Rooms (table: Booking)
ALTER TABLE Booking ADD CONSTRAINT Booking_Rooms
    FOREIGN KEY (Rooms_ID)
    REFERENCES Rooms (ID)
    NOT DEFERRABLE
    INITIALLY IMMEDIATE
;

-- End of file.
