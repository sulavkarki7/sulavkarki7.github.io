class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome Social Media App',
    description:
        'This is a just Fully functional Social media App by using flutter, source code is also available, check below.',
    links: 'https://github.com/sulavkarki7/Cash-Care.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/CashCare1.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'CashCare',
    description:
        'Cash Care is a personal finance management app designed to help users track their income, expenses, source codde is also available, check below.',
    links: 'https://github.com/sulavkarki7/Cash-Care.git',
  ),
  ProjectUtils(
    banners: 'assets/imgs/ecom.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Ecom App',
    description:
        'Ecom is an e-commerce application that fetches products via an API, allowing users to browse, add, and remove items from the cart while managing state efficiently, source code is also available, check below.',
    links: 'https://github.com/sulavkarki7/ecom.git',
  ),
  // ProjectUtils(
  //   banners: 'assets/imgs/04.png',
  //   icons: 'assets/imgs/flutter.png',
  //   titles: 'Awesome Plant App UI',
  //   description:
  //       'This is a just Plant App UI by using flutter, source code is also available, check below.',
  //   links: 'https://github.com/sudeshnb/flutter_plant_app.git',
  // ),
];
