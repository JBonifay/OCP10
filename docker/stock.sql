CREATE TABLE bibliotheque.stock
(
    stock_id   INT NOT NULL AUTO_INCREMENT,
    ouvrage_id INT NOT NULL,
    quantity   INT NOT NULL,

    PRIMARY KEY (stock_id),
    CONSTRAINT stock_ouvrage_ouvrage_id_fk
        FOREIGN KEY (ouvrage_id) REFERENCES bibliotheque.ouvrage (ouvrage_id)
);


INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(1, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(2, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(3, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(4, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(5, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(6, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(7, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(8, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(9, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(10, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(11, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(12, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(13, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(14, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(15, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(16, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(17, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(18, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(19, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(20, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(21, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(22, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(23, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(24, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(25, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(26, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(27, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(28, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(29, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(30, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(31, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(32, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(33, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(34, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(35, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(36, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(37, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(38, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(39, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(40, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(41, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(42, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(43, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(44, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(45, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(46, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(47, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(48, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(49, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(50, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(51, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(52, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(53, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(54, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(55, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(56, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(57, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(58, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(59, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(60, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(61, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(62, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(63, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(64, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(65, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(66, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(67, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(68, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(69, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(70, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(71, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(72, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(73, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(74, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(75, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(76, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(77, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(78, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(79, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(80, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(81, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(82, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(83, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(84, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(85, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(86, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(87, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(88, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(89, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(90, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(91, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(92, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(93, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(94, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(95, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(96, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(97, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(98, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(99, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(100, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(101, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(102, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(103, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(104, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(105, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(106, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(107, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(108, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(109, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(110, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(111, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(112, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(113, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(114, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(115, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(116, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(117, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(118, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(119, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(120, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(121, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(122, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(123, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(124, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(125, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(126, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(127, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(128, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(129, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(130, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(131, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(132, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(133, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(134, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(135, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(136, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(137, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(138, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(139, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(140, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(141, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(142, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(143, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(144, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(145, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(146, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(147, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(148, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(149, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(150, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(151, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(152, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(153, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(154, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(155, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(156, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(157, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(158, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(159, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(160, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(161, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(162, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(163, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(164, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(165, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(166, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(167, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(168, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(169, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(170, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(171, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(172, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(173, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(174, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(175, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(176, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(177, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(178, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(179, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(180, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(181, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(182, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(183, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(184, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(185, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(186, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(187, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(188, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(189, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(190, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(191, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(192, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(193, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(194, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(195, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(196, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(197, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(198, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(199, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(200, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(201, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(202, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(203, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(204, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(205, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(206, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(207, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(208, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(209, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(210, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(211, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(212, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(213, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(214, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(215, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(216, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(217, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(218, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(219, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(220, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(221, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(222, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(223, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(224, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(225, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(226, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(227, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(228, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(229, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(230, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(231, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(232, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(233, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(234, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(235, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(236, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(237, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(238, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(239, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(240, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(241, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(242, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(243, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(244, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(245, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(246, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(247, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(248, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(249, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(250, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(251, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(252, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(253, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(254, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(255, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(256, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(257, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(258, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(259, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(260, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(261, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(262, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(263, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(264, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(265, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(266, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(267, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(268, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(269, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(270, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(271, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(272, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(273, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(274, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(275, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(276, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(277, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(278, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(279, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(280, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(281, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(282, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(283, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(284, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(285, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(286, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(287, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(288, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(289, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(290, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(291, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(292, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(293, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(294, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(295, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(296, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(297, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(298, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(299, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(300, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(301, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(302, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(303, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(304, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(305, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(306, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(307, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(308, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(309, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(310, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(311, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(312, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(313, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(314, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(315, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(316, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(317, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(318, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(319, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(320, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(321, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(322, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(323, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(324, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(325, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(326, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(327, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(328, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(329, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(330, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(331, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(332, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(333, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(334, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(335, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(336, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(337, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(338, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(339, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(340, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(341, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(342, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(343, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(344, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(345, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(346, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(347, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(348, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(349, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(350, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(351, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(352, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(353, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(354, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(355, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(356, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(357, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(358, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(359, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(360, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(361, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(362, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(363, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(364, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(365, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(366, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(367, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(368, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(369, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(370, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(371, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(372, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(373, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(374, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(375, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(376, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(377, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(378, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(379, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(380, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(381, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(382, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(383, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(384, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(385, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(386, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(387, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(388, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(389, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(390, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(391, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(392, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(393, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(394, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(395, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(396, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(397, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(398, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(399, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(400, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(401, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(402, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(403, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(404, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(405, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(406, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(407, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(408, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(409, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(410, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(411, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(412, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(413, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(414, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(415, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(416, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(417, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(418, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(419, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(420, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(421, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(422, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(423, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(424, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(425, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(426, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(427, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(428, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(429, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(430, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(431, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(432, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(433, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(434, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(435, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(436, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(437, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(438, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(439, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(440, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(441, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(442, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(443, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(444, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(445, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(446, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(447, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(448, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(449, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(450, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(451, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(452, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(453, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(454, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(455, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(456, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(457, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(458, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(459, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(460, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(461, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(462, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(463, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(464, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(465, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(466, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(467, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(468, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(469, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(470, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(471, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(472, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(473, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(474, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(475, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(476, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(477, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(478, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(479, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(480, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(481, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(482, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(483, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(484, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(485, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(486, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(487, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(488, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(489, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(490, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(491, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(492, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(493, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(494, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(495, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(496, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(497, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(498, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(499, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(500, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(501, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(502, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(503, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(504, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(505, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(506, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(507, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(508, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(509, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(510, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(511, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(512, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(513, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(514, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(515, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(516, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(517, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(518, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(519, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(520, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(521, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(522, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(523, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(524, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(525, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(526, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(527, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(528, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(529, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(530, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(531, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(532, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(533, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(534, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(535, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(536, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(537, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(538, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(539, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(540, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(541, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(542, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(543, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(544, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(545, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(546, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(547, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(548, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(549, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(550, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(551, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(552, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(553, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(554, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(555, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(556, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(557, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(558, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(559, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(560, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(561, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(562, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(563, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(564, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(565, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(566, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(567, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(568, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(569, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(570, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(571, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(572, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(573, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(574, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(575, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(576, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(577, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(578, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(579, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(580, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(581, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(582, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(583, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(584, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(585, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(586, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(587, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(588, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(589, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(590, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(591, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(592, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(593, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(594, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(595, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(596, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(597, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(598, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(599, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(600, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(601, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(602, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(603, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(604, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(605, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(606, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(607, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(608, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(609, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(610, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(611, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(612, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(613, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(614, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(615, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(616, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(617, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(618, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(619, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(620, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(621, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(622, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(623, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(624, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(625, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(626, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(627, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(628, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(629, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(630, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(631, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(632, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(633, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(634, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(635, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(636, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(637, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(638, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(639, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(640, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(641, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(642, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(643, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(644, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(645, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(646, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(647, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(648, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(649, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(650, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(651, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(652, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(653, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(654, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(655, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(656, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(657, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(658, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(659, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(660, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(661, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(662, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(663, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(664, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(665, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(666, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(667, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(668, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(669, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(670, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(671, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(672, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(673, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(674, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(675, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(676, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(677, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(678, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(679, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(680, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(681, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(682, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(683, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(684, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(685, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(686, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(687, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(688, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(689, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(690, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(691, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(692, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(693, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(694, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(695, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(696, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(697, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(698, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(699, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(700, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(701, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(702, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(703, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(704, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(705, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(706, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(707, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(708, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(709, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(710, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(711, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(712, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(713, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(714, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(715, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(716, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(717, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(718, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(719, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(720, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(721, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(722, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(723, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(724, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(725, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(726, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(727, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(728, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(729, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(730, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(731, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(732, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(733, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(734, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(735, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(736, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(737, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(738, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(739, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(740, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(741, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(742, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(743, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(744, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(745, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(746, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(747, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(748, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(749, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(750, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(751, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(752, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(753, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(754, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(755, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(756, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(757, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(758, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(759, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(760, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(761, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(762, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(763, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(764, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(765, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(766, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(767, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(768, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(769, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(770, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(771, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(772, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(773, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(774, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(775, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(776, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(777, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(778, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(779, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(780, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(781, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(782, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(783, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(784, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(785, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(786, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(787, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(788, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(789, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(790, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(791, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(792, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(793, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(794, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(795, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(796, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(797, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(798, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(799, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(800, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(801, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(802, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(803, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(804, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(805, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(806, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(807, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(808, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(809, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(810, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(811, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(812, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(813, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(814, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(815, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(816, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(817, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(818, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(819, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(820, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(821, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(822, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(823, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(824, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(825, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(826, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(827, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(828, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(829, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(830, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(831, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(832, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(833, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(834, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(835, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(836, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(837, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(838, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(839, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(840, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(841, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(842, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(843, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(844, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(845, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(846, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(847, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(848, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(849, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(850, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(851, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(852, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(853, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(854, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(855, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(856, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(857, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(858, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(859, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(860, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(861, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(862, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(863, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(864, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(865, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(866, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(867, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(868, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(869, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(870, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(871, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(872, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(873, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(874, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(875, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(876, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(877, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(878, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(879, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(880, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(881, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(882, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(883, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(884, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(885, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(886, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(887, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(888, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(889, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(890, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(891, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(892, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(893, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(894, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(895, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(896, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(897, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(898, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(899, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(900, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(901, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(902, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(903, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(904, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(905, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(906, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(907, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(908, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(909, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(910, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(911, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(912, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(913, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(914, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(915, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(916, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(917, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(918, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(919, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(920, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(921, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(922, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(923, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(924, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(925, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(926, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(927, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(928, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(929, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(930, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(931, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(932, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(933, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(934, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(935, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(936, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(937, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(938, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(939, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(940, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(941, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(942, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(943, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(944, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(945, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(946, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(947, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(948, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(949, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(950, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(951, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(952, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(953, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(954, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(955, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(956, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(957, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(958, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(959, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(960, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(961, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(962, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(963, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(964, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(965, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(966, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(967, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(968, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(969, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(970, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(971, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(972, 1);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(973, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(974, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(975, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(976, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(977, 8);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(978, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(979, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(980, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(981, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(982, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(983, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(984, 5);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(985, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(986, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(987, 10);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(988, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(989, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(990, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(991, 2);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(992, 4);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(993, 7);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(994, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(995, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(996, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(997, 3);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(998, 6);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(999, 9);
INSERT
INTO bibliotheque.stock
(ouvrage_id, quantity)
VALUES
(1000, 10);