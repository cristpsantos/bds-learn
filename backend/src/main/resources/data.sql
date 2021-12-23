INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d','https://c.pxhere.com/images/ce/37/6e7a553eb3e50187f5aa3380ca40-1620283.jpg!d');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-11-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-11-20T03:00:00Z', 1);
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-12-20T03:00:00Z',TIMESTAMP WITH TIME ZONE '2021-12-20T03:00:00Z', 1);

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML','Trilha principal do curso',1,'https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Fórum','Tire suas dúvidas',2,'https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives','Lives exclusivas do curso',3,'https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 01','Vamos começar', 1, 'https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 02','Vamos continuar', 1, 'https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 03','Vamos finalizar', 1, 'https://c.pxhere.com/images/e7/04/ae65a1f30d7b6c505ad4eb7781bf-1449493.jpg!d', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T15:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refund_Moment, available, only_Update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2020-11-20T15:00:00Z', null, true, false);

INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 01 Cap01', 1, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (1, 'Material de Apoio', 'https://www.youtube.com/watch?v=hhK2GBVawV8');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 02 Cap01', 2, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (2, 'Material de Apoio 2', 'https://www.youtube.com/watch?v=hhK2GBVawV8');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Aula 03 Cap01', 3, 1);
INSERT INTO tb_content (id, text_Content, video_Uri) VALUES (3, 'Material de Apoio 3', 'https://www.youtube.com/watch?v=hhK2GBVawV8');
INSERT INTO tb_lesson (title, position, section_id) VALUES ('Tarefa para concluir', 4, 1);
INSERT INTO tb_task (id, description, question_Count, approval_Count, weight, due_Date) VALUES (4, 'Entregar desafio', 5, 4, 1.0, TIMESTAMP WITH TIME ZONE '2020-11-30T15:00:00Z');

INSERT INTO tb_lessons_done (lesson_id, user_id, offer_id) VALUES (1, 1, 1);


