-- основное меню

INSERT INTO `menu` (`id`, `name`, `code`, `description`, `status`) VALUES
(1, 'Верхнее меню', 'top-menu', 'Основное меню сайта, расположенное сверху в блоке mainmenu.', 1);

-- пункты основного меню

INSERT INTO `menu_item` (`id`, `parent_id`, `menu_id`, `title`, `href`, `condition_name`, `condition_denial`, `type`, `sort`, `status`) VALUES
(1, 0, 1, 'Главная', '/site', '0', 0, 1, 6, 1),
(2, 0, 1, 'Блоги', '/blog/blog/index/', '0', 0, 1, 5, 1),
(3, 0, 1, 'О проекте', '/site/page/view/about/', '0', 0, 1, 6, 1),
(4, 0, 1, 'Пользователи', '/user/people/index/', '0', 0, 1, 2, 1),
(5, 0, 1, 'Социальные виджеты', '/site/social/', NULL, NULL, 1, 0, 0),
(6, 0, 1, 'Помощь проекту', '/site/page/view/help/', NULL, NULL, 1, 2, 1),
(7, 0, 1, 'Контакты', '/feedback/contact/', NULL, NULL, 1, 1, 1),
(8, 0, 1, 'Wiki', '/wiki/default/index/', NULL, NULL, 1, 2, 0),
(9, 0, 1, 'Войти', '/login/', 'isAuthenticated', 1, 1, 2, 1),
(10, 0, 1, 'Выйти', '/logout/', 'isAuthenticated', 0, 1, 2, 1),
(11, 0, 1, 'Регистрация', '/registration/', 'isAuthenticated', 1, 1, 1, 1),
(12, 0, 1, 'Панель управления', '/yupe/backend/', 'isSuperUser', 0, 1, 1, 1),
(14, 0, 1, 'FAQ', '/feedback/contact/faq/', '0', 0, 1, 4, 1);