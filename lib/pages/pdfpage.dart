import 'package:commerce/utils/pdfcontainer.dart';
import 'package:flutter/material.dart';

class PageForPdf extends StatelessWidget {
  static const String id = 'PageForPdf';

  final List<Map<String, String>> pdfData = [
    {
      'urlPdf': '1iR7c0K3WDYy5yocICRgBAGNiJQuvShfR',
      'textPdf': 'Agrafage de la bande_.pdf'
    },
    {
      'urlPdf': '1b9s_MdSAGcnbE2v4SRaAkq6h5Nhyc6L8',
      'textPdf': 'Partager ADRPT changement de la bande_ (002)'
    },
    {
      'urlPdf': '1EO8RHtt5DWY-vp7Xw8fnPSNw44ezX_g_',
      'textPdf': 'Partager Ajustage du racleur_ (003)'
    },
    {
      'urlPdf': '1lndgFm2e3eYuQGW_bA2tgYI3T16IVyAH',
      'textPdf': 'Partager ajustement bavette rive'
    },
    {
      'urlPdf': '158PGbWsQqj-H6j5nUC5jjJwNeWn6PXPR',
      'textPdf': 'Changement bavettes rives'
    },

    {
      'urlPdf': '15eGm2j86GKydlJswQRC20hEg2WSXi93L',
      'textPdf': 'Changement bavettes rives'
    },
    {
      'urlPdf': '158PGbWsQqj-H6j5nUC5jjJwNeWn6PXPR',
      'textPdf': 'Changement cyclonne CS_ (002)'
    },
    {
      'urlPdf': '15eGm2j86GKydlJswQRC20hEg2WSXi93L',
      'textPdf': 'Changement de la buse du cyclonne_'
    },
    {
      'urlPdf': '17LwY4cDiVpKaDnUokWDJ5SU7zxPUcmui',
      'textPdf': 'changement des station supérieure'
    },
    {
      'urlPdf': '17V82C2p8mDV6wWjeCj15f00UaQ_KnrH-',
      'textPdf': 'changement moteur électrique_ (002)'
    },
    {
      'urlPdf': '17acahlDwfNaNC3tQjMXIzc5bYKpl1kP0',
      'textPdf': 'changement palier tambour'
    },
    {
      'urlPdf': '1ANtzwPdB_quesiMpjnZsXv1O8bDNyVFj',
      'textPdf': 'Changement racleurs  CS'
    },
    {
      'urlPdf': '1Aaglc4RHyIedoQMpKo0FV35eM-zdQ-Fs',
      'textPdf': 'Changement roulement de palier d' 'un convoyeure'
    },
    {
      'urlPdf': '1Dv8O4xH-nbewejdn3Ga10GJP9DzmLmBU',
      'textPdf': 'changementaccouplement_'
    },
    {
      'urlPdf': '1Go39FazAjA45ycvu8WPO-Zhh9FILtbL1',
      'textPdf': 'Chgt rouleaux superieure (convoyeurs séparateur )'
    },
    {
      'urlPdf': '1JA4iNPi7K91KMDKWhJtVczN79oET-_9D',
      'textPdf': 'Entretien anti-devireure_'
    },
    {
      'urlPdf': '1L02jSTRjg6SQMLC-rI9XtWl9kMw4mI90',
      'textPdf': 'Graissage des galets du contre poids_'
    },
    {
      'urlPdf': '1MDVT0yHlqnnISFnNSsZqh-OfsaICdd00',
      'textPdf': 'Graissage réducteur du convoyeur_'
    },
    {
      'urlPdf': '1PMrq81AblRcA-yZIyTW8-REfTo-ikNyq',
      'textPdf': 'Intervention sur palan _'
    },
    {
      'urlPdf': '1QUp4NFkfirhZBllL6aR36SdAwqjLKDSc',
      'textPdf': 'Liste des MO (007) (002)'
    },
    {
      'urlPdf': '1RptwWl-gG3StV4aJB2pu-jZgQRno7-lT',
      'textPdf': 'M.O Changement tambour de commande - Copie'
    },
    {
      'urlPdf': '1RptwWl-gG3StV4aJB2pu-jZgQRno7-lT',
      'textPdf': 'MO 1 Changement des pompes P0011ABC et P0012ABC '
    },
    {
      'urlPdf': '1RvOdPoZ0hNpBe4ImPTVe9juUzvve8Ci_',
      'textPdf':
          'MO 5 Changement du joint compensateur coté aspiration des pompes P0011ABC et P0012ABC'
    },
    {
      'urlPdf': '1Aaglc4RHyIedoQMpKo0FV35eM-zdQ-Fs',
      'textPdf':
          'MO 7 Changement des réducteurs des pompes P0011ABC et P0012ABC'
    },
    {
      'urlPdf': '158PGbWsQqj-H6j5nUC5jjJwNeWn6PXPR',
      'textPdf':
          'MO 8 Changement des moteurs électriques des pompesP0011ABC et P0012ABC'
    },
    {
      'urlPdf': '15eGm2j86GKydlJswQRC20hEg2WSXi93L',
      'textPdf': 'MO 9 Changement d'
          'accouplement (Moteur-Réducteur) des pompes P0011ABC et P0012ABC'
    },
    {
      'urlPdf': '17acahlDwfNaNC3tQjMXIzc5bYKpl1kP0',
      'textPdf':
          'MO 10 Alignement (Moteur-Reducteur) des pompes P11ABC et P12ABC'
    },
    {
      'urlPdf': '1L02jSTRjg6SQMLC-rI9XtWl9kMw4mI90',
      'textPdf': 'MO 11 Changement d'
          'accouplement (Réducteur-Pompe) des pompes P0011ABC et P0012ABC '
    },
    {
      'urlPdf': '1MDVT0yHlqnnISFnNSsZqh-OfsaICdd00',
      'textPdf':
          'MO 12 Alignement (Réducteur-Pompe) des pompes P11ABC et P12ABC '
    },
    {
      'urlPdf': '1V_fd0atLXnhv9rVCiQj8s2_sJZHAXhaE',
      'textPdf':
          'MO 13 Changement de la centrale hydraulique  P0011ABC et P0012ABC'
    },
    {
      'urlPdf': '1W44fZyEh14cbRMXbY6faF42ZPywD27L6',
      'textPdf':
          'MO 14 Changement de la pompe hydraulique  P0011ABC et P0012ABC '
    },
    {
      'urlPdf': '1dtJlE_80qC4xMui_SOCE3v5pr2q1hyEY',
      'textPdf':
          'MO 15 Changement du moteur electrique de la centrale hydraulique  P0011ABC et P0012ABC '
    },
    {
      'urlPdf': '1fqWBePdsG64pilv1byl7D6BYqoBXJhBo',
      'textPdf': 'MO 16  Changement de l'
          'accouplement du moto pompe  P0011ABC et P0012ABC '
    },
    {
      'urlPdf': '1hfoHP82_ihtSbtUdX6u5ZhH11qyfP-wj',
      'textPdf':
          'MO 17 Changement des filtres de la centrale hydraulique  P0011ABC et P0012ABC '
    },
    {
      'urlPdf': '1ij_BNnw7ak2qjDXj3bE5UbUQMX7MgqlX',
      'textPdf': 'MO 18 Changement de la pompe fosse 10 '
    },
    {
      'urlPdf': '1okZHcW9OoYQd26kxkay_MbGNikbyzG07',
      'textPdf': 'Réglage déport de la bande - Convoyeurs à bande RF4 et RH1'
    },
    {
      'urlPdf': '1rNe9wyupWtUAp-0xjoaEtM3AJv4Gbb7Y',
      'textPdf': 'Réglage déport de la bande convoyeur sépareteur_'
    },
    {
      'urlPdf': '1s50jOYTPrW_8Tbyql-wKGIJ-7FsqfkDX',
      'textPdf': 'Réglage déport de la bande Convoyeurs à bande RF23 RH 34 RP1'
    },
    {
      'urlPdf': '1ugcmh4nS1CdKeWeKd-2xWniJJ0UDqIf_',
      'textPdf': 'Tension de la bande_ (002)'
    },
    {
      'urlPdf': '1x0GbAH6q-jcepj11BdV4MWZ8LtcUzC04',
      'textPdf': 'Vidange d' 'huile réducteur convoyeur_'
    },

    // Add more entries here...
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: AppBar(
        title: Text(
          'Pdf',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Set the number of columns in the grid
          mainAxisSpacing: 16.0, // Adjust the spacing between rows
          crossAxisSpacing: 16.0, // Adjust the spacing between columns
        ),
        itemCount: pdfData.length,
        itemBuilder: (context, index) {
          return PdfContainer(
            urlPdf: pdfData[index]['urlPdf']!,
            textPdf: pdfData[index]['textPdf']!,
          );
        },
      ),
    );
  }
}
