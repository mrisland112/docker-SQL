create database Dev;
use Dev;
create table java_info (
    id int auto_increment primary key ,
    name nvarchar(50),
    version nvarchar(30),
    author nvarchar(50),
    emark nvarchar(100)
    );

insert into java_info(name,version,author,remark) values
    ('JavaProjSE-v1.0.3','1.0.3','Enoxs','Java Project Simple Example - Version 1.0.3'),
    ('JUnitSE','1.0.2','Enoxs', 'Java Unit Test Simple Example'),
    ('SpringMVC-SE','1.0.2','Enoxs','Java Web Application Spring MVC - Simple Example MyBatis');

select * from java_info;