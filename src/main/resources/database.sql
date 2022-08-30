create
database BuiManhThanhEcormerceSpringMVC;
use
BuiManhThanhEcormerceSpringMVC;
-- drop database BuiManhThanhEcormerceSpringMVC;

create table `customers`
(
    id               int primary key auto_increment,
    email            varchar(100) not null unique,
    shipping_address nvarchar(255) null,
    phone            varchar(20) null unique,
    full_name        nvarchar(55) not null,
    address          nvarchar(255) null,
    `rank`           nvarchar(55) null,
    user_name        varchar(32)  not null unique
);

create table users
(
    user_name  varchar(50) not null primary key,
    `password` varchar(50) not null,
    enabled    boolean     not null
);

create table authorities
(
    user_name varchar(50) not null,
    authority varchar(50) not null,
    primary key (user_name, authority)
);

create table staff
(
    id        int primary key auto_increment,
    email     varchar(100) not null unique,
    phone     varchar(20)  not null unique,
    full_name nvarchar(55) not null,
    address   nvarchar(255) null,
    user_name varchar(32)  not null unique
);

create table orders
(
    id             int primary key auto_increment,
    customer_id    int         not null,
    order_status   varchar(20) not null,
    ammount        int         not null,
    payment_method varchar(20) null,
    create_time    datetime    not null
);

create table order_details
(
    id         int primary key auto_increment,
    product_id int    not null,
    order_id   int    not null,
    price      double not null,
    quantity   int    not null
);

create table products
(
    id            int primary key auto_increment,
    `name`        varchar(55) not null,
    raw_quantity  int         not null,
    price         double      not null,
    category_id   int         not null,
    `description` nvarchar(255) null,
    thumbnail     varchar(55) null
);

create table categories
(
    id            int primary key auto_increment,
    `name`        nvarchar(50) not null,
    thumbnail     varchar(50) null,
    `description` nvarchar(255) null,
    logo          varchar(50) null
);

create table product_images
(
    id         int primary key auto_increment,
    product_id int         not null,
    url        varchar(255) null,
    `type`     varchar(20) not null
);

create table carts
(
    id          int primary key auto_increment,
    customer_id int      not null,
    ammount     double   not null,
    create_time datetime not null
);

create table cart_details
(
    id         int primary key auto_increment,
    product_id int    not null,
    cart_id    int    not null,
    price      double not null,
    quantity   int    not null
);

ALTER TABLE customers
    ADD FOREIGN KEY (user_name) REFERENCES users (user_name);
ALTER TABLE staff
    ADD FOREIGN KEY (user_name) REFERENCES users (user_name);
ALTER TABLE authorities
    ADD FOREIGN KEY (user_name) REFERENCES users (user_name);
ALTER TABLE orders
    ADD FOREIGN KEY (customer_id) REFERENCES customers (id);
ALTER TABLE order_details
    ADD FOREIGN KEY (order_id) REFERENCES orders (id);
ALTER TABLE order_details
    ADD FOREIGN KEY (product_id) REFERENCES products (id);
ALTER TABLE products
    ADD FOREIGN KEY (category_id) REFERENCES categories (id);
ALTER TABLE product_images
    ADD FOREIGN KEY (product_id) REFERENCES products (id);
ALTER TABLE cart_details
    ADD FOREIGN KEY (product_id) REFERENCES products (id);
ALTER TABLE cart_details
    ADD FOREIGN KEY (cart_id) REFERENCES carts (id);
ALTER TABLE carts
    ADD FOREIGN KEY (customer_id) REFERENCES customers (id);

insert into categories
values (null, "Nokia", "Sieu ben", "troi be bau troi", "band1.png");
insert into categories
values (null, "Nokia1", "Sieu ben", "troi be bau troi", "band2.png");
insert into categories
values (null, "Nokia2", "Sieu ben", "troi be bau troi", "band3.png");
insert into categories
values (null, "Nokia3", "Sieu ben", "troi be bau troi", "band4.png");
insert into categories
values (null, "Nokia4", "Sieu ben", "troi be bau troi", "band5.png");
insert into categories
values (null, "Nokia5", "Sieu ben", "troi be bau troi", "band6.png");



