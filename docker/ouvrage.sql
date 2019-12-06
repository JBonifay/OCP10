CREATE TABLE bibliotheque.ouvrage
(
    ouvrage_id      INT           NOT NULL,
    name            VARCHAR(45)   NOT NULL,
    author          VARCHAR(45)   NOT NULL,
    release_date    DATE          NOT NULL,
    summary         VARCHAR(1000) NOT NULL,
    editor          VARCHAR(45)   NOT NULL,
    number_of_pages INT           NOT NULL,
    notation        INT           NOT NULL,

    PRIMARY KEY (ouvrage_id)
);

INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(1, 'Contact Centers', 'Tandie Bartomieu', '1997-05-06 06:55:02', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices', 'Skibox', 842, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(2, 'Litigation', 'Salomo Iori', '1982-07-31 06:17:30', 'nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at', 'Thoughtsphere', 817, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(3, 'Aquisition', 'Jermaine Chellam', '2019-06-01 05:40:11', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', 'Divanoodle', 797, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(4, 'WCDMA', 'Shaughn Dumbleton', '1979-09-21 12:41:58', 'curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien', 'Avamba', 331, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(5, 'Rugby', 'Niels Heakey', '2008-07-13 16:20:17', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec', 'Bluezoom', 674, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(6, 'Cyber Defense', 'Gerome Malecky', '1978-05-26 03:30:22', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', 'Blogtag', 924, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(7, 'Wholesale Operations', 'Lezley Rate', '2016-01-31 19:31:27', 'tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', 'Jaxbean', 741, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(8, 'CMMI', 'Joaquin Leuchars', '1982-01-07 18:44:46', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', 'Camido', 968, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(9, 'Music Theory', 'Deloria Sloss', '2014-12-30 07:22:20', 'nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', 'Teklist', 463, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(10, 'PDMS', 'Dena Cafe', '1982-08-22 16:23:33', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut', 'Photospace', 409, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(11, 'MPE', 'Alain Oyley', '1978-08-23 21:24:36', 'sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 'Twitternation', 432, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(12, 'Flexo', 'Jocelyne Osichev', '2003-08-04 07:15:32', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'Nlounge', 398, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(13, 'Microsoft Dynamics ERP', 'Padget McPhaden', '2012-08-21 00:12:13', 'magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis', 'Realbridge', 323, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(14, 'Blended Learning', 'Fairleigh Stot', '2018-11-15 18:04:10', 'amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi', 'Wikivu', 362, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(15, 'Pylons', 'Laurene Fortey', '2012-03-27 09:06:43', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', 'Demivee', 848, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(16, 'TDP', 'Dallas McIlwrath', '2007-08-18 11:42:13', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien', 'Aimbo', 862, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(17, 'SVM', 'Lyman Denisyuk', '1993-04-25 06:01:53', 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', 'Jaloo', 792, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(18, 'Epidemiology', 'Starlene Beddon', '1992-04-11 05:01:18', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', 'Demizz', 752, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(19, 'dSPACE', 'Erena Lansly', '1983-06-22 00:59:01', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'Avamba', 354, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(20, 'HR Transformation', 'Nichol Solano', '1993-01-21 15:36:37', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean', 'Kwideo', 764, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(21, 'Hiring', 'Shana Barlie', '1992-06-13 22:20:00', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 'Tagtune', 690, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(22, 'NDM', 'Kevyn Lynds', '2015-07-15 21:36:26', 'hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', 'Bluezoom', 355, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(23, 'Alumni Relations', 'Wilhelmina Viscovi', '1977-12-15 01:08:19', 'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut', 'Feedbug', 621, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(24, 'Two-phase Flow', 'Celinka Bettaney', '2007-08-11 06:04:18', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices', 'Mita', 693, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(25, 'MVNE', 'Thaddus Sisland', '1989-06-27 20:56:04', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', 'Fivespan', 343, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(26, 'Ducting', 'Orsa Stickney', '2006-07-19 01:50:40', 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem', 'Yodo', 553, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(27, 'Ion Implantation', 'Chancey Shilston', '2004-08-05 04:45:03', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'Meevee', 425, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(28, 'Long-term Customer Relationships', 'Lynn O''Hara', '1989-01-06 06:57:28', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in', 'Meeveo', 458, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(29, 'GPCRs', 'Les Strood', '2012-07-10 13:01:54', 'elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 'Eayo', 748, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(30, 'MRI Software', 'Cooper Pezey', '2004-06-26 20:14:07', 'adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'Eamia', 674, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(31, 'HTML Scripting', 'Michael Glancey', '2001-09-30 16:09:01', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium', 'Kwilith', 385, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(32, 'NGOSS', 'Phillida Whitwood', '2007-07-29 13:56:04', 'massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', 'Jetwire', 718, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(33, 'Cloud Computing IaaS', 'Sara-ann Falla', '1991-11-17 01:23:47', 'diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', 'Livefish', 375, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(34, 'Yellow Belt', 'Inesita Hart', '2013-01-02 21:01:58', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla', 'Ooba', 843, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(35, 'Krav Maga', 'Ulrike Daviot', '1988-01-15 07:34:12', 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu', 'Centimia', 324, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(36, 'SAP Implementation', 'Delmore Becom', '2004-11-30 08:09:31', 'aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', 'Skibox', 700, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(37, 'SAP SRM', 'Neile Crinidge', '1996-12-20 21:48:47', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa', 'Blogpad', 634, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(38, 'Zend Certified Engineer', 'Belita Ruckledge', '2016-03-01 10:19:18', 'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', 'Dynava', 760, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(39, 'Eclipse RCP', 'Christophe Hould', '2014-02-02 10:19:35', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 'Voonte', 524, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(40, 'PNF', 'Dareen Epton', '1971-01-13 20:28:40', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper', 'Oloo', 756, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(41, 'Awk', 'Stafani Heball', '2002-08-01 21:40:12', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis', 'Dynabox', 638, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(42, 'KPI Implementation', 'Eberto Bowdler', '1984-03-31 10:46:13', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 'Browsecat', 532, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(43, 'FDA', 'Fritz Ingamells', '1991-05-12 21:31:24', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', 'Kwimbee', 886, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(44, 'Twitter', 'Joya Ellacombe', '1971-06-28 07:06:26', 'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', 'Jamia', 539, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(45, 'Zachman', 'Devlin Osselton', '1971-04-10 10:32:37', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', 'Wikivu', 581, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(46, 'PyUnit', 'Ody Ricardet', '1997-05-03 05:41:16', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', 'Eidel', 899, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(47, 'EAI', 'Cobbie Wolfinger', '1983-10-06 13:31:43', 'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', 'Jabberbean', 799, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(48, 'GTK', 'Brnaby Skinner', '2012-08-24 11:10:43', 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'Youspan', 963, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(49, 'eHealth', 'Julianna Dillintone', '1987-06-02 07:45:09', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu', 'Centidel', 374, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(50, 'JTAG', 'Tanny Bertlin', '2015-06-14 18:19:33', 'blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat', 'Quire', 699, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(51, 'CFIA', 'Shayna Tenaunt', '1974-03-18 00:16:11', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus', 'Dablist', 997, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(52, 'LPN', 'Annis O''Deegan', '1977-03-24 09:18:25', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'Realbridge', 604, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(53, 'Scientific Writing', 'Leonore Lampl', '1999-04-17 23:29:52', 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'Twimm', 343, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(54, 'CMDB', 'Malissa Azemar', '2011-02-21 18:02:19', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in', 'Zoonder', 305, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(55, 'Receptionist Duties', 'Man Von Gladbach', '1987-05-08 17:33:55', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'Mita', 895, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(56, 'KWI', 'Thornie Ewington', '2004-09-16 20:25:45', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 'Livefish', 996, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(57, 'Final Cut Pro', 'Lotti Swansbury', '1996-12-14 05:12:44', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo', 'Plajo', 759, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(58, 'PVS', 'Myer Labrone', '1975-08-29 21:03:30', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus', 'Roombo', 587, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(59, 'RCFA', 'Steward Glassup', '1972-03-14 22:36:23', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', 'Eare', 371, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(60, 'Listings', 'Madlen Louys', '1998-02-18 10:18:43', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', 'Dabfeed', 808, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(61, 'Zemax', 'Valerie Cisec', '1994-07-27 21:44:09', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', 'Gevee', 989, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(62, 'UFS', 'Willette Kellington', '1988-04-12 03:43:19', 'venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', 'Eamia', 788, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(63, 'CQS', 'Jelene Wicher', '1978-06-22 19:34:22', 'molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 'Lazzy', 662, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(64, 'Sun One LDAP', 'Bambie Stayt', '1984-02-11 15:11:12', 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam', 'Kayveo', 337, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(65, 'Constructive Feedback', 'Margot Brace', '1988-09-03 16:19:12', 'sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc', 'Chatterbridge', 518, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(66, 'Iptables', 'Maryanne Cammell', '1980-02-12 00:55:57', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', 'Zooxo', 328, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(67, 'OLAP Cube Studio', 'Bartram Hiddersley', '1996-08-06 17:58:46', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non', 'Yabox', 975, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(68, 'Ultrasonic Testing', 'Abdul Longthorn', '2016-01-21 13:23:12', 'lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id', 'Twitterworks', 968, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(69, 'IBM AIX', 'Cary Pree', '1992-09-21 14:03:29', 'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'Yodoo', 775, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(70, 'Dysarthria', 'Tades Deans', '1973-08-11 08:51:37', 'posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'Zoombeat', 589, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(71, 'QuarkXPress', 'Kaycee Cossor', '1986-04-20 23:53:17', 'in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', 'Meemm', 517, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(72, 'Blackberry Enterprise Server', 'Glenine Duffield', '2001-06-15 04:00:55', 'leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula', 'Tazz', 575, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(73, 'DC Drives', 'Jonah Reach', '2006-06-06 09:26:07', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', 'DabZ', 931, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(74, 'GWT', 'Madalena Fidler', '1976-02-10 00:26:35', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 'Youbridge', 431, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(75, 'FS-CD', 'Norene Pringer', '2008-04-17 09:08:59', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 'Fivechat', 670, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(76, 'PPV', 'Ingeborg Adamczyk', '1982-08-12 10:55:29', 'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra', 'Muxo', 896, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(77, 'Flash', 'Chevalier Benasik', '2000-11-30 08:51:17', 'convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo', 'Mynte', 904, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(78, 'Jigs', 'Laurie Birley', '1986-03-11 19:12:29', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac', 'Flipopia', 767, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(79, 'Organizational Behavior', 'Francis Ferrarin', '2006-03-27 20:55:12', 'risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'Demimbu', 976, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(80, 'Winning Others Over', 'Keriann Eede', '2000-01-21 13:56:59', 'metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 'Yoveo', 876, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(81, 'OWL', 'Stafani Hitschke', '2014-02-28 06:39:13', 'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum', 'Dabjam', 568, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(82, 'Zone Alarm', 'Friedrick Kaszper', '1980-01-29 08:53:11', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia', 'Feedfire', 949, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(83, 'Rolling Stock', 'Leonardo Britch', '2016-01-21 06:53:09', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'Realbuzz', 344, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(84, 'Outplacement', 'Ediva Bissatt', '1986-02-10 08:26:36', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 'Jayo', 959, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(85, 'CBORD', 'Jandy Huffy', '1989-09-28 04:22:00', 'et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis', 'Skyndu', 506, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(86, 'Project Management', 'Aeriel Zorer', '1977-04-27 02:30:04', 'nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie', 'Bluejam', 310, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(87, 'Partner Management', 'Sarine Pike', '1988-06-14 16:36:43', 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'Zoonoodle', 334, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(88, 'MXG', 'Bekki Hentzeler', '1997-04-29 20:39:55', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'Oozz', 325, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(89, 'Equity Capital Markets', 'Trey Gosdin', '2014-12-15 23:15:22', 'in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 'Meejo', 788, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(90, 'Global Business Development', 'Elvera Persence', '2014-03-26 23:29:07', 'malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'Ailane', 406, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(91, 'BMC Remedy User', 'Estrellita Schriren', '1976-11-06 14:23:02', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', 'Avamm', 605, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(92, 'GPIB', 'Danica Nansom', '2006-10-09 08:30:18', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', 'Brainverse', 892, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(93, 'Electronic Trading', 'Donalt Kenington', '2016-02-22 04:20:24', 'ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at', 'Rhynoodle', 635, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(94, 'Kalman filtering', 'Tomkin Ciciari', '2008-07-11 08:10:17', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo', 'Demizz', 509, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(95, 'Yahoo Search Marketing', 'Linette Mepsted', '2017-10-20 11:01:30', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum', 'Meetz', 561, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(96, 'Aircraft Design', 'Coriss Shortell', '1985-10-29 15:54:00', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 'Fanoodle', 777, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(97, 'Small Business Marketing', 'Howard Gofford', '1984-06-29 15:31:40', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 'Zoombox', 441, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(98, 'Book Illustration', 'Gifford Gooly', '2007-11-04 18:00:56', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget', 'Eabox', 764, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(99, 'WSUS', 'Nathanial Van Son', '1988-11-16 18:14:51', 'praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', 'Meemm', 872, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(100, 'QIP', 'Ursuline Tamburo', '2002-06-03 08:57:28', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue', 'Wordpedia', 321, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(101, 'Cash Flow Forecasting', 'Tommie Nethercott', '2004-10-18 08:33:51', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue', 'Bubblemix', 529, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(102, 'Aspen HYSYS', 'Terrie Heikkinen', '1992-07-07 02:39:24', 'tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', 'Zoomlounge', 595, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(103, 'CSI', 'Benedicta Glidder', '2009-07-06 02:00:17', 'odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla', 'Zoonder', 850, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(104, 'Akamai', 'Arabelle Burnside', '1999-02-12 20:19:27', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum', 'Jaloo', 544, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(105, 'TCL', 'Lauretta MacNamee', '1973-04-08 03:14:04', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 'Brainbox', 454, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(106, 'FrameMaker', 'Harland Giovannilli', '1973-04-13 17:17:01', 'fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 'Wikibox', 316, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(107, 'Cloud Computing', 'Benn Grushin', '2017-04-29 09:53:53', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'Feedfish', 858, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(108, 'Management by Objectives', 'Kiley Haycock', '2019-04-26 02:49:13', 'risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', 'Skilith', 365, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(109, 'Business Rules', 'Jeffie Aslet', '2000-12-30 07:27:31', 'luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed', 'Trilia', 878, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(110, 'FW', 'Ceil Geffe', '2010-08-04 20:49:31', 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', 'Talane', 887, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(111, 'SSADM', 'Verne Colgan', '1982-11-28 09:27:43', 'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium', 'Rhyzio', 599, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(112, 'Requirements Analysis', 'Saxe Hadeke', '2009-02-18 19:47:23', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 'Yadel', 963, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(113, 'MPLS Networking', 'Gui Gilhool', '1998-03-17 02:38:20', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh', 'Twitternation', 958, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(114, 'DFA', 'Jammal Beaumont', '1998-07-19 20:59:33', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl', 'Mydo', 609, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(115, 'JDE Enterprise One', 'Orbadiah Toffolo', '2008-11-05 12:58:42', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 'Twimbo', 802, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(116, 'Loss Prevention', 'Guy Pasticznyk', '2015-12-07 02:26:26', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', 'Livetube', 543, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(117, 'American Welding Society (AWS)', 'Amelita Espadater', '1983-10-09 16:11:34', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus', 'Trupe', 643, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(118, 'AHP', 'Clywd Bradnocke', '1974-10-07 06:36:13', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', 'Innojam', 692, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(119, 'Operational Risk', 'Edik Hunnicot', '1984-10-30 02:18:49', 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 'Oodoo', 769, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(120, 'Twitter API', 'Hilliary Broggio', '1983-11-11 09:57:14', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus', 'Yodo', 829, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(121, 'Ultrafiltration', 'Husein De Andisie', '1995-07-09 06:43:02', 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', 'Twitternation', 986, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(122, 'VO', 'Pamela Nusche', '2009-07-03 02:04:31', 'et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat', 'Centimia', 742, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(123, 'Objective-C', 'Ariana Upston', '1977-12-02 11:34:47', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', 'Feedspan', 994, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(124, 'GWT', 'Lebbie Waggatt', '1992-07-23 14:02:25', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 'Quatz', 705, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(125, 'RVs', 'Iolande Lindenboim', '2009-02-08 08:59:56', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', 'Yakidoo', 412, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(126, 'OODBMS', 'Violet Habbert', '2004-01-18 07:21:18', 'ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in', 'Plajo', 418, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(127, 'XFS', 'Emmott Dietsche', '2006-06-27 11:27:35', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam', 'Yoveo', 837, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(128, 'Technical Recruiting', 'Vanda Benditt', '1994-05-30 21:20:21', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 'Photobean', 470, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(129, 'Disability Insurance', 'Llewellyn Fison', '1977-04-10 12:07:20', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante', 'Yombu', 952, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(130, 'GMC', 'Nicol Scurlock', '1999-04-14 00:27:38', 'dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', 'Eimbee', 643, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(131, 'Oxygen', 'Ira Olliffe', '2013-07-26 22:53:49', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', 'Devshare', 920, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(132, 'Capital Equipment', 'Crawford Jarvie', '1972-12-13 15:44:59', 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 'Minyx', 366, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(133, 'Sports Medicine', 'Noelani Irnis', '2018-10-06 09:42:40', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'Realbuzz', 877, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(134, 'WPS', 'Helaina Quenell', '1999-06-11 05:52:36', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Thoughtworks', 671, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(135, 'Kaledo', 'Lesli Ciobotaro', '2008-02-01 01:21:17', 'habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 'Voolia', 952, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(136, 'Xactimate', 'Alessandro Hinkensen', '1994-09-22 05:55:20', 'eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque', 'Zazio', 857, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(137, 'OTP', 'Sheff Caitlin', '2018-04-07 23:23:29', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Npath', 704, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(138, 'CDS', 'Brit Pyrah', '1993-10-11 03:04:49', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', 'Kazio', 797, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(139, 'NSN', 'Tine Garred', '2003-09-08 17:15:37', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit', 'Skibox', 758, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(140, 'Koi Ponds', 'Etienne Coggon', '2006-11-27 21:34:07', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis', 'Skilith', 579, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(141, 'SRP', 'Mathias Thornber', '1984-03-13 04:00:58', 'non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien', 'Minyx', 417, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(142, 'RF Scanners', 'Marysa Ramet', '1986-02-12 23:30:02', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum', 'Skidoo', 875, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(143, 'Direct Mail', 'Adara Glander', '2013-05-02 08:15:39', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem', 'Yoveo', 587, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(144, 'RTB', 'Clayton Volcker', '2018-09-10 08:52:51', 'proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere', 'Myworks', 489, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(145, 'PLC', 'Kristen Wicken', '1978-09-08 10:49:43', 'duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', 'Fiveclub', 459, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(146, 'CTL', 'Shena Elsley', '2003-10-18 04:28:10', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', 'Babbleset', 667, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(147, 'HP Blade', 'Gretna Luney', '2015-08-16 19:32:36', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 'Youfeed', 611, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(148, 'EEM', 'Bryana Farthing', '2013-05-29 17:54:18', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', 'Jabberbean', 546, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(149, 'TL1', 'Jedediah Slocum', '1990-12-31 06:03:55', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec', 'Edgeblab', 496, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(150, 'Ajax4JSF', 'Christen Quarrell', '1973-02-03 11:44:23', 'et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', 'Voolith', 872, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(151, 'VXI', 'Ivonne Tuffley', '2018-01-17 05:27:42', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit', 'Fivebridge', 546, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(152, 'OOH', 'Hedda Presley', '2012-02-02 05:54:52', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis', 'Photojam', 390, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(153, 'Microbiology', 'Suzanna Patria', '2013-11-13 00:00:28', 'nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient', 'Brightdog', 386, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(154, 'JDF', 'Weylin Agass', '1978-07-04 11:05:38', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc', 'Oyoba', 840, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(155, 'Servers', 'Eula Taffs', '1975-05-17 15:34:01', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus', 'Tagchat', 472, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(156, 'CPT', 'Doralia Beining', '1973-04-05 18:24:15', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', 'Rhynyx', 603, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(157, 'PVD', 'Deanna Wudeland', '2004-12-16 07:46:39', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', 'Twitterwire', 807, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(158, 'Easytrieve', 'Mikol Caldwall', '1978-10-01 08:48:24', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis', 'Twimbo', 536, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(159, 'FX Animation', 'Vachel Boocock', '2014-06-17 03:36:09', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', 'Photofeed', 899, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(160, 'Tour Management', 'Borden Lowdwell', '1970-10-20 05:21:21', 'duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam', 'Blogtag', 806, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(161, 'Strategic Sourcing', 'Dicky Rarity', '1971-06-05 23:40:01', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue', 'Trunyx', 817, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(162, 'Integrated Marketing', 'Abel Boyn', '1977-06-19 23:50:05', 'sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget', 'Voonder', 415, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(163, 'MLSS', 'Anabal Larcher', '1973-10-06 05:45:06', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 'Wikizz', 477, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(164, 'Online Publishing', 'Vinita Blizard', '2006-04-25 21:26:13', 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', 'Topiclounge', 787, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(165, 'IGMP', 'Luella Clendennen', '1981-08-18 07:31:56', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis', 'Twitternation', 393, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(166, 'IMS DB/DC', 'Quentin Noirel', '1973-08-12 06:57:26', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas', 'Twitterworks', 768, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(167, 'Omgeo Oasys', 'Ladonna Cannicott', '2011-02-01 05:56:53', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque', 'Fatz', 967, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(168, 'Rugby Union', 'Ardys Gilders', '2014-07-12 04:17:37', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', 'Feedspan', 915, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(169, 'Copy Typing', 'Decca Skittles', '1970-07-28 03:01:06', 'maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 'Avavee', 953, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(170, 'Stakeholder Management', 'Nanni Boldt', '1990-01-29 11:13:11', 'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a', 'Wordpedia', 555, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(171, 'T-SQL Stored Procedures', 'Phyllida Harnett', '1983-05-30 10:55:19', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim', 'Snaptags', 480, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(172, 'Wildlife', 'David Blazi', '1979-03-07 21:34:21', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', 'Janyx', 981, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(173, 'Chi Nei Tsang', 'Gris Peacop', '2004-06-27 05:55:07', 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu', 'Oyope', 390, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(174, 'JUNOS', 'Teresa Shearwood', '1976-10-16 01:30:33', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed', 'Feedmix', 701, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(175, 'Adobe Acrobat', 'Roderic Connolly', '2006-12-04 11:25:35', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'Miboo', 833, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(176, 'ZigBee', 'Piper Reaman', '1995-04-10 06:12:05', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', 'Tagpad', 734, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(177, 'BMC Remedy Administration', 'Beauregard Crutchfield', '1970-02-27 20:48:27', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 'Oozz', 823, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(178, 'BGAN', 'Hasheem Challes', '1980-07-22 20:24:53', 'consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit', 'Kanoodle', 550, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(179, 'Ethical Hacking', 'Melita Leveridge', '1985-01-27 06:58:16', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'Twitterwire', 612, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(180, 'IRS Enrolled Agent', 'Tommie Summergill', '2003-02-14 06:53:30', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 'Twitternation', 751, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(181, 'PwC TeamMate', 'Goddart De Gregorio', '2005-04-12 12:38:45', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', 'Feedfire', 499, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(182, 'TCM', 'Mendie Taillant', '2010-08-13 06:47:33', 'elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', 'Brightbean', 878, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(183, 'Emerging Markets', 'Ebonee Dottrell', '2015-11-05 15:58:52', 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque', 'Centizu', 833, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(184, 'AHU', 'Saunderson Coles', '2015-12-28 12:17:37', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in', 'Pixoboo', 653, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(185, 'DMVPN', 'Natassia Skeels', '1976-12-31 02:10:58', 'morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 'Skynoodle', 432, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(186, 'MDS', 'Hill Whewell', '1995-02-17 18:00:04', 'et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 'Zoozzy', 818, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(187, 'Jitter', 'Ira Glendenning', '1977-12-14 07:36:41', 'nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non', 'Jaloo', 860, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(188, 'McKesson PACS', 'Rikki Thomsson', '2012-04-12 00:37:41', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh', 'Devpoint', 354, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(189, 'CD Mastering', 'Vince Widmore', '2018-04-05 23:11:01', 'lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac', 'Skyble', 756, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(190, 'Civil Rights', 'Jacqueline Iorio', '1985-04-29 00:43:55', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'Babbleopia', 499, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(191, 'Cisco MDS SAN switches', 'Everett Veazey', '2006-11-08 18:39:34', 'quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est', 'Centidel', 985, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(192, 'GS1', 'Chase Geill', '1996-03-16 08:03:39', 'vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce', 'Jayo', 428, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(193, 'CSCS', 'Farand Kingstne', '2005-07-11 15:50:42', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', 'Myworks', 347, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(194, 'Juvederm', 'Thorn Kilshall', '1987-01-02 08:42:09', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 'Vimbo', 319, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(195, 'ESL', 'Korrie Gillum', '1975-10-31 10:12:19', 'libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', 'Fiveclub', 349, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(196, 'Cost Benefit', 'Letta Gaffney', '1981-04-19 12:32:41', 'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa', 'Brainverse', 961, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(197, 'MQC', 'Omar Siverns', '1978-09-22 04:29:13', 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer', 'Mynte', 984, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(198, 'Special Events Coordination', 'Lora Staton', '2018-03-03 13:08:20', 'non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet', 'Topiczoom', 643, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(199, 'NBAP', 'Scot Paolucci', '2008-05-10 07:38:26', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut', 'Devify', 619, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(200, 'Ghost Imaging', 'Marjorie Cowthart', '1985-03-17 18:41:25', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus', 'Ntag', 691, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(201, 'gSOAP', 'Rosemonde Copeland', '1990-03-01 20:17:59', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet', 'Eamia', 669, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(202, 'Supply Chain', 'Sarah Antyshev', '1996-08-12 00:10:25', 'mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 'Thoughtsphere', 948, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(203, 'DMAIC', 'Mic Jenkinson', '2016-01-30 08:59:57', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 'Trupe', 943, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(204, 'FF&amp;E Procurement', 'Chad Frissell', '1996-10-31 01:48:31', 'luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit', 'Zoozzy', 842, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(205, 'HP Data Protector', 'Lanni Nani', '2014-08-05 08:43:48', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae', 'Meejo', 550, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(206, 'Change Management', 'Lammond Marchent', '2007-05-27 10:51:50', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'Zooxo', 511, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(207, 'Fortran', 'Marie-jeanne Jollands', '2011-03-11 09:06:37', 'id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', 'Zoonder', 934, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(208, 'MMO', 'Hamish Duffill', '2001-06-09 14:52:39', 'magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', 'Jayo', 385, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(209, 'Judicial Review', 'Beverlie Pyrton', '1984-12-06 10:36:34', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 'Zoombeat', 853, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(210, 'Start-ups Management', 'Marylynne Crevagh', '1996-08-23 16:44:49', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum', 'Oyope', 638, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(211, 'IFM', 'Andy Ritch', '2003-10-01 08:21:20', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris', 'Blogtag', 418, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(212, 'VMware ESX', 'Rahel Giorgione', '1987-09-04 12:50:10', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', 'Zoozzy', 948, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(213, 'GMDSS', 'Guenna Pargetter', '1993-10-30 12:54:21', 'pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 'Kazio', 808, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(214, 'Ukulele', 'Grenville Negal', '2018-03-21 20:08:25', 'turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero', 'Jazzy', 717, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(215, 'BJT', 'Willyt Hartwell', '2010-03-05 06:19:01', 'non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut', 'Youopia', 673, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(216, 'Tumblr', 'Theodosia Roscher', '2017-09-28 06:15:06', 'justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', 'Feedfire', 843, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(217, 'Java RMI', 'Daisi Retallack', '1987-06-18 00:10:41', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium', 'Zoomcast', 994, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(218, 'Team Management', 'Martie Yabsley', '2018-01-17 06:37:39', 'consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien', 'Realbridge', 848, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(219, 'Blackberry OS', 'Shandee Whaley', '1980-10-09 06:57:57', 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'Topicstorm', 687, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(220, 'Behavioral Health', 'Leonelle Beevors', '2003-08-20 23:41:08', 'vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', 'Babbleset', 470, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(221, 'Molecular Dynamics', 'Doyle Sich', '2018-12-10 11:29:36', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', 'Vinte', 430, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(222, 'Keratin Treatment', 'Jocelin Freake', '1997-10-17 15:28:51', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', 'Quatz', 454, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(223, 'Sports Writing', 'Calvin Edgeler', '1979-01-26 10:35:36', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', 'Photospace', 840, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(224, 'Zeta Potential', 'Fan Camolli', '2007-06-27 22:37:08', 'nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', 'Miboo', 586, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(225, 'SPSS', 'Brunhilde Rathborne', '2019-10-11 01:12:20', 'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis', 'Zoozzy', 714, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(226, 'DL1', 'Gussie Hobbing', '2002-01-28 07:51:52', 'maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', 'Gabvine', 929, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(227, 'Computer Science', 'Lorianne De Cleen', '1987-04-28 10:15:00', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', 'Buzzshare', 663, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(228, 'On-Set VFX Supervision', 'Edgard Liver', '1999-07-31 03:00:58', 'nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus', 'Rhybox', 547, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(229, 'MLA', 'Jozef Kobes', '1972-11-15 09:25:48', 'congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', 'Snaptags', 510, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(230, 'Wastewater Treatment', 'Carina Dulwich', '2005-08-06 04:29:40', 'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id', 'Gigabox', 540, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(231, 'UB04', 'Wenonah Sabathe', '1983-01-13 18:13:36', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 'Skinder', 378, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(232, 'LAN-WAN', 'Anica Miettinen', '1976-11-06 09:10:52', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'Myworks', 966, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(233, 'European Markets', 'Lettie Dudderidge', '2011-07-20 14:29:59', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 'Flipopia', 867, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(234, 'Sleep Apnea', 'Gertrudis Hardinge', '1978-07-30 02:18:24', 'libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum', 'Fivebridge', 500, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(235, 'Sleep Disorders', 'Fielding Barroux', '2004-11-01 04:15:11', 'id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', 'Zoomcast', 664, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(236, 'Lymphatic Drainage', 'Lin Astall', '1993-05-07 01:34:46', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 'InnoZ', 712, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(237, 'Non-profit Leadership', 'Audrye Heller', '2007-06-25 03:02:44', 'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non', 'Youfeed', 497, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(238, 'AC Nielsen', 'Owen Spaducci', '1986-06-20 21:11:23', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', 'Skalith', 843, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(239, 'Automation', 'Talya Boath', '1980-08-18 23:01:37', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin', 'Aivee', 784, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(240, 'Kernel', 'Rowena Isted', '2019-08-14 19:33:02', 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci', 'Kayveo', 669, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(241, 'BST', 'Billie Hovington', '1992-09-30 12:53:09', 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', 'Thoughtbeat', 774, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(242, 'IRI', 'Conny Cleaver', '1979-11-07 09:05:04', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'Tagtune', 406, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(243, 'LDRPS', 'Bebe Lipscomb', '2017-06-13 23:18:28', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', 'Twitterworks', 733, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(244, 'Sqoop', 'Cob Payle', '1981-03-20 20:38:01', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam', 'Youfeed', 323, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(245, 'nCode', 'Lorianne Redrup', '2001-10-21 12:52:29', 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie', 'Skilith', 792, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(246, 'SSAS 2008', 'Priscilla Penhaleurack', '1996-02-28 04:28:15', 'vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 'Photolist', 402, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(247, 'ESL', 'Jean Doni', '1974-11-03 22:27:51', 'id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a', 'Linkbridge', 797, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(248, 'Ektron Content Management System', 'Cindra Fleetwood', '2003-07-04 15:38:37', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', 'Ntag', 905, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(249, 'Zoology', 'Micki Lapthorn', '1972-05-21 09:03:40', 'dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis', 'Jabberstorm', 302, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(250, 'JTest', 'Maureen Sidgwick', '1992-03-17 07:04:02', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'Flipbug', 763, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(251, 'MDS', 'Carrissa Greasley', '1971-02-28 21:20:25', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Rooxo', 788, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(252, 'eGate', 'Lyssa Ledster', '1972-05-24 00:39:32', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero', 'Zooveo', 556, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(253, 'UI Automation', 'Flossie Rankling', '1980-06-08 15:59:36', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut', 'Zoonder', 648, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(254, 'Telephone Skills', 'Vittorio Sokell', '1982-04-29 10:38:41', 'velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit', 'Latz', 329, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(255, 'Venue Management', 'Marjorie Bridie', '1997-10-24 07:33:02', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus', 'Trudeo', 663, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(256, 'ECDL Certification', 'Felipa Frensche', '2016-10-08 08:49:56', 'urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat', 'Gigazoom', 720, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(257, 'VC#', 'Joanie Wackley', '1982-02-18 17:29:01', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse', 'Topicstorm', 327, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(258, 'XML Databases', 'Cyb McMurthy', '1982-01-28 14:41:33', 'nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 'Yoveo', 481, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(259, 'XPDL', 'Dacy Gratton', '1983-01-15 03:10:51', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', 'Dablist', 801, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(260, 'Store Operations', 'Lauritz Vowels', '2005-12-13 14:35:51', 'sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'Shuffledrive', 728, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(261, 'Store Management', 'Weider Deackes', '1981-02-26 09:41:09', 'suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet', 'Aimbo', 490, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(262, 'CNC Programing', 'Haslett Faughny', '2011-07-06 23:12:26', 'vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', 'Kayveo', 925, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(263, 'Accounting', 'Filmore Unwins', '2012-01-03 14:22:02', 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', 'Quatz', 836, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(264, 'Military Justice', 'Asia Risen', '1993-08-16 15:49:24', 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'Youspan', 617, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(265, 'NS-2', 'Myrvyn Chillingsworth', '1973-07-08 04:32:37', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh', 'Realcube', 504, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(266, 'Registered Nurses', 'Wolfgang Beswick', '2015-05-06 03:40:02', 'nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', 'Muxo', 798, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(267, 'Behavior Management', 'Wren Brach', '1991-07-07 19:44:39', 'ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 'Tagfeed', 415, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(268, 'QA Engineering', 'Winfield Leyband', '2017-02-28 10:05:30', 'volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'Bubblemix', 708, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(269, 'Member of IEEE', 'Trisha Walkingshaw', '2011-01-19 15:48:11', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse', 'Zoomzone', 863, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(270, 'FMS', 'Sholom MacElane', '2010-06-05 04:01:59', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi', 'Rhyloo', 664, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(271, 'DBs', 'Gavin Ollive', '1991-03-02 12:56:34', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed', 'Quatz', 778, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(272, 'KWI', 'Friedrich Romney', '1987-09-16 09:21:33', 'amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', 'Eimbee', 919, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(273, 'LDA', 'Frazier Bennellick', '1980-03-21 11:03:16', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec', 'Realbridge', 892, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(274, 'SMT Kingdom', 'Weylin Ciccerale', '2000-09-20 04:15:59', 'blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut', 'Kamba', 611, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(275, 'Assurance', 'Gabie Burrows', '1981-03-04 04:39:05', 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', 'Izio', 325, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(276, 'RMX', 'Corrine Orteaux', '1983-10-29 18:48:57', 'amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 'Riffpedia', 689, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(277, 'global HCM', 'Joletta Bower', '1995-09-20 06:25:30', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate', 'Gigazoom', 906, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(278, 'Kitchen &amp; Bath Design', 'Jedd Stannard', '1989-08-04 22:14:30', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus', 'Ozu', 440, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(279, 'AJAX', 'Cam Accombe', '1971-03-06 01:40:44', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'Pixoboo', 710, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(280, 'PMB', 'Danny Thandi', '1970-03-02 06:25:04', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec', 'Yakidoo', 885, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(281, 'Business Intelligence Tools', 'Charlena Ismead', '1995-01-24 20:25:03', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a', 'Rhynoodle', 851, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(282, 'CMTS', 'Alie Giveen', '2013-12-08 10:33:54', 'ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in', 'Zazio', 460, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(283, 'HTML Emails', 'Piper Gilvary', '1975-08-14 04:54:12', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', 'Gigabox', 639, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(284, 'Journals', 'Bebe McCreath', '1993-03-07 14:42:39', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 'Zoombox', 387, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(285, 'GBS', 'Faun Ducarne', '2018-12-24 04:28:00', 'vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', 'Yakitri', 750, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(286, 'IFRS', 'Cristy O''Nions', '1971-10-17 14:02:55', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 'Jamia', 373, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(287, 'AED', 'Bordie Sonnenschein', '2015-03-01 20:31:21', 'amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 'Thoughtbeat', 716, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(288, 'MS Excel Pivot Tables', 'Erhart Cleverley', '1997-02-17 11:54:02', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus', 'Babblestorm', 427, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(289, 'Osteoporosis', 'Agneta Doy', '1992-11-27 00:33:16', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', 'Plambee', 820, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(290, 'Wills', 'Mabelle Pavlenko', '1995-10-17 00:39:18', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis', 'Yakijo', 390, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(291, 'Sports Nutrition', 'Ulrich Loukes', '1993-07-02 07:54:09', 'eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'Zoonder', 969, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(292, 'Mechanical Engineering', 'Julius Hovie', '1982-01-30 08:07:12', 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede', 'Twimbo', 406, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(293, 'CCNP', 'Millisent Ellesmere', '1973-03-28 17:32:30', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu', 'JumpXS', 376, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(294, 'Spot TV', 'Arlee M''Quhan', '1976-09-11 09:41:18', 'pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis', 'Shufflebeat', 921, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(295, 'Clinical Trials', 'Georgia Causton', '2016-10-30 17:04:06', 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'Buzzshare', 348, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(296, 'Luxury Homes', 'Ariel Toffaloni', '1982-10-02 01:26:09', 'proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 'Jetwire', 824, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(297, 'IP PBX', 'Lincoln Vlies', '2012-02-10 02:36:29', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 'Cogidoo', 580, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(298, 'Easements', 'Klaus O''Lenechan', '1972-06-01 13:56:05', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', 'Geba', 523, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(299, 'eGate', 'Ulises Eddowis', '2006-03-02 03:56:53', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac', 'Eamia', 551, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(300, 'IQ Navigator', 'Fidole Davidovsky', '1983-11-15 07:41:55', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', 'Mydeo', 911, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(301, 'XSI', 'Evan Boase', '1988-10-15 01:58:16', 'morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', 'Oyoba', 526, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(302, 'Financial Risk Management', 'Bab Stenner', '1986-08-20 08:45:38', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum', 'Oyonder', 645, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(303, 'Windows 7', 'Phillis McRamsey', '2009-12-21 03:51:24', 'velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor', 'Meetz', 555, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(304, 'Market Analysis', 'Denys Creaven', '1988-12-26 12:37:05', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', 'Wikizz', 911, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(305, 'CNC', 'Wilone Espinet', '2003-07-18 09:48:31', 'nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit', 'Photospace', 310, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(306, 'OData', 'Maryanne Matevushev', '1978-06-15 13:00:35', 'suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'Yamia', 669, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(307, 'Zimbra', 'Gale Reignould', '1988-03-17 23:58:30', 'volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'Agivu', 837, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(308, 'Geometric Dimensioning &amp; Tolerancing', 'Frazier Ackenhead', '1999-09-20 17:31:12', 'parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id', 'Quaxo', 451, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(309, 'Educational Leadership', 'Twila Diperaus', '1993-11-26 06:11:08', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede', 'Avavee', 338, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(310, 'FPGA', 'Glyn Bolstridge', '1977-04-28 04:14:53', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', 'Gigazoom', 701, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(311, 'Medical Illustration', 'Charlotte Yanov', '1975-12-10 15:32:00', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 'Dablist', 657, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(312, 'Oil on Canvas', 'Joe Dering', '2002-10-12 07:03:02', 'non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 'Edgeblab', 420, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(313, 'Cd', 'Reider Hickeringill', '1998-06-06 13:33:10', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 'Fivechat', 553, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(314, 'iFix', 'Delphinia Rudsdale', '1979-03-24 04:17:57', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum', 'Katz', 866, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(315, 'ALM', 'Shelagh Seamon', '1973-04-06 18:00:35', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse', 'Meejo', 490, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(316, 'Slackware', 'Maury Gibbard', '1972-02-06 01:32:26', 'donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien', 'Gabcube', 359, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(317, 'AJAX Frameworks', 'Rahal Laroze', '2011-06-25 13:26:53', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'InnoZ', 385, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(318, 'Economics', 'Rhys Sawer', '2019-08-03 16:38:31', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet', 'Reallinks', 561, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(319, 'VA Loans', 'Fitz Eudall', '1978-08-22 20:28:12', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', 'Flipbug', 597, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(320, 'Cell Biology', 'Alessandra Bonsall', '2002-11-02 14:17:38', 'duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at', 'Agimba', 598, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(321, 'RRP', 'Frants Enefer', '2017-09-24 13:57:35', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'Zooxo', 784, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(322, 'Fund Administration', 'Felicdad Mosten', '2004-02-25 16:45:19', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla', 'Pixoboo', 513, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(323, 'AHU', 'Culver Extil', '2001-12-28 18:11:03', 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio', 'Yakidoo', 309, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(324, 'PVST+', 'Ban Crotty', '2018-02-07 12:03:22', 'at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros', 'Devbug', 729, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(325, 'Personal Development', 'Susette Arntzen', '2019-03-18 22:59:10', 'consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', 'Roodel', 551, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(326, 'Union', 'Thelma Evitts', '1977-07-08 01:26:30', 'justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', 'Bluezoom', 655, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(327, 'McAfee', 'Robby Scarffe', '1972-02-07 07:32:17', 'vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a', 'Mynte', 941, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(328, 'Bluetooth', 'Cedric De Lacey', '2017-08-16 07:30:10', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien', 'Topicshots', 362, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(329, 'Fine Art', 'Isador Vanichkov', '1974-03-28 19:57:12', 'porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', 'Twitterworks', 862, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(330, 'Vacation Homes', 'Nancie Todari', '2009-05-31 07:53:50', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', 'Yacero', 927, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(331, 'GPS Navigation', 'Barron Pascow', '1993-05-07 12:30:25', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem', 'Mydo', 486, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(332, 'Visual Studio', 'Merrick Ilsley', '2005-05-10 01:18:19', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla', 'Jetpulse', 525, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(333, 'Jazz Dance', 'Alecia Bircher', '2015-06-15 14:38:21', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non', 'Kwimbee', 614, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(334, 'Successful Business Owner', 'Abbe Danick', '1982-03-12 21:30:24', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 'Tagtune', 477, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(335, 'Ticketing', 'Vail Mingo', '1990-09-01 11:02:29', 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in', 'Devify', 920, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(336, 'IBM Mainframe', 'Derron McNelly', '2012-01-21 17:35:05', 'quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 'Pixonyx', 624, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(337, 'z/VM', 'Myrtle Wagstaffe', '1980-05-23 07:37:54', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', 'Fadeo', 359, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(338, 'Social TV', 'Napoleon Persehouse', '2013-05-29 16:25:47', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 'Fivebridge', 667, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(339, 'EJB', 'Michelle Carmichael', '1995-11-20 16:30:33', 'massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 'Zazio', 353, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(340, 'Pigments', 'Lezley Hunting', '1980-04-05 08:40:50', 'massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 'Voonte', 810, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(341, 'LTD', 'Armand Donn', '2006-01-01 18:20:34', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas', 'Babbleset', 456, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(342, 'FTTP', 'Garrik Jaulmes', '1991-06-07 19:17:44', 'sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', 'Skiba', 698, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(343, 'Recruiting', 'Pen Stenyng', '1973-12-10 02:10:54', 'blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae', 'DabZ', 736, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(344, 'Yard Work', 'Kayle Moncrefe', '1975-07-17 09:30:49', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', 'Feedfire', 784, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(345, 'Therapeutic Massage', 'Jose Cretney', '2002-12-20 18:44:56', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', 'Oodoo', 352, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(346, 'Fume FX', 'Jinny Menier', '2016-05-26 00:23:22', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'Dabvine', 763, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(347, 'Kundalini', 'Almeta Mandry', '1999-05-30 23:07:44', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec', 'Tagtune', 619, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(348, 'CFII', 'Trula Davie', '1982-12-17 13:01:53', 'vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut', 'Katz', 612, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(349, 'PDI', 'Fonsie Exer', '1989-03-14 17:48:47', 'amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', 'Linklinks', 956, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(350, 'Sea Kayaking', 'Nap Hallworth', '1984-05-06 01:01:17', 'lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 'Kwideo', 632, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(351, 'Land Use', 'Kore Casely', '1974-03-20 13:23:31', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt', 'Mynte', 602, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(352, 'RHEL', 'Vikky Ciccottini', '2001-01-28 10:01:11', 'sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus', 'Feednation', 648, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(353, 'Bathrooms', 'Gerrie Huske', '1973-04-16 22:39:01', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', 'Roombo', 991, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(354, 'Singing', 'Violet Van Saltsberg', '1996-07-20 15:54:26', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'Vinte', 976, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(355, 'Bluetooth', 'Leicester Cogdell', '1995-03-24 08:55:08', 'sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla', 'Voonder', 947, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(356, 'VSEO', 'Bard De Bellis', '2019-07-10 19:46:43', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', 'Dynabox', 951, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(357, 'Compliance Oversight', 'Maxine Dictus', '1972-11-12 06:15:01', 'ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum', 'Jabberstorm', 477, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(358, 'Observational Astronomy', 'Elia Tailby', '1977-04-07 12:51:24', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et', 'Jatri', 737, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(359, 'Kaseya', 'Hendrick Biasini', '1974-09-15 04:33:33', 'donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 'Dynabox', 513, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(360, 'RF Design', 'Muffin Lowers', '1993-09-27 05:07:57', 'dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'Lazz', 350, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(361, 'HDI Support Center Analyst', 'Georgiana Breitler', '1990-03-15 18:14:00', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet', 'Roombo', 729, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(362, 'Order Fulfillment', 'Arlinda Pirson', '2002-10-01 10:53:43', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', 'Skyba', 540, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(363, 'XCOM', 'Gene Jakeman', '2011-10-28 14:54:43', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat', 'Gigabox', 440, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(364, 'VCAT', 'Ranique Sheehan', '2012-11-05 23:16:53', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', 'Photolist', 573, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(365, 'LAN Switching', 'Nealy Ducker', '1982-10-02 07:10:18', 'sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea', 'Leexo', 684, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(366, 'Medical Affairs', 'Pavel Stoyell', '2006-04-29 17:53:46', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 'Tazz', 798, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(367, 'VLSM', 'Britt Leyshon', '1991-05-10 18:15:25', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin', 'Flipstorm', 742, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(368, 'TTCN', 'Flori Kornacki', '2006-12-13 01:32:04', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', 'Tazz', 972, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(369, 'Light Rail', 'Dante Landor', '1980-08-30 03:47:42', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non', 'Kayveo', 722, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(370, 'SGSN', 'Clayton Firman', '1995-09-24 22:13:56', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti', 'Tagtune', 690, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(371, 'Blender', 'Maryanna Corkill', '2002-01-15 21:02:17', 'varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum', 'Twiyo', 602, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(372, 'Pharmacy Benefit Management', 'Rabi Nobbs', '1976-08-18 16:25:51', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', 'Lazzy', 730, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(373, 'Underwriting', 'Xymenes Membry', '1997-05-13 04:05:48', 'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam', 'Eidel', 586, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(374, 'Fine Art Photography', 'Niko MacDowall', '2004-10-05 09:45:03', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat', 'Katz', 307, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(375, 'Molecular Biology', 'Dugald Rickerd', '2005-06-08 19:44:55', 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras', 'Blogspan', 312, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(376, 'Construction Management', 'Lisbeth Keizman', '1972-12-16 14:57:51', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus', 'Zooveo', 925, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(377, 'Wellbeing', 'Wenda Tarquini', '1980-07-27 01:32:02', 'faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', 'Youopia', 689, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(378, 'Sketching', 'Craggy Ceresa', '1988-05-28 16:40:18', 'vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis', 'Yodoo', 794, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(379, 'BMC Portal', 'Quentin Bus', '2019-11-09 16:17:59', 'enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices', 'Yakitri', 960, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(380, 'Oxygen Therapy', 'Dre Leechman', '2003-02-21 13:09:47', 'consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est', 'Roombo', 671, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(381, 'PyQt', 'Ulises Savery', '1971-06-17 19:38:25', 'gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 'Yodoo', 502, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(382, 'Rsync', 'Bride Cheshir', '1983-03-29 07:04:19', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula', 'Voonyx', 558, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(383, 'TFF', 'Had Kinder', '2012-11-25 23:16:54', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus', 'Mycat', 692, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(384, 'Oracle OLAP', 'Andreas Lacey', '1992-12-09 01:26:11', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', 'Topicblab', 441, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(385, 'MWS', 'Kylynn Kenningham', '2015-07-27 02:14:16', 'nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien', 'Wikivu', 691, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(386, 'MXG', 'Garwood Benoi', '1980-02-26 04:48:33', 'in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'Dabshots', 305, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(387, 'Financial Accounting', 'Yasmin Andrejs', '2001-06-10 01:58:52', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor', 'Realbridge', 591, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(388, 'Spring MVC', 'Wally Tredgold', '1983-09-10 03:43:58', 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis', 'Skinix', 994, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(389, 'Zines', 'Nerissa Husselbee', '1984-05-24 09:50:18', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus', 'Realfire', 566, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(390, 'New Home Sales', 'Harmon Gilmartin', '1978-10-06 23:34:27', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer', 'Meedoo', 654, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(391, 'Axis2', 'Allix Philpault', '2005-08-18 14:46:46', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar', 'Viva', 622, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(392, 'Direct Sales', 'Harcourt Matiewe', '1976-05-03 07:10:55', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget', 'Oyondu', 376, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(393, 'JGrasp', 'Irving Annett', '1996-09-03 08:10:36', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'Flashdog', 301, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(394, 'AMBA AHB', 'Herb Scutchin', '1985-05-07 07:09:13', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus', 'Skinder', 331, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(395, 'LLQP', 'Alyss Duprey', '2011-07-30 09:40:35', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', 'Tagfeed', 657, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(396, 'AU', 'North Zoppie', '1997-10-22 18:39:54', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', 'Yabox', 886, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(397, 'IFRS', 'Keely Aristide', '1998-03-25 23:22:43', 'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 'Twimm', 353, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(398, 'Accounts Receivable', 'Kristel Gillice', '2010-05-30 11:44:02', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla', 'Gevee', 769, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(399, 'Sheet Metal', 'Marten Semper', '1981-01-12 22:09:43', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 'Fatz', 553, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(400, 'Shopping Centers', 'Brigham Kitteridge', '1995-08-08 10:47:16', 'duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum', 'Zoomlounge', 907, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(401, 'TF-CBT', 'Thomasine Batkin', '1987-05-26 23:02:47', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', 'Gevee', 399, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(402, 'Hydraulic Fracturing', 'Nickola Jeannot', '1997-02-21 03:11:57', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque', 'Youopia', 976, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(403, 'Interior Architecture', 'Caron Isacsson', '1998-11-12 16:17:39', 'a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea', 'Fatz', 735, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(404, 'VRU', 'Nert Dominey', '2010-05-31 08:21:46', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', 'Jaxspan', 829, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(405, 'RTL Verification', 'Trevar Jerke', '1977-12-12 20:40:36', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', 'Vipe', 861, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(406, 'Executive Protection', 'Dunn Sodory', '1983-03-07 22:56:47', 'sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', 'Topicshots', 622, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(407, 'Biomedical Engineering', 'Royal Brower', '1987-06-28 04:42:47', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci', 'Oyoba', 819, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(408, 'Workforce Management', 'Jacky Kinnon', '1975-10-28 20:51:38', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', 'Oba', 825, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(409, 'TCAP', 'Rickie Crew', '1977-02-13 19:50:38', 'lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Tagopia', 600, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(410, 'Book Design', 'Gipsy Tassell', '1995-09-09 19:10:21', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum', 'Youfeed', 559, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(411, 'PDP', 'Philip Sanpere', '1991-09-07 09:55:02', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 'Eayo', 565, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(412, 'Efficent', 'Janot Tomsa', '2001-10-06 12:24:37', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', 'Babblestorm', 791, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(413, 'Silverlight', 'Chelsy Northage', '2007-03-27 23:18:34', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit', 'Photospace', 358, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(414, 'OMA', 'Alix Heathfield', '1989-03-28 22:23:00', 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', 'Yozio', 437, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(415, 'SNA', 'Eberto Hassan', '2004-04-19 18:47:40', 'odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 'Dynava', 674, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(416, 'Microsoft Exchange', 'Flory Scattergood', '2007-06-22 16:37:29', 'ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis', 'Blogtags', 799, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(417, 'Yardi Property Management', 'Bertrand Tilley', '2011-07-30 10:48:41', 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', 'Roodel', 340, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(418, 'Cash Handling', 'Rica Feasey', '1984-01-14 09:40:16', 'faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac', 'Geba', 906, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(419, 'Petrochemical', 'Sigrid Spohrmann', '2005-01-18 04:59:02', 'felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', 'Skiba', 906, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(420, 'GSLC', 'Ermengarde Kennon', '2006-10-09 20:53:50', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in', 'Voonix', 513, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(421, 'MDOP', 'Mommy Penhallurick', '1996-02-02 19:38:26', 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu', 'Jamia', 707, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(422, 'Yacht Racing', 'Darby Whordley', '1978-02-28 23:58:11', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin', 'Feednation', 672, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(423, 'Mycobacteriology', 'Avis Ashman', '1976-11-03 06:07:30', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula', 'Myworks', 700, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(424, 'Zend Certified Engineer', 'Saloma Prue', '1979-09-25 09:33:54', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam', 'Gabcube', 418, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(425, 'Slide Preparation', 'Shalna Huntington', '1973-06-28 02:58:23', 'quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem', 'Brightdog', 761, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(426, 'EIM', 'Redd Giovannardi', '1991-07-08 05:11:39', 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam', 'Brainverse', 489, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(427, 'QlikView', 'Myrta Chatterton', '1981-08-31 05:29:01', 'condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut', 'Skajo', 315, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(428, 'Hair Care', 'Field Culshaw', '1975-02-11 12:07:28', 'amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', 'Rhycero', 945, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(429, 'Aeroelasticity', 'Tasia Hutsby', '1976-05-14 11:32:21', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo', 'Gabcube', 483, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(430, 'FTL', 'Channa Blissitt', '1970-02-06 17:17:31', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 'Brightdog', 446, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(431, 'VMware View', 'Any Jaqueminet', '1985-06-25 21:27:20', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'Jaxworks', 343, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(432, 'MbUnit', 'Maren Hughman', '2014-05-18 07:45:20', 'vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', 'Jaxnation', 554, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(433, 'Yield Management', 'Eirena Skull', '2009-12-02 01:45:05', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', 'Tagcat', 344, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(434, 'Agile Testing', 'Ranice Geelan', '1982-01-16 20:58:54', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 'Mynte', 636, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(435, 'MyEclipse', 'Grata Cutmere', '2007-01-01 08:59:05', 'justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 'Linklinks', 856, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(436, 'Tier II Reporting', 'Giavani Haliday', '2002-04-04 10:44:38', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis', 'Tanoodle', 847, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(437, 'Ebooks', 'Siana Holde', '2007-12-16 06:41:16', 'eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt', 'Skinder', 642, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(438, 'Oil &amp; Gas Law', 'Boone Calley', '1981-02-05 16:47:33', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', 'Livetube', 755, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(439, 'Logic Pro', 'Ashley Slogrove', '1970-11-25 14:06:25', 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin', 'Rhyzio', 364, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(440, 'Fashion Buying', 'Doy Plum', '1987-05-31 16:28:06', 'rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', 'Kazio', 371, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(441, 'VAT', 'Colas Vernazza', '1991-05-18 07:46:13', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', 'Aivee', 940, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(442, 'PDP', 'Win Kalberer', '1972-02-21 23:16:28', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis', 'Photobean', 307, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(443, 'Fine Dining', 'Pyotr Sheridan', '1972-05-17 12:55:10', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam', 'Kwideo', 715, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(444, 'TMDLs', 'Rozina Pleuman', '2001-12-20 09:45:39', 'eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', 'Wordpedia', 628, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(445, 'Swaps', 'Ailene Arend', '1977-11-29 01:12:48', 'interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id', 'InnoZ', 574, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(446, 'VFX Supervision', 'Ingaborg Scrauniage', '1995-06-03 05:43:14', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti', 'Quinu', 983, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(447, 'TNS', 'Katlin Drillingcourt', '2000-12-05 18:21:59', 'sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 'Riffpedia', 521, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(448, 'Americans with Disabilities Act', 'Rickie Dunbobin', '1980-09-14 18:05:01', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', 'Latz', 457, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(449, 'Recognition Awards', 'Esther Sicha', '1988-12-07 07:26:07', 'ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 'Gabtune', 664, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(450, 'PMC', 'Rodrigo Shillabear', '1970-06-27 10:27:26', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris', 'Lazzy', 730, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(451, 'GTK+', 'Sigismund Jenny', '2018-08-29 18:29:10', 'ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum', 'Quatz', 598, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(452, 'WHMIS', 'Lurleen Whittington', '2014-05-11 14:00:54', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 'Jaxnation', 620, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(453, 'Inspection', 'Sybila Copcott', '1985-01-26 20:25:03', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', 'Yoveo', 889, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(454, 'GFAS', 'Paulie Safont', '2004-09-07 22:28:47', 'urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas', 'Thoughtbeat', 432, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(455, 'Zillow', 'Ilaire Burdytt', '2002-01-21 23:44:47', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate', 'Photospace', 884, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(456, 'SSADM', 'Dayle Coraini', '1988-10-30 02:07:08', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi', 'Linktype', 937, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(457, 'Tissue Culture', 'Land Farlamb', '1981-05-19 11:23:39', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', 'Demimbu', 807, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(458, 'Estimates', 'Enriqueta Kenwrick', '2016-12-10 07:17:23', 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et', 'BlogXS', 890, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(459, 'RSL', 'Bernadette Margerrison', '2017-01-04 13:54:39', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet', 'Edgewire', 886, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(460, 'Summation iBlaze', 'Lyon Allso', '2015-06-05 22:54:52', 'non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', 'Yakijo', 699, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(461, 'NSF', 'Dulcinea Naisbitt', '2000-11-30 20:43:49', 'ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum', 'Mybuzz', 519, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(462, 'Visual Communication', 'Atlante Lightbourne', '1985-06-12 18:37:46', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede', 'Rooxo', 427, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(463, 'EH&amp;S Compliance', 'Bliss Cosbee', '1983-06-22 10:42:22', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel', 'Brightdog', 584, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(464, 'Slackware', 'Miguela Jorgesen', '1997-10-10 01:20:24', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Realcube', 637, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(465, 'System Testing', 'Trumann Barhem', '1992-04-29 06:39:28', 'orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', 'InnoZ', 364, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(466, 'DJ', 'Corbie Hymers', '1995-10-04 06:22:52', 'nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', 'Oozz', 638, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(467, 'SFTP', 'Eugenio Fist', '2014-02-06 01:28:24', 'aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla', 'Jaxspan', 971, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(468, 'Basel II', 'Reece Loakes', '2017-02-06 04:25:37', 'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes', 'Rhyzio', 707, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(469, 'NPR Report Writing', 'Piggy Shallcross', '1993-07-26 02:14:55', 'mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 'Brightdog', 665, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(470, 'CD Mastering', 'Kellia Reveley', '1984-01-12 20:01:44', 'eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat', 'Zoomdog', 614, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(471, 'DLPAR', 'Pincus Thoms', '2012-08-23 19:31:02', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 'Flashdog', 474, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(472, 'HDF5', 'Ferrell Courtier', '1984-09-10 06:27:10', 'convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec', 'Browsebug', 660, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(473, 'Drilling Engineering', 'Hedy Kohrding', '1990-06-15 08:05:47', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Youtags', 600, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(474, 'PFEP', 'Lauritz Antony', '1971-09-17 14:33:34', 'eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 'Ooba', 966, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(475, 'DFA', 'Sherwynd Troy', '1990-03-04 13:11:15', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum', 'Skiba', 927, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(476, 'Bank-owned Properties', 'Bronny Brearty', '1974-07-29 10:43:42', 'viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio', 'Kwinu', 794, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(477, 'Long-term Care', 'Henriette Stimpson', '2010-09-20 02:05:58', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum', 'Feedbug', 583, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(478, 'TPP', 'Natale Colbeck', '1972-10-24 00:28:42', 'viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'Kaymbo', 852, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(479, 'WSIB Claims Management', 'Carolan Borth', '1979-04-28 06:03:20', 'ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac', 'Meemm', 400, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(480, 'DNA microarray', 'Charo Tinwell', '1973-12-28 20:29:39', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum', 'Skalith', 826, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(481, 'Big 4', 'Butch Terrington', '2014-05-18 20:20:17', 'id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', 'Youspan', 867, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(482, 'Pigments', 'Stinky Tathacott', '1999-12-20 00:15:44', 'nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla', 'Vinder', 779, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(483, 'MQSI', 'Wendall Mollene', '1971-09-15 18:41:59', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue', 'Flashdog', 821, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(484, 'JVM', 'Katheryn Golt', '2011-02-12 12:21:09', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec', 'Riffpedia', 935, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(485, 'GDI', 'Lydon Pashby', '1982-01-15 00:51:16', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 'Podcat', 751, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(486, 'Job Costing', 'Rayna Johnikin', '1984-05-01 14:31:03', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget', 'Gabcube', 574, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(487, 'HR Policies', 'Reena Reinbeck', '1984-02-21 11:31:41', 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', 'Oyoyo', 457, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(488, 'IEC 62304', 'Patsy Handy', '2014-01-21 11:31:21', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', 'Voonder', 442, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(489, 'FSI', 'Emilee Winscum', '1996-06-12 18:14:04', 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor', 'Voolith', 350, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(490, 'UDF', 'Marya McIlherran', '1976-10-26 04:09:27', 'nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', 'Devpulse', 736, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(491, 'VMware vCenter', 'Elyse Harrow', '1972-12-12 22:31:44', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl', 'Oba', 894, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(492, 'Graduate Recruitment', 'Kimberlyn Poleye', '2009-08-08 11:05:54', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent', 'Kwilith', 333, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(493, 'Fine Art Photography', 'Mitchel Dewicke', '1984-05-16 22:43:51', 'venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis', 'Twimm', 396, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(494, 'IT Solutions', 'Adams Compton', '2001-05-22 06:08:40', 'cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci', 'Gabtune', 953, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(495, 'MPages', 'Emanuel Hobbema', '1981-11-02 12:50:09', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum', 'Riffpedia', 430, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(496, 'Time Management', 'Fred Adcock', '1986-01-13 15:38:23', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor', 'Ozu', 312, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(497, 'WFO', 'Angelita Durman', '1989-05-26 18:33:27', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', 'Photolist', 796, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(498, '3D Visualization', 'Britt Teal', '1976-07-29 01:48:36', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices', 'Edgeclub', 512, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(499, 'Logic Pro', 'Anstice Butterfint', '1986-07-18 15:50:08', 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu', 'Roodel', 307, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(500, 'Classroom', 'Jinny Chinnock', '1997-02-10 08:42:53', 'at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit', 'Eabox', 403, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(501, 'AVEVA PDMS', 'Piotr Clarae', '2003-12-30 01:01:53', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 'Minyx', 991, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(502, 'Avid Xpress', 'Cacilia Stacy', '1996-09-07 04:08:18', 'quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque', 'Buzzdog', 920, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(503, 'VNA', 'Tanya Bardill', '2011-02-28 05:25:23', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', 'Oloo', 813, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(504, 'TSCM', 'Philomena Stading', '1973-03-18 05:48:36', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper', 'Meedoo', 783, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(505, 'JTAG', 'Pyotr Matzel', '1979-04-01 22:04:27', 'consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', 'Photolist', 519, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(506, 'Food Safety', 'Chloe Filipowicz', '2011-01-15 23:52:32', 'primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', 'Reallinks', 356, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(507, 'Snorkeling', 'Corby Foat', '2005-07-31 14:35:24', 'tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat', 'Yodoo', 667, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(508, 'HP Servers', 'Cristian Gellion', '1992-05-21 16:30:15', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'Riffpedia', 553, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(509, 'Group Policy', 'Chrisse Mendez', '1972-02-29 21:03:21', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 'Ntags', 723, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(510, 'Youth Marketing', 'Malanie Feaks', '2016-04-18 15:31:42', 'velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo', 'Thoughtbridge', 790, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(511, 'Acoustic Guitar', 'Smith Morden', '2016-11-17 09:35:45', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel', 'Dabshots', 686, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(512, 'RT-PCR', 'Ravi Dowears', '1981-03-18 13:58:40', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer', 'Quatz', 643, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(513, 'Field Work', 'Gayla Egle', '2019-03-23 16:27:01', 'ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'Fadeo', 920, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(514, 'DMVPN', 'Barbra Barkworth', '1991-12-20 00:53:04', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor', 'Skilith', 610, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(515, 'FSCM', 'Clarine Heindle', '2018-05-25 12:03:54', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis', 'Dynabox', 457, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(516, 'EOB', 'Teodor Menci', '1981-04-04 20:51:17', 'vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat', 'Avamm', 387, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(517, 'VDI', 'Lilyan Heitz', '1989-03-30 17:08:40', 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum', 'Tazz', 971, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(518, 'Equipment Installation', 'Elia Saddington', '2012-01-15 08:17:57', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 'Yodo', 968, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(519, 'Tier II Reporting', 'Carleen Lamke', '2010-12-17 04:06:16', 'nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in', 'Dynava', 423, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(520, 'Process Piping Design', 'Grantham Grime', '1970-11-17 04:17:02', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim', 'Realbridge', 942, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(521, 'Glazing', 'Renault Saxelby', '2015-03-19 07:45:27', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'Kaymbo', 332, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(522, 'FSL', 'Jody Letrange', '1990-11-21 06:22:25', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 'Edgeify', 305, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(523, 'CTAs', 'Melloney Verty', '1984-06-29 22:05:22', 'rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est', 'Yabox', 332, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(524, 'Charitable Giving', 'Wakefield Vuitte', '2011-07-23 23:04:16', 'morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', 'Miboo', 824, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(525, 'Control Systems Design', 'Domini Brosi', '2008-04-26 11:54:39', 'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec', 'Agivu', 807, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(526, 'Disaster Recovery', 'Shela Tremmil', '2016-07-29 19:03:50', 'quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan', 'Quire', 793, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(527, 'RTU', 'Kelila Harken', '1999-11-24 15:43:35', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit', 'Trilith', 411, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(528, 'Front Office', 'Doralynn Jozefiak', '1982-05-18 09:26:42', 'luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo', 'Flipbug', 917, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(529, 'Omnis', 'Dosi Joules', '2019-02-07 19:32:30', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac', 'Digitube', 406, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(530, 'Life Sciences', 'Jasper Hanley', '1992-02-26 09:56:27', 'convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor', 'Gabtype', 997, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(531, 'Home Staging', 'Harp Preble', '1998-11-15 12:30:13', 'quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget', 'Kwinu', 550, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(532, 'HSQLDB', 'Merrill Birchall', '1998-05-10 17:37:20', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', 'Oozz', 455, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(533, 'Kinect', 'Sande Gardner', '2011-09-28 22:06:03', 'aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui', 'Gigazoom', 343, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(534, 'UED', 'Bliss Gilliard', '2009-08-24 23:16:54', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris', 'Eadel', 762, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(535, 'BPEL', 'Celinda Vasyutin', '2015-06-14 09:11:59', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', 'Riffpath', 423, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(536, 'Wireless Networking', 'Korney Jannings', '1992-11-30 00:09:02', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'Cogilith', 893, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(537, 'TIG Welding', 'Benjie McClune', '2002-04-20 06:17:00', 'hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'Eayo', 911, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(538, 'ABAP-OO', 'Collie Trembath', '2008-02-10 09:36:17', 'bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis', 'Quaxo', 870, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(539, 'Social Media Blogging', 'Lorne Bloom', '2016-03-03 16:43:59', 'vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', 'Browsedrive', 431, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(540, 'EOB', 'Ephraim Johananoff', '1995-02-09 02:27:58', 'porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet', 'Yamia', 487, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(541, 'SAP EBP', 'Ellwood Riccardi', '1986-07-19 05:30:41', 'at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', 'Twinder', 564, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(542, 'Asset Protection', 'Marcellina Kleinber', '1980-05-15 18:12:42', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet', 'Devshare', 887, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(543, 'Urgent Care', 'Oby Manass', '1988-11-06 03:54:09', 'in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris', 'Zoomcast', 926, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(544, 'Due Diligence', 'Leisha Littlejohn', '1999-10-28 03:56:29', 'leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 'Edgewire', 678, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(545, 'XDoclet', 'Keelby Zanazzi', '1980-02-21 05:39:22', 'vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor', 'Zoovu', 822, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(546, 'Pro II', 'Jeniffer Cumbers', '1977-01-28 12:28:45', 'ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in', 'Avaveo', 364, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(547, 'Industrial Hygiene', 'Gusti Stathers', '1975-07-08 16:08:13', 'viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non', 'Devify', 334, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(548, 'Gyrotonic', 'Hortensia Malzard', '2015-06-05 14:53:36', 'neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'Voomm', 428, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(549, 'TUPE', 'Osmund Gyurkovics', '1990-01-01 12:26:32', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur', 'Oyoba', 616, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(550, 'Fashion Shows', 'Devy Rosenvasser', '2004-04-08 22:58:54', 'turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh', 'Snaptags', 509, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(551, 'Global Strategy', 'Kermy Ollie', '1978-12-05 15:22:52', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id', 'Babbleblab', 608, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(552, 'Norton Ghost', 'Ryon Andresser', '2018-03-29 10:41:20', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 'Trupe', 759, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(553, 'Eye Surgery', 'Dylan Hamber', '1975-04-05 22:16:03', 'magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', 'Realfire', 351, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(554, 'RELAX NG', 'Wynne Abelwhite', '1973-02-13 06:03:07', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Skyble', 320, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(555, 'Distance Learning', 'Othello Giacopini', '1993-06-18 19:57:53', 'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus', 'Youspan', 385, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(556, 'Xpress', 'Cordy Cerro', '1992-10-22 08:43:48', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 'Realcube', 813, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(557, 'EPM', 'Bran Durrett', '2009-08-09 15:41:34', 'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 'Topicware', 681, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(558, 'PDE', 'Sher Simioni', '1983-04-06 10:57:02', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra', 'Podcat', 400, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(559, 'SLC500', 'Onofredo Graffham', '1980-05-31 09:45:21', 'mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada', 'Divanoodle', 325, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(560, 'GSE', 'Wallache Prosek', '2016-12-24 00:45:20', 'maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris', 'Kwideo', 550, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(561, 'Jerseys', 'Laurel VanBrugh', '1985-08-30 15:39:57', 'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'Roomm', 438, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(562, 'Kinetics', 'Devlen Janicki', '2008-07-03 14:58:52', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', 'Cogibox', 340, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(563, 'Photography', 'Kathi Vasechkin', '1983-06-12 18:47:36', 'ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus', 'Chatterbridge', 568, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(564, 'EIGRP', 'Noelani Gelland', '1985-07-30 04:53:44', 'vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in', 'Twitternation', 805, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(565, 'Berkeley DB', 'Rycca Jasiak', '1980-04-12 23:07:51', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum', 'Tagopia', 827, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(566, 'ACLS', 'Gregor Broadberrie', '1978-02-28 18:30:32', 'augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 'Devcast', 976, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(567, 'Visual Effects', 'Ninetta Sappell', '1999-08-17 20:46:00', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 'Vinte', 837, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(568, 'Shipping', 'Ford Crust', '1973-10-20 09:57:12', 'est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis', 'Linkbridge', 451, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(569, 'Tumblr', 'Mag Lorriman', '1979-12-24 01:21:27', 'vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla', 'Shufflester', 918, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(570, 'AutoCAD Civil 3D', 'Wain Davern', '1995-10-24 22:14:37', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', 'Oyoba', 462, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(571, 'Graphics', 'Frannie Hicken', '2013-03-30 07:25:04', 'lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla', 'Leexo', 478, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(572, 'Sports Management', 'Sashenka Otson', '1971-10-11 03:02:25', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'Trudeo', 357, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(573, 'MC2', 'Bibbie McDavid', '1993-02-21 22:27:04', 'ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel', 'Realmix', 522, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(574, 'Market Analysis', 'Eran Lavell', '1989-02-28 09:39:02', 'orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce', 'Yakidoo', 490, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(575, 'Underwriting', 'Teodorico Scheffel', '2014-07-26 08:08:42', 'eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', 'Avaveo', 543, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(576, 'Avaya Technologies', 'Teriann Weagener', '2007-08-10 09:19:05', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque', 'Demimbu', 443, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(577, 'RSLinx', 'Olivie Nunes Nabarro', '1974-01-06 01:42:30', 'vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque', 'Brainlounge', 990, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(578, 'Drug Development', 'Rowan Ellson', '1971-07-22 08:59:46', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis', 'Flipstorm', 500, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(579, 'JSTL', 'Hamilton Hogsden', '1993-01-20 19:12:37', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea', 'Jaxbean', 844, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(580, 'FBD', 'Hamid Freyne', '1979-10-04 02:33:32', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 'Jaloo', 845, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(581, 'Aerial Cinematography', 'Jonah Buffin', '2018-10-29 02:50:06', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 'Demizz', 934, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(582, 'Volunteer Management', 'Guy Latus', '1993-08-14 13:12:01', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at', 'Avaveo', 846, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(583, 'Biomedical Engineering', 'Antonietta Rubens', '2002-02-09 10:23:32', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean', 'Voomm', 561, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(584, 'RTF', 'Akim Smallpeace', '1991-07-21 15:17:15', 'aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', 'Quimba', 449, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(585, 'dsPIC', 'Athene Saddleton', '2002-08-19 14:09:03', 'integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend', 'Aimbo', 966, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(586, 'Digital Media', 'Betty Tumbelty', '1971-03-20 07:28:26', 'mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et', 'Eayo', 843, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(587, 'Nitrous Oxide', 'Thurstan Sein', '1998-06-08 01:16:33', 'nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in', 'Katz', 534, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(588, 'Lifestyle', 'Cullin Pheasey', '1989-02-12 19:04:35', 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 'Photobug', 720, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(589, 'DVB-RCS', 'Othello Blacker', '1995-03-29 17:17:37', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat', 'Mymm', 853, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(590, 'HF', 'Gerhard Marder', '1991-10-20 21:32:41', 'volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', 'DabZ', 483, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(591, 'Cold Calling', 'Arabela Greatrex', '2007-04-28 23:24:38', 'at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam', 'Zazio', 819, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(592, 'Wholesale Purchasing', 'Kerby Linacre', '1976-12-21 01:33:43', 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis', 'Feednation', 354, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(593, 'Embedded Linux', 'Sisile Mitskevich', '2015-07-02 19:20:42', 'suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean', 'Mynte', 536, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(594, 'Certified DDI Facilitator', 'Damon Keyworth', '1979-06-29 15:54:58', 'libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', 'Chatterbridge', 312, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(595, 'Ajax4JSF', 'Bryant Speir', '2002-11-23 17:02:48', 'vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec', 'Topdrive', 388, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(596, 'Geophysics', 'Shaun Thomel', '2007-12-18 11:53:36', 'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 'Dabtype', 538, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(597, 'Hlookups', 'Claire Sopp', '1996-06-19 09:45:37', 'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', 'Rhyloo', 800, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(598, 'Zend', 'Marley Louch', '1979-01-11 14:33:04', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'Zoomcast', 874, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(599, 'Ektron', 'Lindsey Azam', '1994-01-12 22:21:16', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 'Kimia', 564, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(600, 'Utilities Management', 'Aharon Filchakov', '1987-02-27 15:03:57', 'libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec', 'Browsebug', 738, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(601, 'MCNP', 'Maurene Rape', '1990-08-01 07:08:51', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 'Flipbug', 412, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(602, 'International Shipping', 'Mela Neaves', '2018-11-22 09:01:08', 'porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', 'Yata', 626, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(603, 'HP Server Hardware', 'Annabel Chasles', '2012-06-14 08:35:38', 'id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'Jabbersphere', 402, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(604, 'Klout', 'Der Ryle', '2010-01-12 06:55:34', 'duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor', 'Browsedrive', 441, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(605, 'MXF', 'Culver Hasted', '1986-10-21 14:19:47', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse', 'Photobean', 833, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(606, 'Kodaly', 'Gay Trussell', '1994-05-17 21:40:27', 'sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 'Avamba', 610, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(607, 'qRT-PCR', 'Ella Swyer-Sexey', '1973-07-01 17:38:50', 'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum', 'Mynte', 822, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(608, 'Digital Signal Processors', 'Bea Connell', '1983-05-19 18:26:02', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci', 'Realbridge', 942, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(609, 'Oscilloscope', 'Nichol Coughan', '1981-02-03 07:26:58', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', 'Livetube', 691, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(610, 'Data Analysis', 'Bryant Fader', '1978-12-13 07:04:59', 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis', 'Innojam', 393, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(611, 'IKB', 'Janette Bollin', '2017-05-17 00:42:57', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', 'Yadel', 640, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(612, 'WSAD', 'Elbertine Ingold', '1998-09-24 07:03:02', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at', 'Browsecat', 429, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(613, 'Health Education', 'Cassandra Brixey', '2013-07-22 08:06:53', 'ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in', 'Tanoodle', 718, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(614, 'Wiring', 'Marnia Hailston', '1982-06-11 19:13:55', 'volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 'Eimbee', 885, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(615, 'Oil Paint', 'Cindee Disbrey', '2009-08-05 06:13:42', 'volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 'Skyvu', 903, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(616, 'PFS', 'Marleen Bilfoot', '1997-12-19 20:47:18', 'turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 'Blogtag', 812, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(617, 'QlikView Development', 'Jemmie Burwin', '1979-12-09 18:07:00', 'felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit', 'Fiveclub', 691, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(618, 'Active Directory', 'Dorothee Lightwood', '1983-10-28 03:35:16', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi', 'Topicware', 724, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(619, 'Early-stage Startups', 'Zelda Grimes', '1989-04-03 15:39:57', 'in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo', 'Meevee', 678, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(620, 'PNR', 'Tuck Finlater', '1995-06-25 07:35:53', 'placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', 'Meezzy', 877, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(621, 'Technical Documentation', 'Westleigh Pettifor', '1988-12-29 23:39:37', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 'Blogpad', 563, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(622, 'Fine Art', 'Pauletta Adamik', '1993-03-12 22:20:44', 'montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras', 'Meevee', 771, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(623, 'HSI', 'Yorgos Finlay', '2011-12-15 14:29:31', 'duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', 'Twimm', 991, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(624, 'Foreign Affairs', 'Neysa Tukesby', '1989-10-05 10:18:37', 'magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non', 'Kwideo', 636, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(625, 'Drainage', 'Eberhard McRitchie', '1980-09-19 12:47:56', 'interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'BlogXS', 653, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(626, 'RDFS', 'Ginnie Spellsworth', '1984-06-23 20:43:12', 'donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl', 'Trilia', 778, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(627, 'Ion', 'Baillie Jelphs', '2009-07-29 15:10:14', 'magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', 'Oyonder', 751, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(628, 'Gutters', 'Davin Learmount', '1993-03-31 04:31:05', 'sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate', 'Yodel', 786, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(629, 'VCL', 'Jordon Eade', '1999-08-26 01:22:50', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', 'Youfeed', 306, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(630, 'Xcalibur', 'Oates Gilardi', '2012-08-05 00:52:09', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', 'Flashset', 677, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(631, 'MBAL', 'Roxie Ishaki', '2000-11-12 01:22:18', 'luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut', 'Kare', 896, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(632, 'Revenue Cycle Management', 'Dorry McCrillis', '1986-11-26 00:51:32', 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante', 'Twiyo', 322, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(633, 'Avaya AES', 'Katusha Winsiowiecki', '2001-02-03 03:14:14', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'Oloo', 372, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(634, 'QuarkXPress', 'Candra Rosellini', '2007-10-10 04:50:36', 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 'Skinte', 515, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(635, 'VHDL', 'Krista Simkin', '2016-01-19 02:43:11', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', 'Jatri', 586, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(636, 'IDoc', 'Violante Arenson', '1986-06-11 17:30:22', 'etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat', 'Realfire', 462, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(637, 'Xing', 'Ruthie Nelissen', '1994-03-23 13:26:47', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam', 'Wikido', 701, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(638, 'Documentation', 'Tiffi Stirton', '1970-06-18 03:06:31', 'lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc', 'Tagfeed', 611, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(639, 'qPCR', 'Lark Levecque', '1995-09-28 03:20:50', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 'Flashset', 342, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(640, 'Petroleum Engineering', 'Orelie Soro', '1971-12-01 06:05:08', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 'Buzzdog', 923, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(641, 'InfoComm CTS', 'Glen Harrop', '1995-08-05 10:15:00', 'vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est', 'Divanoodle', 846, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(642, 'KWI', 'Katie Mill', '1978-10-08 16:29:40', 'nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet', 'Dynava', 994, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(643, 'Distance Learning', 'Isa Rignoldes', '1983-09-10 19:17:52', 'mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', 'Katz', 705, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(644, 'HTC', 'Nat Balmadier', '1990-06-09 15:18:29', 'in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer', 'Yoveo', 572, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(645, 'Verilog', 'Kathy Wellstead', '1983-12-30 08:54:13', 'euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue', 'Rhybox', 577, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(646, 'Graphic Design', 'Adel McLeoid', '2019-04-09 18:41:51', 'amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis', 'Devpoint', 725, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(647, 'Twill', 'Clair Ogg', '2009-03-13 23:23:10', 'arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'Vidoo', 321, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(648, 'Aerospace', 'Janeta Estrella', '2009-01-31 13:44:25', 'justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in', 'Wikivu', 587, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(649, 'Civil Litigation', 'Kingsley Fawcett', '1994-04-28 05:17:17', 'sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet', 'Zoomcast', 772, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(650, 'Emergency Medicine', 'Charmaine Gallandre', '1985-02-11 12:36:08', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 'Livetube', 384, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(651, 'CFR', 'Georg Ruhben', '2007-08-31 03:45:48', 'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum', 'Aimbu', 812, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(652, 'Corona SDK', 'Grace Manns', '1977-07-18 03:53:53', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'Wikivu', 887, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(653, 'Microsoft SQL Server', 'Janaye Raspel', '1984-08-02 17:15:37', 'nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 'Ooba', 735, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(654, 'Teaching', 'Reid Reade', '1991-12-14 12:46:41', 'morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris', 'Rhynyx', 713, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(655, 'MDT', 'Chrissie Bortolussi', '2006-05-04 15:18:37', 'sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 'Voonder', 944, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(656, 'Aircraft Systems', 'Gerald Pilch', '1978-06-18 00:52:54', 'nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at', 'Podcat', 338, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(657, 'Theology', 'Homer Armfield', '1984-03-05 15:35:26', 'dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 'InnoZ', 554, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(658, 'SketchUp', 'Gannon Goff', '1982-07-24 12:46:33', 'nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique', 'Muxo', 923, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(659, 'Surgery', 'Frasier Angrick', '1985-10-29 22:42:23', 'sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae', 'Jaxnation', 342, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(660, 'JDO', 'Berry O''Crowley', '1986-05-27 14:04:56', 'risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi', 'Topicware', 729, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(661, 'TTS', 'Lindsy Anscombe', '2018-09-11 04:28:27', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in', 'Dabjam', 699, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(662, 'LCS', 'Donnamarie Travers', '1985-09-18 17:58:05', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat', 'Twiyo', 571, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(663, 'DUI Defense', 'Judas Powe', '2007-02-10 12:21:01', 'sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', 'Voonder', 543, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(664, 'TPX', 'Kaitlynn Thiese', '2011-10-25 00:36:49', 'condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in', 'Lajo', 517, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(665, 'Quality by Design', 'Cathleen Attwood', '1973-03-18 17:58:58', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend', 'Eimbee', 743, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(666, 'OOAD', 'Ottilie Mellmoth', '1996-12-25 12:37:04', 'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis', 'Demizz', 555, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(667, 'Theory', 'Candi Rough', '1995-11-29 01:49:36', 'nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl', 'JumpXS', 921, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(668, 'Business Strategy', 'Carrissa McGrudder', '1980-10-17 13:05:19', 'mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'Dynabox', 870, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(669, 'Vsftpd', 'Darya Fencott', '2016-03-17 01:40:15', 'at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in', 'Jabbercube', 778, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(670, 'MTT', 'Lydia de Pinna', '2013-10-20 03:30:47', 'consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', 'Mybuzz', 537, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(671, 'KMS', 'Zulema Livick', '1971-07-31 09:45:32', 'cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa', 'Trudeo', 413, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(672, 'Art History', 'Ame O''Moylane', '2007-11-03 15:42:50', 'erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras', 'Mybuzz', 885, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(673, 'Commercial Awareness', 'Darrel Turfrey', '2008-04-21 18:37:51', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec', 'Janyx', 371, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(674, 'DHTML', 'Bibbye Bibb', '1974-08-14 11:00:41', 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu', 'Camido', 775, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(675, 'NICU', 'Lalo Khristyukhin', '2018-09-24 02:20:35', 'dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'Devbug', 916, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(676, 'CDPE', 'Darlleen Bonevant', '2007-05-11 05:32:36', 'porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo', 'Topicblab', 566, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(677, 'MPBN', 'Siana Newsham', '2006-09-06 18:21:15', 'a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium', 'Fivebridge', 748, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(678, 'UCaaS', 'Hayden Broschke', '1982-12-25 05:55:35', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa', 'Flashspan', 714, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(679, 'EOS', 'Carline Hanson', '1983-04-20 09:40:40', 'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id', 'Tavu', 960, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(680, 'LTE', 'Netty Dax', '2004-07-28 17:35:11', 'elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', 'Gevee', 956, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(681, 'Cardiac Rhythm Management', 'Shir Muckart', '1976-08-26 12:50:27', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu', 'Quatz', 411, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(682, 'QAD', 'Mersey Winsiowiecki', '2005-05-10 03:05:19', 'pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 'Flashpoint', 844, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(683, 'Planning', 'Georas Pasby', '1976-12-10 16:58:02', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet', 'Thoughtstorm', 303, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(684, 'Portraits', 'Catherina Mainland', '2019-10-10 23:01:31', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque', 'Agivu', 901, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(685, 'Sculpture', 'Emalia Plunkett', '1995-01-03 22:03:58', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'Photofeed', 494, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(686, 'IIS', 'Ailey Cornels', '2016-11-21 20:22:00', 'aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Jatri', 819, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(687, 'HDR Photography', 'Etta Euler', '1979-09-18 04:58:30', 'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at', 'Livefish', 685, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(688, 'Objection Handling', 'Wolfy Head', '2006-04-08 21:17:39', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat', 'DabZ', 844, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(689, 'DDIC', 'Yulma Koomar', '2008-10-11 04:07:26', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', 'Camimbo', 998, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(690, 'LLDPE', 'Ryan Peasegod', '1986-10-09 01:17:11', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis', 'Topicshots', 589, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(691, 'IntelliJ IDEA', 'Nye Gitsham', '1988-09-30 06:40:27', 'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla', 'Blogpad', 912, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(692, 'HUD', 'Shanan Keelan', '1978-02-08 21:39:12', 'semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam', 'Zoovu', 687, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(693, 'Classical Guitar', 'Eben Ovenden', '2006-12-08 14:07:46', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean', 'Cogidoo', 692, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(694, 'Fractional Ownership', 'Colly Demageard', '1975-08-30 01:20:28', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla', 'Tagcat', 919, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(695, 'Ducting', 'Deana Sargood', '1989-12-03 20:04:41', 'enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', 'Shuffletag', 661, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(696, 'IS-IS', 'Christen Schriren', '1983-09-07 09:43:10', 'vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis', 'Twinder', 477, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(697, 'XMPie', 'Everett Wreath', '1996-12-21 23:39:38', 'in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'Roodel', 847, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(698, 'Student Affairs', 'Lynsey Mangenot', '1992-10-03 04:54:24', 'sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in', 'Topdrive', 853, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(699, 'RTCP', 'Sabina Farrey', '1985-08-30 04:56:46', 'lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient', 'Buzzshare', 662, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(700, 'UV/Vis', 'Stoddard Lawrenson', '1973-06-06 12:23:36', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 'Centimia', 861, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(701, 'YUI', 'Keane Tesseyman', '1978-10-07 21:41:09', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices', 'Plajo', 735, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(702, 'Digital Illustration', 'Giusto Rembaud', '2012-04-20 01:06:32', 'sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis', 'Oyope', 574, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(703, 'QAS', 'Gail Brownett', '1976-01-26 15:48:45', 'donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo', 'Oodoo', 368, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(704, 'IICRC Certified', 'Claudetta Maccree', '1972-02-03 17:43:49', 'lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus', 'Twitterwire', 819, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(705, 'Substance Use Disorders', 'Tate Barson', '2019-02-18 07:55:18', 'hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit', 'Fliptune', 394, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(706, 'IBM iSeries', 'Gregoor Errey', '1979-09-04 20:35:39', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper', 'Agimba', 473, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(707, 'XML Gateway', 'Hakim Joss', '2000-10-21 16:56:59', 'consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra', 'Ntag', 557, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(708, 'CPT', 'Courtney Adie', '2011-01-13 23:10:01', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat', 'Gigashots', 861, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(709, 'Service Delivery', 'Dallon Mechell', '2019-01-24 12:28:21', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 'Voomm', 345, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(710, 'Western Europe', 'Jamima Carbert', '2018-11-14 14:12:05', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 'Latz', 867, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(711, 'Cytogenetics', 'Joceline Berrow', '1982-12-18 06:21:39', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', 'Kayveo', 996, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(712, 'Psychosocial', 'Torrie Hallen', '1987-11-04 07:17:00', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'Babbleblab', 535, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(713, 'High Yield Bonds', 'Malissa Ellcome', '1989-01-31 05:33:03', 'velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla', 'Kanoodle', 317, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(714, 'Financial Statements', 'Jemie Sewards', '1976-08-06 09:12:34', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam', 'Fadeo', 854, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(715, 'HCSS', 'Cathie Dougherty', '1982-11-17 01:40:33', 'pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis', 'Dabtype', 944, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(716, 'NCBI', 'Minni Loveredge', '2014-10-07 23:00:13', 'nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam', 'Riffpedia', 343, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(717, 'Health Promotion', 'Teri Klamp', '2012-08-11 06:21:11', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', 'Jaxworks', 841, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(718, 'Unreal Engine 3', 'Georgie Klewi', '1973-05-19 17:53:32', 'integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', 'Plambee', 899, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(719, 'NMR', 'Aymer Clucas', '1978-05-07 22:27:34', 'ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac', 'Thoughtstorm', 304, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(720, 'HSQLDB', 'Arlen Thorpe', '1998-07-25 23:24:39', 'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor', 'Meetz', 749, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(721, 'Supervisory Skills', 'Elena Kunzler', '1997-12-27 18:36:26', 'dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla', 'Rhynoodle', 577, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(722, 'CSRs', 'Stephi Rasher', '1980-06-16 17:07:15', 'id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', 'Twitternation', 462, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(723, 'SDH', 'Cy Spiaggia', '1987-12-09 14:06:14', 'vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam', 'Devpoint', 756, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(724, 'Sound FX Editing', 'Saxe Senn', '1994-11-25 22:07:40', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', 'Kare', 991, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(725, 'Prenuptial Agreements', 'Moritz Stern', '1981-03-30 14:16:17', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate', 'Skipstorm', 319, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(726, 'D3.js', 'Roch Mollitt', '1984-03-17 06:30:58', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis', 'Camimbo', 582, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(727, 'Wholesale Operations', 'Gerik Sheircliffe', '2012-02-23 23:41:44', 'in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', 'Skajo', 431, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(728, 'QPST', 'Elle Speers', '1980-08-04 05:22:48', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'Avamba', 454, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(729, 'EBSCO', 'Dania Jorck', '1998-05-30 13:19:58', 'quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia', 'Omba', 917, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(730, 'FrameMaker', 'Haskel Fuge', '2004-12-23 22:16:01', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', 'Browsecat', 848, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(731, 'Music Education', 'Thaxter Cruess', '1978-03-06 20:06:06', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor', 'Buzzdog', 487, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(732, 'Prototype.js', 'Clemens Paviour', '1988-11-05 18:00:00', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', 'Bubbletube', 905, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(733, 'NLS', 'Angeli Euler', '2014-11-28 09:43:10', 'est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non', 'Zoomdog', 422, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(734, 'QRM', 'Cecily Marcum', '1998-08-06 01:13:32', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 'Thoughtstorm', 547, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(735, 'PMAs', 'Silvia Echlin', '1974-02-23 11:33:00', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 'Vidoo', 430, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(736, 'Verilog', 'Creigh Spatig', '2001-04-12 02:06:07', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'Tagtune', 579, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(737, 'PMM', 'Katharina Vondra', '1987-02-10 14:49:31', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget', 'Bubbletube', 553, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(738, 'RCV', 'Alethea Farra', '2004-07-10 03:07:06', 'quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet', 'Meezzy', 883, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(739, 'Cardiology', 'Gisella Kolushev', '2004-05-11 07:19:09', 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', 'Gabtune', 832, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(740, 'Erosion Control', 'Melosa Glendza', '1971-02-02 09:13:17', 'nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet', 'Feedfish', 337, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(741, 'TMAP', 'Mersey Sellack', '1996-07-21 13:56:21', 'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate', 'Meetz', 974, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(742, 'Invoicing', 'Janice Garfield', '1973-08-18 15:30:21', 'in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 'Devcast', 590, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(743, 'FTO', 'Ellen Chapelhow', '2012-06-01 01:25:25', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'Pixoboo', 632, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(744, 'Oil Industry', 'Yolanda Goalby', '2013-07-14 01:26:57', 'in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia', 'Flashpoint', 912, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(745, 'ERD', 'Kalindi Sellar', '2011-02-16 05:14:06', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 'Fivechat', 509, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(746, 'Job Search Strategies', 'Jim Macrow', '1972-10-30 17:10:40', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 'Twinte', 562, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(747, 'Resume Writing', 'Arlyne Marrian', '1971-07-12 07:15:39', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Trilith', 410, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(748, 'Ghosts', 'Kissie Gobert', '1981-06-24 14:34:51', 'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu', 'Demivee', 942, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(749, 'VTK', 'Vikky Bonus', '2009-11-14 19:47:56', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat', 'Vidoo', 594, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(750, 'Medical Imaging', 'Paquito Schutze', '1991-10-20 19:35:44', 'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse', 'Voonder', 660, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(751, 'iPhoto', 'Ewen Tamburi', '1999-10-16 18:24:09', 'eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl', 'Linklinks', 312, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(752, 'Architecture', 'Mendy Bourne', '1999-05-05 02:43:36', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis', 'Reallinks', 686, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(753, 'JTest', 'Keary Hauxley', '2010-10-14 13:12:03', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'Feednation', 781, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(754, 'Strategic Sourcing', 'Priscella Nolder', '1991-12-03 22:34:37', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur', 'Skippad', 467, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(755, 'Software Implementation', 'Llewellyn Duffit', '1994-05-30 00:32:54', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel', 'Buzzbean', 587, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(756, 'VMware VTSP', 'Fran Coverlyn', '2010-08-15 10:16:13', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat', 'Brainlounge', 309, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(757, 'MQL4', 'Tedda Sleigh', '1997-12-14 13:15:45', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'Meembee', 308, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(758, 'Variance Analysis', 'Yard Emig', '2012-02-11 11:26:30', 'mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', 'Quimba', 769, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(759, 'Grassroots', 'Vi Gregolin', '1983-05-15 03:00:15', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris', 'Twitterwire', 980, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(760, 'PFMEA', 'Aubrey Katte', '1977-06-09 00:16:59', 'ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', 'Quinu', 945, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(761, 'GMC PrintNet T', 'Orazio Dabnot', '1980-11-22 07:07:39', 'in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', 'Twinder', 425, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(762, 'PostgreSQL', 'Cindelyn Carmichael', '2007-09-25 20:12:35', 'feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', 'Midel', 484, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(763, 'Job Analysis', 'Caroline Besemer', '1974-02-13 11:49:03', 'lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi', 'Teklist', 766, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(764, 'OWASP', 'Mikey Semerad', '1997-11-21 11:39:14', 'porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar', 'Quatz', 536, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(765, 'Snowmobile', 'Lorene Habble', '1993-02-28 01:08:48', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus', 'Fliptune', 614, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(766, 'Quantity Surveying', 'Karly Dumpleton', '1979-04-26 20:55:30', 'montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi', 'Realmix', 853, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(767, 'Dogs', 'Leona Stitwell', '2008-02-15 04:44:38', 'curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus', 'Wordware', 993, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(768, 'GBA', 'Rafaelita Whiteland', '2010-06-06 13:02:04', 'praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue', 'Kimia', 317, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(769, 'Lyophilization', 'Hamlen Berge', '1990-10-05 00:56:05', 'eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula', 'Ozu', 565, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(770, 'UV/Vis', 'Enoch Viccary', '1999-01-15 02:12:23', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor', 'Mydo', 760, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(771, 'Criminal Investigations', 'Terri Tremaine', '1976-11-06 13:30:55', 'nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 'Jabberstorm', 972, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(772, 'Ecological Restoration', 'Madelon Gownge', '2006-01-09 16:45:48', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac', 'Demizz', 374, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(773, 'Lighting', 'Dollie Shalloo', '1992-09-09 23:03:09', 'quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae', 'Tagchat', 302, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(774, 'DGA', 'Caz Jaulmes', '1992-07-14 08:19:28', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget', 'Feedfire', 772, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(775, 'Equipment Installation', 'Johnette Creed', '1974-09-13 09:48:41', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis', 'Youopia', 302, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(776, 'Theatre', 'Christina Grenfell', '1988-06-24 10:38:27', 'eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque', 'Devpoint', 426, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(777, 'Custom Homes', 'Nikoletta Boyson', '2019-09-23 07:58:38', 'non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', 'Avamba', 497, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(778, 'Invoicing', 'Shandra Maceur', '2018-02-16 06:43:13', 'natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis', 'Skiba', 778, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(779, 'IBM Servers', 'Hannie Boucher', '2017-05-28 20:40:40', 'vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui', 'Browsecat', 389, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(780, 'FMCG', 'Minette Le Pruvost', '1995-01-30 11:29:39', 'ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum', 'Gabtune', 480, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(781, 'Qt Creator', 'Red Broadhurst', '2005-03-02 00:33:25', 'donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', 'Zoomcast', 509, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(782, 'AOI', 'Christopher Tolliday', '1984-11-04 14:02:35', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'Gigashots', 752, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(783, 'BMR', 'Kathleen Cohn', '2016-07-12 00:43:41', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 'Eabox', 640, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(784, 'JMS', 'Drucill Etchells', '2013-07-08 10:23:24', 'metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo', 'Jetwire', 958, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(785, 'QA Engineering', 'Antoni Eyckelberg', '2018-05-26 03:54:09', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 'Fivebridge', 385, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(786, 'UI Automation', 'Vladimir Tynewell', '1980-07-01 07:18:38', 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 'Zoombeat', 356, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(787, 'HW/SW integration', 'Waylon Crossingham', '1992-12-22 18:10:45', 'pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at', 'Gigabox', 728, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(788, 'HS&amp;E', 'Harrietta Morphey', '1982-11-06 10:09:31', 'varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla', 'Blogspan', 808, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(789, 'Candidate Generation', 'Alasdair Grunwald', '2017-09-30 11:44:25', 'sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas', 'Livepath', 606, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(790, 'Particle Effects', 'Kit Tarplee', '2013-01-06 18:52:27', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam', 'Flipstorm', 888, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(791, 'VOD', 'Josefa Whate', '1998-11-30 00:54:10', 'sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum', 'Skipstorm', 789, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(792, 'Branch Banking', 'Alford Thurby', '2014-12-16 18:00:54', 'justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', 'Zoomlounge', 684, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(793, 'Problem Solving', 'Dorrie Oxby', '1995-02-16 15:39:36', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum', 'Bubblemix', 575, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(794, 'Tunnels', 'Rosalynd Ilyushkin', '1986-02-13 22:39:25', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', 'Minyx', 915, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(795, 'Succession Planning', 'Leticia Gadeaux', '1970-03-06 14:23:50', 'in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum', 'Linklinks', 699, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(796, 'QNXT', 'Vita McAtamney', '1987-03-16 05:16:37', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium', 'Twinder', 580, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(797, 'QCAT', 'Mord Farthing', '2011-07-25 14:22:59', 'rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus', 'Avamba', 508, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(798, 'Windows 7', 'Oran Peet', '1984-11-07 09:57:07', 'suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor', 'Trilith', 712, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(799, 'GMLAN', 'Claudetta Christaeas', '1983-01-30 11:38:16', 'ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris', 'Aivee', 709, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(800, 'Analog Circuit Design', 'Fleming Chalcroft', '1987-02-03 12:56:01', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'Jabberstorm', 370, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(801, 'NICET', 'Felipe Muslim', '1999-01-27 20:05:07', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Meemm', 379, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(802, 'Integration', 'Elva Camois', '2014-10-01 06:19:19', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 'Youbridge', 363, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(803, 'Manufacturing Operations Management', 'Hieronymus Piletic', '2007-10-11 11:48:13', 'fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst', 'Kazu', 707, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(804, 'FpML', 'Marni Karlsen', '1980-02-02 00:53:28', 'sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam', 'Riffpath', 404, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(805, 'Windows', 'Dinnie Vallintine', '1985-04-19 12:10:54', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 'Mynte', 861, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(806, 'BDC', 'Darrelle Corneille', '1992-07-05 15:15:45', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', 'Babbleopia', 425, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(807, 'FPGA prototyping', 'Alix Flukes', '1987-09-25 01:47:02', 'turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue', 'Oyonder', 719, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(808, 'Oil Paint', 'Cristionna Coldbreath', '1983-07-20 17:07:17', 'at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', 'Jabbercube', 982, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(809, 'Windows 7', 'Ethelin Kienlein', '1977-06-21 19:10:58', 'augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum', 'Wordtune', 510, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(810, 'Gx', 'Linus Kalvin', '2014-06-30 20:22:33', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero', 'Geba', 331, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(811, 'IHT', 'Siusan Habbert', '1982-04-21 13:22:59', 'platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus', 'Twimm', 354, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(812, 'Operating Room', 'Cahra Quimby', '2014-07-17 02:46:00', 'lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', 'Thoughtstorm', 792, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(813, 'TNCC', 'Jorrie Meddings', '1988-05-01 00:39:02', 'neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea', 'Topiczoom', 309, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(814, 'uDig', 'Aylmar Elnaugh', '2011-03-02 03:04:36', 'eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', 'Zooveo', 944, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(815, 'CST Microwave Studio', 'Isabelle Shakespeare', '2003-11-22 06:06:45', 'mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras', 'Jaxspan', 838, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(816, 'Slope Stability Analysis', 'Gery Trassler', '2001-08-20 06:29:34', 'purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in', 'Photospace', 889, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(817, 'IATA', 'Bryana Cellier', '1991-03-07 17:27:34', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci', 'Photobug', 758, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(818, 'TPMS', 'Ethyl Kinforth', '2001-09-21 09:28:55', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus', 'Kare', 939, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(819, 'VXI', 'Inesita Edwardes', '1970-04-03 05:50:13', 'eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', 'Centidel', 994, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(820, 'dsPIC', 'Petey Elmer', '1982-11-01 03:28:11', 'vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl', 'Jaxspan', 501, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(821, 'Not for Profit', 'Leah Levesque', '1983-09-27 06:08:26', 'posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci', 'Cogidoo', 345, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(822, 'PVC', 'Margarette Reede', '1992-04-29 12:42:23', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus', 'Voonix', 693, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(823, 'MCAD', 'Scott Shanahan', '1973-02-18 20:48:06', 'vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum', 'Oyoloo', 463, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(824, 'Onshore', 'Nissy Einchcombe', '1983-12-27 03:14:32', 'nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi', 'Skiba', 388, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(825, 'Kronos Timekeeping', 'Alejoa Axelby', '1997-06-09 19:35:05', 'elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis', 'Youfeed', 494, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(826, 'DCM', 'Jae Marshfield', '2003-08-11 08:42:31', 'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce', 'Twitterworks', 474, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(827, 'EGL', 'Howie Robun', '1973-07-14 05:41:21', 'aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue', 'Centidel', 908, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(828, 'Tds', 'Ros Clementel', '1977-03-29 07:27:23', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut', 'Fanoodle', 728, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(829, 'MD5', 'Aimil Coppock.', '1990-03-15 13:41:57', 'sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna', 'Skajo', 370, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(830, 'Medical Writing', 'Nico Meert', '1995-05-19 08:13:46', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit', 'Camido', 584, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(831, 'Floor Plans', 'Dru Conboy', '1995-12-13 14:27:10', 'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'Voomm', 835, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(832, 'Rhinoplasty', 'Alberik Lewnden', '1986-01-03 09:24:09', 'congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi', 'Browsedrive', 851, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(833, 'OnQ', 'Olva Houseley', '2009-11-21 14:24:20', 'dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi', 'Bluejam', 576, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(834, 'Kronos', 'Gretchen Antognoni', '1972-03-16 06:15:17', 'integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi', 'Twitterlist', 769, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(835, 'Broadcast', 'Duky Lago', '2010-07-04 23:47:12', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 'Kanoodle', 996, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(836, 'Fine Art', 'Roanna Petrol', '2001-07-30 22:34:34', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 'Skibox', 623, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(837, 'ERP Software', 'Bruce Harse', '1997-03-28 20:01:20', 'erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla', 'Buzzbean', 349, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(838, 'Physical Therapy', 'Nick Classen', '1998-02-06 18:28:50', 'turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'Dabfeed', 447, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(839, 'Animal Behavior', 'Vina Strowan', '1999-06-26 09:04:18', 'ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 'Eidel', 448, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(840, 'Analysis', 'Rafi Wensley', '2017-10-01 15:14:11', 'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia', 'Realcube', 653, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(841, 'Facebook', 'Loren Attril', '2018-08-16 04:39:44', 'congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales', 'Vinder', 819, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(842, 'TVCs', 'Ax Sadd', '2004-09-10 20:16:50', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla', 'Mydo', 594, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(843, 'DVB-C', 'Guss Teresa', '1976-03-28 12:24:36', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed', 'Flashspan', 426, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(844, 'PwC TeamMate', 'Wash Stede', '1981-03-24 03:38:32', 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim', 'Eabox', 972, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(845, 'BDMS', 'Eadie Entwhistle', '2006-03-19 01:56:11', 'nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', 'Vinder', 385, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(846, 'Amazon RDS', 'Ardenia Troker', '1999-05-30 18:25:38', 'ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 'Trilith', 814, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(847, 'Xdebug', 'Pepi Saywood', '1991-06-19 03:26:31', 'quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus', 'Meedoo', 454, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(848, 'System Administration', 'Land Reeme', '1970-01-12 10:51:17', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit', 'Brainbox', 952, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(849, 'SDL Trados', 'Rubia Lead', '1998-02-13 12:09:54', 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis', 'Bluezoom', 405, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(850, 'Slope Stability', 'Stesha MacConchie', '1978-09-07 02:27:21', 'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 'Vitz', 401, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(851, 'Snooker', 'Dorie Rhoddie', '2010-04-18 11:38:58', 'tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi', 'Linktype', 823, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(852, 'General Insurance', 'Jackie Kinforth', '1972-10-05 15:35:42', 'in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit', 'Wikizz', 933, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(853, 'RF Design', 'Dorian Buttle', '2003-06-26 00:43:50', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus', 'Dynava', 344, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(854, 'TNS', 'Riane Brydell', '2016-12-09 05:37:02', 'blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', 'Browsedrive', 835, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(855, 'Fraud', 'Ardyth Waterson', '1975-03-08 13:19:37', 'maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et', 'Gabtype', 573, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(856, 'Microsoft Excel', 'Talyah Hulatt', '1975-05-23 10:51:27', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula', 'Bluezoom', 635, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(857, 'Digital Media', 'Spencer Castro', '1972-09-15 01:09:49', 'nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc', 'Zoovu', 867, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(858, 'High Yield', 'Brucie Vannar', '1986-11-10 03:28:29', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget', 'Camimbo', 565, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(859, 'Aircraft', 'Rabi Korlat', '1995-04-09 09:37:42', 'donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', 'Ainyx', 726, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(860, 'DHTMLX', 'Isador Wandless', '2001-07-15 22:03:31', 'varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero', 'Kwilith', 810, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(861, 'Phase II ESA', 'Maurise Bullas', '1982-03-24 18:04:27', 'sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed', 'Skynoodle', 717, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(862, 'HP Data Protector', 'Rhys Chilcott', '2003-01-21 13:30:03', 'nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit', 'Wikivu', 494, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(863, 'DDR2', 'Cherie Spens', '1976-03-14 13:09:10', 'nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam', 'Devpoint', 993, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(864, 'CTF', 'Carolyne Espinos', '1972-05-23 01:56:22', 'lorem ipsum dolor sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat', 'Riffwire', 476, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(865, 'Zephyr', 'Paxton Lippingwell', '1981-07-01 17:13:28', 'et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst', 'InnoZ', 467, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(866, 'Virtualization', 'Andrus Dolby', '1999-09-28 05:28:46', 'nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper', 'Brainbox', 449, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(867, 'Wind Turbines', 'Alphonso McCrie', '1989-04-26 11:35:50', 'integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse', 'Trunyx', 951, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(868, 'Durable Goods', 'Stevy Penwright', '1978-04-25 20:37:19', 'nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum', 'Quinu', 331, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(869, 'Objective-C', 'Stacy Pearse', '1996-05-04 16:53:33', 'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat', 'Livetube', 913, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(870, 'Utility Regulation', 'Edyth Mulleary', '1970-09-04 16:57:12', 'odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae', 'Zoomzone', 437, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(871, 'Ocean Freight', 'Frazier Vinas', '1993-10-10 20:23:15', 'at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere', 'Avavee', 645, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(872, 'BFD', 'Korie Kington', '1988-02-02 05:01:11', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales', 'Avaveo', 839, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(873, 'Broadcast Journalism', 'Pauli Slay', '2007-01-26 04:58:27', 'lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus', 'Zava', 616, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(874, 'Tax', 'Carlin Craddy', '2014-09-28 12:56:27', 'penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia', 'Cogibox', 462, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(875, 'Sales Operations', 'Winny Blaxeland', '2015-12-29 20:21:47', 'consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel', 'Edgeify', 341, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(876, 'nDo', 'Deck Winter', '1993-10-05 21:58:30', 'vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit', 'Skinix', 883, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(877, 'VMware vCenter', 'Stanfield Mercik', '1979-08-08 18:32:19', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac', 'Thoughtmix', 659, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(878, 'HCP', 'Cherri Biaggioli', '1980-07-08 13:38:06', 'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula', 'Browsecat', 671, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(879, 'Crystal Reports', 'Otha Malenoir', '2006-12-26 13:24:27', 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in', 'Realbuzz', 901, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(880, 'Contractual Agreements', 'Alphonso Faers', '1980-03-14 00:35:00', 'gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat', 'Zoomzone', 363, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(881, 'WSS 2.0', 'Justino Castard', '2003-01-21 01:22:13', 'congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices', 'Divavu', 332, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(882, 'International Shipping', 'Luke Bickardike', '1976-05-28 00:03:28', 'pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar', 'Nlounge', 333, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(883, 'NRP', 'Smitty Myall', '2003-09-13 10:44:40', 'eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo', 'Meetz', 882, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(884, 'Professional Ethics', 'Alonso Rampton', '2010-04-24 17:02:20', 'at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', 'Buzzster', 842, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(885, 'SBRT', 'Brigida Francino', '1990-12-20 16:32:03', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', 'Wikido', 996, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(886, 'Xajax', 'Staci Capner', '1971-07-11 16:36:56', 'vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo', 'Zava', 573, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(887, 'Psychopharmacology', 'Dominique Venour', '1994-09-12 17:16:43', 'praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris', 'Skinix', 660, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(888, 'Volleyball', 'Paul Farmery', '1979-07-20 16:03:23', 'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis', 'Dabvine', 1000, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(889, 'ISO 13485', 'Priscella Lancastle', '2007-01-03 11:06:46', 'nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum', 'Meezzy', 331, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(890, 'Wholesale Lending', 'Marlena Townend', '1999-12-11 23:29:08', 'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id', 'Livefish', 775, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(891, 'Business Owner Planning', 'Bambie Budnk', '2013-01-18 20:45:22', 'dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et', 'Pixonyx', 934, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(892, 'EIS', 'Lucho Anlay', '2018-02-28 22:23:25', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'Rhynoodle', 490, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(893, 'Sellers', 'Bessy Critten', '1977-08-12 08:49:29', 'cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis', 'Eayo', 436, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(894, 'Jet Fuel', 'Anne-corinne Ziebart', '2016-07-03 14:31:39', 'laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 'Flipbug', 833, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(895, 'EBMS', 'Chrysa Been', '2005-07-14 04:31:49', 'felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi', 'Yata', 727, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(896, 'Grief Counseling', 'Nessie Magner', '1996-07-15 00:01:59', 'nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam', 'Lazz', 754, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(897, 'Hybrid Cloud', 'Federico Falcus', '2003-01-12 11:29:51', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin', 'Jaxspan', 543, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(898, 'Physical Security', 'Erin Hobden', '1979-08-17 17:51:11', 'justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 'Lazz', 626, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(899, 'Corporate Tax', 'Doris Cobby', '1994-01-18 11:06:43', 'pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna', 'Aivee', 687, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(900, 'Project Implementation', 'Nicoli Yukhov', '2012-11-30 03:51:33', 'fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris', 'Devpoint', 899, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(901, 'Brain Gym', 'Veronike O''Lyhane', '1991-04-26 14:11:35', 'aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'Jayo', 315, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(902, 'Waxing', 'Thelma Huett', '2012-12-09 11:20:10', 'ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam', 'Rooxo', 917, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(903, 'Technical Recruiting', 'Joey Copley', '1981-11-17 08:32:02', 'diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut', 'Quaxo', 742, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(904, 'Ambulatory Care', 'Ludvig McKnish', '2003-12-20 21:05:20', 'sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in', 'Fivechat', 662, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(905, 'US Tax', 'Gerry Beevis', '2013-03-21 20:02:58', 'convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel', 'Plajo', 891, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(906, 'GGY Axis', 'Tim Meiner', '2002-10-23 06:37:22', 'enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat', 'Trudeo', 528, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(907, 'OEL', 'Gaven Reddoch', '2004-03-26 06:11:44', 'tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien', 'Gigashots', 794, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(908, 'iGrafx', 'Sharity Champagne', '2002-10-27 11:45:18', 'dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', 'Devcast', 646, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(909, 'IFTA', 'Dorian Tiesman', '1984-08-16 15:45:59', 'id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit', 'Flashdog', 899, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(910, 'CDM Co-ordinator', 'Teressa Meco', '2007-06-01 02:26:23', 'erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor', 'Twiyo', 799, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(911, 'Award Submissions', 'Jameson Rudge', '2010-05-21 11:43:23', 'odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur', 'Yodo', 915, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(912, 'Linux', 'Teodora Maffiotti', '2001-09-10 20:58:53', 'erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at', 'Digitube', 630, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(913, 'EU Funding', 'Jolene Garside', '1970-07-05 04:15:46', 'curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod', 'Skidoo', 798, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(914, 'VMware Server', 'Chlo Du Hamel', '2011-05-12 17:24:01', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget', 'Zooveo', 447, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(915, 'Xcalibur', 'Morley Sarfas', '2016-02-23 23:07:28', 'mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis', 'Eadel', 964, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(916, 'Globalization', 'Dilan Pavlenkov', '2013-06-15 18:12:10', 'sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse', 'Skippad', 300, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(917, 'IT Audit', 'Cosette Zimmermanns', '2004-07-11 18:03:36', 'aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', 'Wordware', 389, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(918, 'Verilog', 'Norry Langlais', '1977-08-30 15:28:49', 'morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 'Ainyx', 492, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(919, 'Type 2 Diabetes', 'Mart Rutherford', '1986-12-03 07:15:27', 'nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac', 'Skiba', 349, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(920, 'JTA', 'Tome McLelland', '1971-05-05 22:03:06', 'dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 'Plambee', 626, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(921, 'Yellow Pages', 'Davine Taffie', '2001-10-31 04:31:41', 'a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet', 'Skiptube', 445, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(922, 'QRM', 'Kath Tynnan', '1990-05-14 02:25:28', 'sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', 'Tagpad', 755, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(923, 'FSC Certification', 'Shawnee Bagley', '1973-03-13 14:07:50', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo', 'Edgepulse', 725, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(924, 'NSI', 'Lorena Thomlinson', '1996-08-20 11:36:35', 'ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus', 'Jaloo', 313, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(925, 'cGMP practices', 'Tades Pedracci', '1995-03-20 15:40:32', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor', 'Jabbercube', 883, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(926, 'iHistorian', 'Marguerite Fulstow', '2015-01-06 15:03:46', 'odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 'Livetube', 721, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(927, 'HR Policies', 'Carlee Pottell', '2008-11-24 19:18:07', 'tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', 'Jazzy', 411, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(928, 'DLPAR', 'Hernando Bes', '2012-08-15 17:19:42', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate', 'Pixope', 983, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(929, 'UCP 600', 'Kathleen Snar', '1985-02-25 01:15:13', 'accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh', 'Babbleset', 599, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(930, 'BPMN', 'Dotti Bound', '1989-09-06 23:06:39', 'sit amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas', 'Rhycero', 313, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(931, 'Food Industry', 'Ranice Swainson', '1977-01-03 01:06:24', 'sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus', 'Oodoo', 719, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(932, 'Farms', 'Kari Christie', '2002-08-02 14:21:21', 'eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus', 'Brainbox', 501, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(933, 'Fraud Detection', 'Elysee Kennett', '1992-09-30 11:39:34', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus', 'Vitz', 628, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(934, 'DDIC', 'Damon Stuttman', '1989-02-27 03:51:34', 'duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum', 'Kimia', 617, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(935, 'QMF for Windows', 'Mel Heiden', '1972-07-07 05:36:28', 'imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non', 'Twimbo', 437, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(936, 'Utilities Management', 'Ruby Greenier', '1991-10-05 22:01:48', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae', 'Muxo', 760, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(937, 'vCloud', 'Faustina Tomaselli', '2015-10-18 23:45:13', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc', 'Vimbo', 903, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(938, 'Data Center', 'Alfonso Stitson', '2019-06-06 12:41:07', 'lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', 'Yakijo', 642, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(939, 'DWBI', 'Ware Kinghorn', '2007-09-20 05:06:45', 'quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', 'Avamm', 977, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(940, 'GNU C++', 'Nichols Oyley', '2005-01-08 00:57:53', 'cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'Zoozzy', 431, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(941, 'PVC', 'Jeanne Bollon', '1998-10-28 12:14:19', 'pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea dictumst morbi vestibulum velit id pretium iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante', 'Oyoloo', 776, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(942, 'Acting', 'Kalle Leavy', '2010-04-10 18:22:29', 'felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis', 'Quire', 839, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(943, 'iPhone Support', 'Townie Goodsell', '2006-01-05 08:16:13', 'elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan', 'Wordtune', 567, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(944, 'Zynx', 'Minette Ferrario', '2015-10-29 06:40:15', 'praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare', 'Feedfire', 613, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(945, 'IMS DB/DC', 'Randene O''Criane', '2012-07-03 22:34:49', 'sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede', 'Babbleblab', 860, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(946, 'Uniform Combined State Law', 'Claiborn McHarry', '1996-03-01 20:09:11', 'luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue', 'Thoughtworks', 818, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(947, 'IMS DB/DC', 'Stephanus Jerrome', '2014-08-03 12:10:48', 'dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo', 'Quatz', 376, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(948, 'Urban Redevelopment', 'Bruis Farrin', '2010-12-12 00:04:14', 'potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt', 'Gabtune', 469, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(949, 'Traditional IRA', 'Urbanus Iston', '2009-07-28 18:55:48', 'libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi nulla ac enim', 'Jamia', 374, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(950, 'DBI', 'Esdras Wolfenden', '2012-07-03 01:44:04', 'maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis', 'Quaxo', 654, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(951, 'CCSP', 'Nissie Coldwell', '1979-05-02 22:20:36', 'commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec', 'Divape', 417, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(952, 'Drip Irrigation', 'Stefania Strangeway', '1977-06-23 17:51:25', 'aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non', 'Jabbersphere', 860, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(953, 'eEmpact', 'Barby Hooks', '2019-03-25 06:28:35', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'Realfire', 716, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(954, 'Multi-channel Marketing', 'Sigfrid Bance', '2011-06-02 04:39:21', 'non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur', 'Meevee', 780, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(955, 'UAT Coordination', 'Shoshana Cristoforo', '2013-10-16 11:55:03', 'sit amet consectetuer adipiscing elit proin risus praesent lectus vestibulum quam sapien varius ut blandit non interdum in ante vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel', 'Trudeo', 607, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(956, 'QLab', 'Franklin Carragher', '2007-11-14 13:10:19', 'nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus vivamus vestibulum', 'Flashset', 856, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(957, 'Alternative Energy', 'Kleon Soonhouse', '2019-09-09 22:54:40', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor', 'InnoZ', 366, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(958, 'Big 4', 'Robbyn Keenlyside', '2010-11-21 15:15:07', 'quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus', 'Topiclounge', 910, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(959, 'CNG', 'Amity Vala', '1984-11-12 19:34:49', 'phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede', 'Mynte', 1000, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(960, 'UCITS', 'Lulita Riccardi', '1990-10-29 05:12:44', 'in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum in hac habitasse platea', 'Eazzy', 849, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(961, 'Microsoft Publisher', 'Marybeth Pullen', '1980-04-13 12:56:32', 'orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi', 'Dabshots', 688, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(962, 'CSCS', 'Jaquenetta Wreak', '1981-12-22 08:47:52', 'donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'Gabtype', 489, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(963, 'Ocean Transportation', 'Derrik Davsley', '2016-01-17 12:05:14', 'etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec', 'Linkbuzz', 647, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(964, 'Ninja Skills', 'Tracee Edwardes', '2001-08-01 14:07:26', 'semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis dis parturient montes', 'Skajo', 713, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(965, 'MSI', 'Monique Village', '2012-02-06 22:59:45', 'sapien cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet', 'Skinder', 790, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(966, 'Phase II ESA', 'Nealy Goodsir', '1976-07-27 15:49:26', 'vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing', 'Youopia', 862, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(967, 'KCS', 'Sandy McCullock', '2015-10-17 08:42:23', 'luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac', 'Abatz', 974, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(968, 'Oxygen Therapy', 'Roldan Dilworth', '2007-05-31 08:47:49', 'neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum', 'Chatterpoint', 327, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(969, 'Financial Statements', 'Lewes Dermot', '1998-12-22 11:03:37', 'lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat', 'Oozz', 797, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(970, 'European Union', 'Wheeler Eccleston', '1992-05-22 11:01:41', 'a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas', 'Eidel', 364, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(971, 'Juniper Technologies', 'Atlanta Rutter', '2003-01-21 13:28:41', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id', 'Skinder', 947, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(972, 'QCAT', 'Javier Gandy', '1995-02-02 14:16:07', 'eget congue eget semper rutrum nulla nunc purus phasellus in felis donec semper sapien a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan felis ut at dolor quis odio consequat varius integer ac', 'Photofeed', 562, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(973, 'Pygame', 'Phyllys Glencross', '1980-05-24 05:30:15', 'nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem', 'Tazzy', 937, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(974, 'Powers of Attorney', 'Alex Bonett', '2019-04-07 19:00:22', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue', 'Oyope', 357, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(975, 'Events Coordination', 'Rosalia Paulet', '1975-05-05 21:16:01', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut', 'Trilia', 547, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(976, 'SFX', 'Flor Gingell', '1987-06-29 12:44:18', 'dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie', 'Abata', 375, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(977, 'Design Patterns', 'Ebeneser Petteford', '2007-09-02 08:03:41', 'ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in', 'Kanoodle', 741, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(978, 'Style Guides', 'Kiley Robbs', '2007-01-01 22:28:57', 'platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat', 'Bubblebox', 447, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(979, 'IQMS', 'Chrotoem Hrycek', '1988-10-23 17:36:11', 'quis justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam', 'Devify', 997, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(980, 'Capital Equipment', 'Mitzi Sommerlin', '1990-01-03 14:33:40', 'congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt', 'Skimia', 819, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(981, 'Interpersonal Skills', 'Reinaldo Lanchbery', '1971-11-11 04:01:24', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit', 'Zoomlounge', 729, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(982, 'RSoft', 'Locke Fullard', '2011-09-28 15:23:34', 'molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo', 'Oba', 888, 5);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(983, 'Export', 'Fayth Toman', '1973-08-27 10:19:15', 'justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing', 'Brightdog', 576, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(984, 'T-SQL Stored Procedures', 'Northrup Guirardin', '2016-11-23 10:57:02', 'venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'Flipopia', 580, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(985, 'Order Fulfillment', 'Phillip Bellon', '2009-05-24 06:51:43', 'augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula', 'Jaxspan', 563, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(986, 'Elementary Education', 'Sophi Haversham', '1999-10-16 19:13:05', 'rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh', 'Photofeed', 901, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(987, 'Design of Experiments', 'Justino Lishman', '1979-11-30 04:23:41', 'morbi porttitor lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu', 'Browsebug', 502, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(988, 'XDoclet', 'Pip Usher', '2013-01-24 16:57:23', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget', 'Twinte', 634, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(989, 'JBA', 'Cirilo Pennycuick', '1996-06-14 18:24:23', 'turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus', 'Voomm', 713, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(990, 'Urgent Care', 'North Bownde', '1974-04-10 23:35:28', 'nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque', 'Quinu', 381, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(991, 'QHSE', 'Leroy Onion', '2005-01-20 03:14:58', 'curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 'Photojam', 644, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(992, 'FCNSP', 'Stevana Ehrat', '1982-12-01 22:17:54', 'sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat', 'Zoozzy', 382, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(993, 'JMS', 'Siobhan Nemchinov', '2008-04-10 00:27:26', 'ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut', 'Jetwire', 596, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(994, 'Quantitative Research', 'Lyle Sinderland', '1996-02-16 18:01:35', 'ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur', 'Youopia', 459, 3);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(995, 'Cisco IOS', 'Bertram Isakson', '1997-10-02 13:01:27', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean fermentum', 'Innotype', 716, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(996, 'RSS', 'Jemie Steffens', '2006-02-08 15:32:00', 'in lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus at diam nam tristique tortor eu pede', 'Brainsphere', 510, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(997, 'DSI', 'Olimpia Chadwen', '1983-12-04 22:55:43', 'sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus', 'Eire', 861, 4);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(998, 'CAD', 'Karina Liddle', '2000-07-06 03:33:48', 'sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in', 'Teklist', 301, 1);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(999, 'GSLC', 'Linus Dee', '1994-05-16 02:02:06', 'fusce lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut', 'Brainbox', 990, 2);
INSERT
INTO bibliotheque.ouvrage
(ouvrage_id, name, author, release_date, summary, editor, number_of_pages, notation)
VALUES
(1000, 'PCS7', 'Tedie Lampe', '1984-06-04 03:07:04', 'ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti', 'Flashspan', 451, 5);