CREATE TABLE `stock`
(
 `id`         int NOT NULL ,
 `ouvrage_id` int NOT NULL ,
 `quantite`   int NOT NULL ,

PRIMARY KEY (`id`),
KEY `fkIdx_16` (`ouvrage_id`),
CONSTRAINT `FK_16` FOREIGN KEY `fkIdx_16` (OUVRAGE_ID) REFERENCES ouvrage (ouvrage_id)
);


INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(1, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(2, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(3, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(4, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(5, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(6, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(7, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(8, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(9, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(10, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(11, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(12, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(13, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(14, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(15, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(16, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(17, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(18, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(19, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(20, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(21, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(22, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(23, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(24, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(25, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(26, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(27, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(28, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(29, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(30, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(31, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(32, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(33, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(34, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(35, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(36, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(37, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(38, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(39, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(40, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(41, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(42, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(43, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(44, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(45, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(46, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(47, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(48, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(49, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(50, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(51, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(52, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(53, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(54, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(55, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(56, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(57, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(58, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(59, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(60, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(61, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(62, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(63, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(64, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(65, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(66, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(67, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(68, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(69, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(70, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(71, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(72, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(73, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(74, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(75, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(76, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(77, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(78, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(79, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(80, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(81, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(82, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(83, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(84, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(85, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(86, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(87, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(88, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(89, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(90, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(91, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(92, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(93, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(94, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(95, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(96, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(97, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(98, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(99, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(100, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(101, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(102, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(103, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(104, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(105, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(106, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(107, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(108, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(109, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(110, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(111, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(112, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(113, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(114, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(115, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(116, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(117, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(118, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(119, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(120, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(121, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(122, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(123, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(124, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(125, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(126, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(127, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(128, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(129, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(130, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(131, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(132, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(133, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(134, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(135, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(136, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(137, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(138, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(139, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(140, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(141, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(142, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(143, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(144, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(145, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(146, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(147, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(148, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(149, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(150, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(151, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(152, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(153, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(154, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(155, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(156, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(157, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(158, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(159, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(160, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(161, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(162, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(163, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(164, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(165, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(166, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(167, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(168, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(169, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(170, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(171, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(172, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(173, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(174, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(175, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(176, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(177, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(178, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(179, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(180, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(181, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(182, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(183, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(184, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(185, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(186, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(187, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(188, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(189, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(190, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(191, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(192, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(193, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(194, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(195, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(196, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(197, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(198, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(199, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(200, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(201, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(202, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(203, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(204, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(205, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(206, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(207, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(208, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(209, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(210, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(211, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(212, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(213, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(214, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(215, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(216, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(217, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(218, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(219, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(220, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(221, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(222, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(223, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(224, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(225, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(226, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(227, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(228, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(229, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(230, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(231, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(232, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(233, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(234, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(235, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(236, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(237, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(238, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(239, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(240, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(241, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(242, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(243, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(244, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(245, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(246, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(247, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(248, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(249, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(250, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(251, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(252, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(253, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(254, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(255, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(256, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(257, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(258, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(259, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(260, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(261, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(262, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(263, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(264, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(265, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(266, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(267, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(268, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(269, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(270, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(271, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(272, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(273, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(274, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(275, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(276, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(277, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(278, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(279, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(280, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(281, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(282, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(283, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(284, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(285, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(286, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(287, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(288, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(289, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(290, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(291, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(292, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(293, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(294, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(295, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(296, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(297, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(298, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(299, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(300, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(301, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(302, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(303, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(304, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(305, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(306, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(307, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(308, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(309, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(310, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(311, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(312, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(313, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(314, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(315, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(316, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(317, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(318, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(319, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(320, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(321, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(322, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(323, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(324, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(325, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(326, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(327, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(328, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(329, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(330, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(331, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(332, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(333, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(334, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(335, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(336, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(337, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(338, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(339, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(340, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(341, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(342, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(343, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(344, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(345, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(346, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(347, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(348, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(349, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(350, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(351, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(352, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(353, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(354, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(355, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(356, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(357, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(358, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(359, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(360, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(361, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(362, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(363, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(364, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(365, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(366, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(367, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(368, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(369, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(370, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(371, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(372, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(373, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(374, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(375, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(376, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(377, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(378, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(379, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(380, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(381, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(382, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(383, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(384, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(385, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(386, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(387, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(388, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(389, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(390, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(391, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(392, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(393, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(394, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(395, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(396, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(397, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(398, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(399, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(400, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(401, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(402, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(403, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(404, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(405, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(406, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(407, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(408, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(409, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(410, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(411, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(412, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(413, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(414, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(415, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(416, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(417, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(418, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(419, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(420, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(421, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(422, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(423, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(424, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(425, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(426, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(427, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(428, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(429, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(430, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(431, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(432, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(433, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(434, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(435, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(436, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(437, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(438, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(439, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(440, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(441, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(442, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(443, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(444, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(445, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(446, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(447, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(448, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(449, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(450, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(451, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(452, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(453, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(454, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(455, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(456, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(457, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(458, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(459, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(460, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(461, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(462, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(463, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(464, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(465, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(466, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(467, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(468, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(469, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(470, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(471, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(472, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(473, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(474, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(475, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(476, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(477, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(478, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(479, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(480, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(481, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(482, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(483, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(484, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(485, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(486, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(487, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(488, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(489, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(490, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(491, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(492, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(493, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(494, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(495, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(496, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(497, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(498, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(499, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(500, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(501, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(502, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(503, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(504, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(505, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(506, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(507, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(508, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(509, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(510, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(511, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(512, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(513, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(514, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(515, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(516, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(517, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(518, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(519, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(520, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(521, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(522, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(523, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(524, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(525, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(526, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(527, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(528, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(529, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(530, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(531, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(532, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(533, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(534, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(535, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(536, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(537, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(538, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(539, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(540, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(541, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(542, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(543, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(544, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(545, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(546, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(547, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(548, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(549, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(550, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(551, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(552, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(553, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(554, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(555, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(556, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(557, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(558, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(559, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(560, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(561, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(562, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(563, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(564, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(565, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(566, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(567, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(568, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(569, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(570, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(571, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(572, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(573, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(574, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(575, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(576, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(577, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(578, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(579, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(580, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(581, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(582, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(583, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(584, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(585, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(586, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(587, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(588, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(589, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(590, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(591, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(592, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(593, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(594, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(595, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(596, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(597, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(598, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(599, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(600, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(601, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(602, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(603, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(604, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(605, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(606, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(607, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(608, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(609, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(610, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(611, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(612, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(613, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(614, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(615, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(616, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(617, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(618, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(619, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(620, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(621, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(622, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(623, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(624, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(625, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(626, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(627, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(628, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(629, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(630, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(631, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(632, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(633, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(634, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(635, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(636, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(637, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(638, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(639, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(640, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(641, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(642, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(643, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(644, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(645, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(646, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(647, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(648, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(649, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(650, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(651, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(652, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(653, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(654, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(655, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(656, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(657, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(658, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(659, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(660, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(661, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(662, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(663, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(664, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(665, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(666, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(667, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(668, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(669, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(670, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(671, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(672, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(673, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(674, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(675, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(676, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(677, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(678, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(679, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(680, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(681, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(682, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(683, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(684, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(685, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(686, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(687, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(688, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(689, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(690, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(691, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(692, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(693, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(694, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(695, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(696, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(697, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(698, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(699, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(700, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(701, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(702, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(703, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(704, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(705, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(706, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(707, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(708, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(709, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(710, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(711, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(712, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(713, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(714, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(715, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(716, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(717, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(718, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(719, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(720, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(721, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(722, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(723, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(724, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(725, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(726, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(727, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(728, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(729, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(730, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(731, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(732, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(733, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(734, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(735, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(736, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(737, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(738, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(739, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(740, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(741, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(742, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(743, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(744, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(745, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(746, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(747, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(748, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(749, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(750, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(751, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(752, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(753, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(754, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(755, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(756, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(757, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(758, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(759, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(760, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(761, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(762, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(763, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(764, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(765, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(766, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(767, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(768, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(769, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(770, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(771, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(772, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(773, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(774, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(775, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(776, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(777, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(778, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(779, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(780, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(781, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(782, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(783, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(784, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(785, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(786, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(787, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(788, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(789, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(790, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(791, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(792, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(793, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(794, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(795, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(796, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(797, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(798, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(799, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(800, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(801, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(802, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(803, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(804, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(805, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(806, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(807, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(808, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(809, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(810, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(811, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(812, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(813, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(814, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(815, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(816, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(817, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(818, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(819, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(820, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(821, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(822, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(823, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(824, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(825, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(826, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(827, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(828, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(829, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(830, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(831, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(832, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(833, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(834, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(835, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(836, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(837, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(838, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(839, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(840, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(841, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(842, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(843, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(844, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(845, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(846, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(847, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(848, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(849, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(850, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(851, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(852, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(853, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(854, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(855, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(856, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(857, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(858, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(859, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(860, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(861, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(862, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(863, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(864, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(865, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(866, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(867, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(868, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(869, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(870, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(871, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(872, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(873, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(874, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(875, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(876, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(877, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(878, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(879, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(880, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(881, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(882, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(883, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(884, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(885, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(886, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(887, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(888, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(889, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(890, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(891, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(892, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(893, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(894, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(895, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(896, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(897, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(898, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(899, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(900, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(901, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(902, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(903, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(904, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(905, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(906, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(907, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(908, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(909, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(910, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(911, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(912, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(913, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(914, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(915, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(916, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(917, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(918, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(919, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(920, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(921, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(922, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(923, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(924, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(925, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(926, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(927, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(928, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(929, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(930, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(931, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(932, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(933, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(934, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(935, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(936, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(937, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(938, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(939, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(940, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(941, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(942, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(943, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(944, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(945, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(946, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(947, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(948, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(949, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(950, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(951, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(952, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(953, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(954, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(955, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(956, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(957, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(958, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(959, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(960, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(961, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(962, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(963, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(964, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(965, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(966, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(967, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(968, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(969, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(970, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(971, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(972, 1);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(973, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(974, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(975, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(976, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(977, 8);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(978, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(979, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(980, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(981, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(982, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(983, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(984, 5);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(985, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(986, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(987, 10);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(988, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(989, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(990, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(991, 2);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(992, 4);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(993, 7);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(994, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(995, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(996, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(997, 3);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(998, 6);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(999, 9);
INSERT
INTO stock
(ouvrage_id, quantite)
VALUES
(1000, 10);