insert into products
values (null, ''Air Force1 Pixel'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Jordan1 Low Magenta'', 1, 570000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Jordan1 Midcanyon'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Jordan1 Mid Peach'', 1, 570000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Jordan1 Mid Signal'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Jordan1 UNC'', 1, 570000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike ACG Air Mowabb'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Force 1 ID Bred Toe'', 1, 570000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Air Force 1 KSA'', 1, 800000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Force 1 Low'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Force 1 Mid'', 1, 800000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Force 107 Mismatched'', 1, 180000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Air Huarache LE'', 1, 800000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Max AP'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Max Dawn'', 1, 800000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Max Genome'', 1, 180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Air Max Pre Day Be True'', 1, 280000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Air More Uptempo'', 1, 800000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Air Presto Premium'', 1, 280000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Air Zoom Pulse'', 1, 280000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Blazer Low X'', 1, 280000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Blazer Xsacai'', 1, 280000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Court Vision Low'', 1, 399000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Dunk High By You'', 1, 180000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Dunk High Retro SE'', 1, 399000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike KD14'', 1, 399000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Killshot OG'', 1, 399000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Kyrie Infinity EP'', 1, 399000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Metcon'', 1, 399000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Over Break'', 1, 399000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike PG5EP'', 1, 1180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike React Metcon Turbo'', 1, 1180000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),
       (null, ''Nike Renew Elevate'', 1, 1180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike SBNyjah Free'', 1, 1180000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Waffle One SE'', 1, 2300000, 1, "Fake description nike .... this is content .... haloo 123456789",
        "Fake thumnail nike"),
       (null, ''Nike Zoom X Super Rep Surge'', 1, 2300000, 1,
        "Fake description nike .... this is content .... haloo 123456789", "Fake thumnail nike"),

       (null, ''Adidas Fusio'', 4, 10000000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Pulse'', 3, 10000000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Adizero Boston'', 8, 4000000, 2,
        "This is fake description .... adidas hello 123456789 . . . . .", "Fake thumbnail adidias"),
       (null, ''Adidas Advantage'', 4, 10000000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Addidas Alpha'', 3, 1800000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Duramo'', 8, 10000000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas EQT Black'', 4, 10000000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Falcon Black'', 4, 3600000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Addidas FluidFlow'', 3, 10000000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Ozelia'', 8, 370000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Ultra City Pack'', 4, 370000, 2,
        "This is fake description .... adidas hello 123456789 . . . . .", "Fake thumbnail adidias"),
       (null, ''Adidas Forum84 Marvel'', 4, 370000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas ForumDipped'', 4, 370000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas ForumExhibititLow'', 4, 370000, 2,
        "This is fake description .... adidas hello 123456789 . . . . .", "Fake thumbnail adidias"),
       (null, ''Adidas MidMarvel'', 4, 370000, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Galaxy5'', 4, 34444444, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas GazelleVintage'', 4, 2444444, 2,
        "This is fake description .... adidas hello 123456789 . . . . .", "Fake thumbnail adidias"),
       (null, ''Adidas GrandCourt'', 4, 1222222, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Super NovaM'', 4, 3444444, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),
       (null, ''Adidas Ultraboost20 Valentine'', 4, 8888888, 2,
        "This is fake description .... adidas hello 123456789 . . . . .", "Fake thumbnail adidias"),
       (null, ''Adidas Swift RunBlue'', 4, 10000000, 2,
        "This is fake description .... adidas hello 123456789 . . . . .", "Fake thumbnail adidias"),
       (null, ''Adidas SuperStar'', 4, 2122222, 2, "This is fake description .... adidas hello 123456789 . . . . .",
        "Fake thumbnail adidias"),

       (null, ''Bitis CoreZ'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),
       (null, ''Core Americano'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''CoreBlack'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),
       (null, ''CoreClassic Blue'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''CoreClassic Grey'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''CoreContrax'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),
       (null, ''CoreGrey'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),
       (null, ''CoreMarios'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),
       (null, ''CoreMilky White'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''CoreSonik Blue'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''CoreTet Edition Red'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''CoreWhite Snow'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter CoreZBlack SuperStar'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterCore ZVani'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Football Hightop Blue'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Football High top Orange'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Football Hightop Yellow'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Football Yellow'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Football Yellow'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter LayeredUpper White'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street AmericanoBlack'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street Green'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street Latte'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Stre et Mid Americano'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street Mid KumquatSoda'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter StreetMid Orange'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter StreetRed'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street TetEdition White2020'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter StreetWhite'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street White'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Streetx Vietmax2020 Black'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Streetx VietMax2020 Brown'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street ZBlue'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter StreetZ High Purple'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter StreetZ HighWhite'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Street ZPink'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter StreetZ White'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Vintage Black'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter Vintage Blue'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterX2k19 Blue'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterX Classik Blackr'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterX ClassikXam'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterX Matcha'', 4, 2122222222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterX Orange Tonic'', 4, 2122222222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunterX Retro Essential White'', 4, 2122222222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter XZReu'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter XZWhiter'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''BitisHunter XZXam'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''Bitis Medium Black'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''Bitis Medium Vani'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''Bitis Neutral200'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''Bitis Random100'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''Bitis Random200'', 4, 2122222, 3,
        "This is fake description bitis ..... fake contennt 123456789 . . . . ", "fake thumbnail bitis"),
       (null, ''Resizer_1'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),
       (null, ''Resizer_2'', 4, 2122222, 3, "This is fake description bitis ..... fake contennt 123456789 . . . . ",
        "fake thumbnail bitis"),

       (null, ''Fila Alpha Lite Men'', 4, 930000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Above Run'', 4, 880000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila AlPha Lite Men Maroon'', 4, 730000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Alpha Lite Olive Green'', 4, 830000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Archive RJV'', 4, 830000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Bumber Slipon'', 4, 2100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Decypher'', 5, 840000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Decypher White'', 3, 2100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Disruptor 2 White'', 4, 232222, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Electrove 2'', 5, 2100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Electrove 2 Black'', 2, 2100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Electrove 2 Cream'', 3, 1100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Festivo 125'', 2, 1100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Festivo 720'', 2, 1100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Filargb Flex Newday 401'', 2, 1100000, 4,
        "This is fake description fila .... fake 123456 . . . . .", "fake thumbnail fila "),
       (null, ''Fila Fixture Cement 77'', 2, 1100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Grant Hill 1 Tarvos'', 2, 1100000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Grant Hill 2 Cement'', 2, 150000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Guard Slipon Canvas 103'', 2, 150000, 4,
        "This is fake description fila .... fake 123456 . . . . .", "fake thumbnail fila "),
       (null, ''Fila Interation White'', 2, 150000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Italia Real Conic'', 2, 150000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila MB Men'', 2, 5000000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Multi Swif5'', 2, 5000000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Oakmont TR Script'', 2, 5000000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Project 7 Filargb Flex Newday 144'', 2, 5000000, 4,
        "This is fake description fila .... fake 123456 . . . . .", "fake thumbnail fila "),
       (null, ''Fila Project7 Modulus 155'', 2, 5000000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Project Court Plumpy'', 2, 5040000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Ray Tracer'', 2, 5040000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Ray TracerTr 2 Black'', 2, 5040000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fil aRay TracerTr 2 Pink'', 2, 5040000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Renno Blue'', 2, 5040000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Renno Next Gen Trainers'', 2, 5040000, 4,
        "This is fake description fila .... fake 123456 . . . . .", "fake thumbnail fila "),
       (null, ''Fila Stac kHouse Spagetti'', 2, 5040000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila T1 Mid Men'', 2, 120000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Vintage Oxy'', 2, 120000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Wavelet Og'', 2, 120000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Filax Flock Together Traiblazer'', 2, 120000, 4,
        "This is fake description fila .... fake 123456 . . . . .", "fake thumbnail fila "),
       (null, ''Fila Wavelet Og'', 2, 120000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Xlite Click Run'', 2, 12800000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila "),
       (null, ''Fila Zagato'', 2, 12800000, 4, "This is fake description fila .... fake 123456 . . . . .",
        "fake thumbnail fila ");
insert into product_images
values (null, 1, "dien-thoai-nokia-1", "product"),
       (null, 2, "h4-slide.png", "slide"),
       (null, 2, "h4-slide2.png", "slide"),
       (null, 2, "h4-slide3.png", "slide"),
       (null, 2, "h4-slide4.png", "slide"),
       (null, 2, "h4-slide7.png", "slide"),
       (null, 1, "AirForce1Pixel.png", "product"),
       (null, 2, "Jordan1LowMagenta.png", "product"),
       (null, 3, "Jordan1Midcanyon.png", "product"),
       (null, 4, "Jordan1MidPeach.png", "product"),
       (null, 5, "Jordan1MidSignal.png", "product"),
       (null, 6, "Jordan1UNC.png", "product"),
       (null, 7, "NikeACGAirMowabb.png", "product"),
       (null, 8, "NikeAirForce1IDBredToe.png", "product"),
       (null, 9, "NikeAirForce1KSA.png", "product"),
       (null, 10, "NikeAirForce1Low.png", "product"),
       (null, 11, "NikeAirForce1Mid.png", "product"),
       (null, 12, "NikeAirForce107Mismatched.png", "product"),
       (null, 13, "NikeAirHuaracheLE.png", "product"),
       (null, 14, "NikeAirMaxAP.png", "product"),
       (null, 15, "NikeAirMaxDawn.png", "product"),
       (null, 16, "NikeAirMaxGenome.png", "product"),
       (null, 17, "NikeAirMaxPreDayBeTrue.png", "product"),
       (null, 18, "NikeAirMoreUptempo.png", "product"),
       (null, 19, "NikeAirPrestoPremium.png", "product"),
       (null, 20, "NikeAirZoomPulse.png", "product"),
       (null, 21, "NikeBlazerLowX.png", "product"),
       (null, 22, "NikeBlazerXsacai.png", "product"),
       (null, 23, "NikeCourtVisionLow.png", "product"),
       (null, 24, "NikeDunkHighByYou.png", "product"),
       (null, 25, "NikeDunkHighRetroSE.png", "product"),
       (null, 26, "NikeKD14.png", "product"),
       (null, 27, "NikeKillshotOG.png", "product"),
       (null, 28, "NikeKyrieInfinityEP.png", "product"),
       (null, 29, "NikeMetcon.png", "product"),
       (null, 30, "NikeOverBreak.png", "product"),
       (null, 31, "NikePG5EP.png", "product"),
       (null, 32, "NikeReactMetconTurbo.png", "product"),
       (null, 33, "NikeRenewElevate.png", "product"),
       (null, 34, "NikeSBNyjahFree.png", "product"),
       (null, 35, "NikeWaffleOneSE.png", "product"),
       (null, 36, "NikeZoomXSuperRepSurge.png", "product"),
       (null, 37, "Adidas4DFusio.png", "product"),
       (null, 38, "Adidas4DFWDPulse.png", "product"),
       (null, 39, "AdidasAdizeroBoston10.png", "product"),
       (null, 40, "AdidasAdvantage.png", "product"),
       (null, 41, "AdidasAlphabounce.png", "product"),
       (null, 42, "AdidasDuramo.png", "product"),
       (null, 43, "AdidasEQTSupportBlack.png", "product"),
       (null, 44, "AdidasFalconBlack.png", "product"),
       (null, 45, "AdidasFluidflow.png", "product"),
       (null, 46, "AdidasOzelia.png", "product"),
       (null, 47, "AdidasUltraboost20CityPack.png", "product"),
       (null, 48, "AdidasForum84HiMarvel.png", "product"),
       (null, 49, "AdidasForumDippedJeremyScott.png", "product"),
       (null, 50, "AdidasForumExhibititLow.png", "product"),
       (null, 51, "AdidasForumMidMarvel.png", "product"),
       (null, 52, "AdidasGalaxy5.png", "product"),
       (null, 53, "AdidasGazelleVintage.png", "product"),
       (null, 54, "AdidasGrandCourt.png", "product"),
       (null, 55, "AdidasSuperNovaM.png", "product"),
       (null, 56, "AdidasUltraboost20Valentine.png", "product"),
       (null, 57, "AdidasSwiftRunBlue.png", "product"),
       (null, 58, "AdidasSuperStar.png", "product"),
       (null, 59, "BitisCoreZ.png", "product"),
       (null, 60, "BitisHunterCoreAmericano.png", "product"),
       (null, 61, "BitisHunterCoreBlack.png", "product"),
       (null, 62, "BitisHunterCoreClassicBlue.png", "product"),
       (null, 63, "BitisHunterCoreClassicGrey.png", "product"),
       (null, 64, "BitisHunterCoreContrax.png", "product"),
       (null, 65, "BitisHunterCoreGrey.png", "product"),
       (null, 66, "BitisHunterCoreMarios.png", "product"),
       (null, 67, "BitisHunterCoreMilkyWhite.png", "product"),
       (null, 68, "BitisHunterCoreSonikBlue.png", "product"),
       (null, 69, "BitisHunterCoreTetEditionRed.png", "product"),
       (null, 70, "BitisHunterCoreWhiteSnow.png", "product"),
       (null, 71, "BitisHunterCoreZBlack.png", "product"),
       (null, 72, "BitisHunterCoreZVani.png", "product"),
       (null, 73, "BitisHunterFootballHightopBlue.png", "product"),
       (null, 74, "BitisHunterFootballHightopOrange.png", "product"),
       (null, 75, "BitisHunterFootballHightopYellow.png", "product"),
       (null, 76, "BitisHunterFootballYellow.png", "product"),
       (null, 77, "BitisHunterFootballYellow.png", "product"),
       (null, 78, "BitisHunterLayeredUpperWhite.png", "product"),
       (null, 79, "BitisHunterStreetAmericanoBlack.png", "product"),
       (null, 80, "BitisHunterStreetGreen.png", "product"),
       (null, 81, "BitisHunterStreetLatte.png", "product"),
       (null, 82, "BitisHunterStreetMidAmericano.png", "product"),
       (null, 83, "BitisHunterStreetMidKumquatSoda.png", "product"),
       (null, 84, "BitisHunterStreetMidOrange.png", "product"),
       (null, 85, "BitisHunterStreetRed.png", "product"),
       (null, 86, "BitisHunterStreetTetEditionWhite2020.png", "product"),
       (null, 87, "BitisHunterStreetWhite.png", "product"),
       (null, 88, "BitisHunterStreetxVietMax2020.png", "product"),
       (null, 89, "BitisHunterStreetxVietmax2020Black.png", "product"),
       (null, 90, "BitisHunterStreetxVietMax2020Brown.png", "product"),
       (null, 91, "BitisHunterStreetZBlue.png", "product"),
       (null, 92, "BitisHunterStreetZHighPurple.png", "product"),
       (null, 93, "BitisHunterStreetZHighWhite.png", "product"),
       (null, 94, "BitisHunterStreetZPink.png", "product"),
       (null, 95, "BitisHunterStreetZWhite.png", "product"),
       (null, 96, "BitisHunterVintageBlack.png", "product"),
       (null, 97, "BitisHunterVintageBlue.png", "product"),
       (null, 98, "BitisHunterX2k19Blue.png", "product"),
       (null, 99, "BitisHunterXClassikBlack.png", "product"),
       (null, 100, "BitisHunterXClassikXam.png", "product"),
       (null, 101, "BitisHunterXMatcha.png", "product"),
       (null, 102, "BitisHunterXOrangeTonic.png", "product"),
       (null, 103, "BitisHunterXRetroEssentialWhite.png", "product"),
       (null, 104, "BitisHunterXZReu.png", "product"),
       (null, 105, "BitisHunterXZWhite.png", "product"),
       (null, 106, "BitisHunterXZXam.png", "product"),
       (null, 107, "BitisMediumBlack.png", "product"),
       (null, 108, "BitisMediumVani.png", "product"),
       (null, 109, "BitisNeutral200.png", "product"),
       (null, 110, "BitisRandom100.png", "product"),
       (null, 111, "BitisRandom200.png", "product"),
       (null, 112, "Resizer_164058677091153.png", "product"),
       (null, 113, "Resizer_164058677091154.png", "product"),
       (null, 114, "FilaAlphaLiteMen.png", "product"),
       (null, 115, "FilaAboveRun.png", "product"),
       (null, 116, "FilaAlPhaLiteMenMaroon.png", "product"),
       (null, 117, "FilaAlphaLiteOliveGreen.png", "product"),
       (null, 118, "FilaArchiveRJV.png", "product"),
       (null, 119, "FilaBumberSlipon.png", "product"),
       (null, 120, "FilaDecypher.png", "product"),
       (null, 121, "FilaDecypherWhite.png", "product"),
       (null, 122, "FilaDisruptor2White.png", "product"),
       (null, 123, "FilaElectrove2.png", "product"),
       (null, 124, "FilaElectrove2Black.png", "product"),
       (null, 125, "FilaElectrove2Cream.png", "product"),
       (null, 126, "FilaFestivo125.png", "product"),
       (null, 127, "FilaFestivo720.png", "product"),
       (null, 128, "FilaFilargbFlexNewday401.png", "product"),
       (null, 129, "FilaFixtureCement77.png", "product"),
       (null, 130, "FilaGrantHill1Tarvos.png", "product"),
       (null, 131, "FilaGrantHill2Cement.png", "product"),
       (null, 132, "FilaGuardSliponCanvas103.png", "product"),
       (null, 133, "FilaInterationWhite.png", "product"),
       (null, 134, "FilaItaliaRealConic.png", "product"),
       (null, 135, "FilaMBMen.png", "product"),
       (null, 136, "FilaMultiSwif5.png", "product"),
       (null, 137, "FilaOakmontTRScript.png", "product"),
       (null, 138, "FilaProject7FilargbFlexNewday144.png", "product"),
       (null, 139, "FilaProject7Modulus155.png", "product"),
       (null, 140, "FilaProjectCourtPlumpy.png", "product"),
       (null, 141, "FilaRayTracer.png", "product"),
       (null, 142, "FilaRayTracerTr2Black.png", "product"),
       (null, 143, "FilaRayTracerTr2Pink.png", "product"),
       (null, 144, "FilaRennoBlue.png", "product"),
       (null, 145, "FilaRennoNextGenTrainers.png", "product"),
       (null, 146, "FilaStackHouseSpagetti.png", "product"),
       (null, 147, "FilaT1MidMen.png", "product"),
       (null, 148, "FilaVintageOxy.png", "product"),
       (null, 149, "FilaWaveletOg.png", "product"),
       (null, 150, "FilaxFlockTogetherTraiblazer.png", "product"),
       (null, 151, "FilaWaveletOg.png", "product"),
       (null, 152, "FilaXliteClickRun.png", "product"),
       (null, 152, "FilaZagato.png", "product");
