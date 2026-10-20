-- create DATABASE e_wallet

create Table wallet(
    No_wallet int generated ALWAYS as IDENTITY PRIMARY key,
    saldo NUMERIC not null check(saldo > 0)
);

create table users(
    id int generated ALWAYS as IDENTITY PRIMARY key,
    fullname VARCHAR(100) not NULL,
    contact VARCHAR(100),
    no_wallet int REFERENCES wallet(No_wallet)
)

create Table transactions(
    id int generated ALWAYS as IDENTITY PRIMARY key,
    id_users int REFERENCES users(id),
    total_pembayaran varchar(100),
    tanggal_transactions date
)

create TABLE audit_log(
    id int generated ALWAYS as IDENTITY PRIMARY KEY,
    id_transaction int REFERENCES transactions(id),
    total_pembayaran VARCHAR(100) not null,
    tanggal_transaction date not null
)

