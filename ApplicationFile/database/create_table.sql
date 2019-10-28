use fashion;

create table role(
  id bigint auto_increment primary key not null ,
  rolename varchar(20) null ,
  description nvarchar(50) null ,
  createddate  timestamp null,
  modifieddate timestamp null,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table user(
  id bigint auto_increment primary key not null ,
  username varchar(100) not null ,
  password varchar(100) not null ,
  fullname nvarchar(255) null ,
  email varchar(255)  not null ,
  phonenumber varchar(11) null,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table permission(
  user_id bigint not null ,
  role_id bigint not null
);

create table product(
  id bigint auto_increment primary key not null ,
  productname nvarchar(255) null ,
  series varchar(50) null ,
  thumbnail varchar(255) null ,
  quantity long null ,
  price float null ,
  status nvarchar(50),
  category_id bigint not null ,
  subcategory_id bigint not null ,
  brand_id bigint not null ,
  promotion_id bigint not null ,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table category(
  id bigint auto_increment primary key not null ,
  categoryname nvarchar(100) null ,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table subcategory(
  id bigint auto_increment primary key not null ,
  categoryname nvarchar(100) null ,
  category_id bigint not null ,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table brand(
  id bigint auto_increment primary key not null ,
  brandname varchar(50) null,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table promotions(
  id bigint auto_increment primary key not null ,
  promotionname nvarchar(255) null ,
  startday datetime null ,
  endday datetime null ,
  discount float null,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table size(
  id bigint auto_increment primary key not null ,
  sizename varchar(5) null,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table detailsize(
  product_id bigint not null ,
  size_id bigint not null
);

create table color(
  id bigint auto_increment primary key not null ,
  colorname varchar(20) null,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table detailcolor(
  product_id bigint not null ,
  color_id bigint not null
);

create table sex(
  id bigint auto_increment primary key not null ,
  sexname varchar(10) null,
  createddate  timestamp null ,
  modifieddate timestamp null ,
  createdby nvarchar(255) null ,
  modifiedby nvarchar(255) null
);

create table detailsex(
  product_id bigint not null ,
  sex_id bigint not null
);

create table cart(
  id bigint auto_increment primary key not null ,
  createddate timestamp null ,
  customer_id bigint not null
);

create table detailcart(
  product_id bigint not null ,
  cart_id bigint not null
);

alter table permission add constraint foreign key (user_id) references user(id);
alter table permission add constraint foreign key (role_id) references role(id);

alter table product add constraint foreign key (category_id) references category(id);
alter table product add constraint foreign key (subcategory_id) references subcategory(id);
alter table product add constraint foreign key (brand_id) references brand(id);
alter table product add constraint foreign key (promotion_id) references promotions(id);

alter table subcategory add constraint foreign key (category_id) references category(id);

alter table detailsize add constraint foreign key (product_id) references product(id);
alter table detailsize add constraint foreign key (size_id) references size(id);

alter table detailcolor add constraint foreign key (product_id) references product(id);
alter table detailcolor add constraint foreign key (color_id) references color(id);

alter table detailsex add constraint foreign key (product_id) references product(id);
alter table detailsex add constraint foreign key (sex_id) references sex(id);

alter table cart add constraint foreign key (customer_id) references customer(id);
