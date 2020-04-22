select user(), database ();

create table spms(
	project_no int not null auto_increment,
	project_name varchar(200) not null,
	project_content text not null,
	project_start timestamp not null,
	project_end timestamp not null,
	project_state varchar(200) not null,
	primary key(project_no)
);

desc spms;

select * from spms;

select * from spms where project_no = 4;


select * from spms order by project_no desc;
select * from spms where project_no = 1 


delete from spms where project_no = 23;