import 'dart:math';

class GageStats {
  static final _gageEasy = [
    "Karaoké TIME!\n(Tchikita)",
    "Karaoké TIME!\n(Pookie)",
    "Karaoké TIME!\n(La Lepre de Zerator)",
    "Karaoké TIME!\n(Moulaga)",
    "Karaoké TIME!\n(Belle, tu peux choisir 3 personnes pour t'accompagner)",
    "À la flotte...\nTu dois sauter dans la piscine",
    "Tu dois complimenter, avec des mots sincères, toutes les personnes de la soirée",
    "Mamoud vendeur de tapis!\nTu dois essayer de vendre un stylo à une personne de ton choix",
    "Faire une déclaration machiste à la personne de ton choix",
    "L’hôte est obligé de faire un discours pour ses invités",
    "Les minis-hôtes doivent faire un discours avec l’hôte pour les invités",
    "Cupidon\nDésigne deux personnes qui doivent agir comme si elles étaient en couple pendant 20 minutes",
    "Chanteur né\nQuand tu veux parler, tu devras chanter pendant les 10 prochaines minutes",
    "Tu dois mettre tes chaussettes sur tes branches de lunettes",
    "Tu dois faire la conversation à ta chaise pendant 2 minutes",
    "Mamoud!\nTu dois parler avec un accent mamadou pendant 5 minutes",
    "Vas-y frère!\nTu dois draguer un des autres joueurs",
    "Coup de chance\nChoisis l'un des hôtes et épile le",
    "Picasso!\nTu dois te laisser dessiner sur le corps par une personne désigné par les autres joueurs",
    "Tu dois citer les 7 péchés capitaux, les septs merveilles du mondes et les couleurs de l’arc en ciel, sinon c’est deux gages de plus BB",
    "Coup de chance!\nLes hôtes prennent deux gages",
    "Coup de chance!\nL'hôte désigne une personne qui prend 1 gage",
    "Coup de chance!\nL'hôte désigne une personne qui prend 1 gage",
    "Coup de chance!\nL'hôte désigne une personne qui prend 1 gage",
  ];
  static final _gageMedium = [
    "Just Dance Time!\n Choisis quelqu'un pour t'accompagner",
    "Just Dance Time!\n Défi quelqu'un en 1 VS 1",
    "À la flotte... Tu dois sauter habiller dans la piscine ;D",
    "Improvise toi BarMan / BarMaid et fais un coktail pour toutes les personnes qui ont soif",
    "Barack Obama ? C'est toi ? Improvise un discours sur le sport de chambre...",
    "Fais une déclaration machiste à une personne désigné par les autres joueurs",
    "Tu choisis deux personnes qui doivent s’embrasser ou se faire un gros calins",
    "Essaye de vendre, avec un ami, le premier objet que tu vois à la personne que tu veux",
    "Attacher deux personnes ensembles (par un membre :D) pendant 5 minutes",
    "Hey Macarena!\n Tu dois danser la Macaréna avec une personne de ton choix",
    "Cupidon\nFais une déclaration d'amour à la personne désigné par les autres joueurs",
    "Je suis non binaire\nTu dois agir comme une personne du sexe opposés durant les 5 prochaines minutes",
    "Beer Pong Time!\n Tu dois défier l'équipe des hôtes (si tu perds c'est 1 autre gage, pour ton equipier aussi)",
    "Tu dois te faire maquiller par les personnes du sexe opposés",
    "Haleine de Dragon!\nTu dois manger un piment brut",
    "Picasso!\nLaisse les autres joueurs te faire un dessin sur le corps (où ils veulent)"
  ];
  static final _gageHard = [
    "Petit Chanceux ;)\nTu dois draguer l'un des hôtes, tu peux défier quelqu'un pour lui refiler ton gage)",
    "Girl Power\nTu devras obéir aux ordres des femmes",
    "Es-tu pur ?\nTu dois faire un test de pureté et expliquer tes choix lorsqu’on te le demande",
    "Es-tu pur ?\nTu dois faire un test de pureté et expliquer tes choix lorsqu’on te le demande",
    "Es-tu pur ?\nTu dois faire un test de pureté et expliquer tes choix lorsqu’on te le demande",
    "À la flotte!\nToi et deux personnes de ton choix doivent plonger dans la piscine (de la facon que tu choisis)",
    "L’hôte désigne quelqu’un qui est cupidon, il doit te choisir toi et quelqu’un pour former un couple pendant 10 minutes",
    "Cupidon\nLa personne la plus jeune choisis deux personnes qui doivent former un couple pendant 20 minutes",
    "Tu dois te faire maquiller par une personne du sexe opposés (choisi par les dieux)",
    "C'est la honte!\nTu dois te faire prendre en photo dans une position défini par les autres joueurs",
    "Danseur inné\nTu dois faire une danse de poll dance pendant devant tous les autres joueurs",
    "Courage!\nTu dois goûter le Cocktail du Chef",
    "Courage!\nTu dois goûter le Cocktail du Chef",
    "Courage!\nTu dois goûter le Cocktail du Chef",
    "Tu dois te faire épiler un membre, n'importe quel membre",
    "COURAGE, Tu dois deviner qui à prononcer : \"les pyramides de Galilée\", si tu as juste, cette personne prend 1 gage",
  ];
  static final _gageUnlimited = [
    "Paix à toi!\nTu dois embrasser la dernière personne à avoir eu un gage à l'endroit décidé par les autres joueurs",
    "Tu dois deviner les personnes qui seront devant toi en ayant les yeux bandés",
    "Tu dois deviner les personnes qui seront devant toi en ayant les yeux bandés",
    "Tu dois deviner les personnes qui seront devant toi en ayant les yeux bandés",
    "Usain Bolt!\nTu dois courir en caleçon dehors",
    "Eskimos!\nMets ton soutiens gorge ou caleçon pendant 1 heure au congelateur avant de le remettre",
    "Picasso!\nTu dois te faire maquiller par l'hôte ;D",
  ];
  static final _gageCoronavirus = [
    "Coronavirus ou Gage ?\nTu dois courir à OILP dehors, tu peu-x choisir quelqu'un pour t'accompagner :D",
    "Coronavirus ou Gage ?\nTu dois faire un Strip Tease devant les autres joueurs ;D",
  ];
  int _difficulty = 0;
  int _easystats = 35;
  int _mediumstats = 30;
  int _hardstats = 20;
  int _unlimitedstats = 10;
  int _coronastats = 5;

  GageStats();

  void getGageType() {
    int value = new Random().hashCode % 100;

    if (value < _easystats)
      _difficulty = 1;
    else if (value < (_easystats + _mediumstats))
      _difficulty = 2;
    else if (value < (_easystats + _mediumstats + _hardstats))
      _difficulty = 3;
    else if (value < (_easystats + _mediumstats + _hardstats + _unlimitedstats))
      _difficulty = 4;
    else if (value < (_easystats + _mediumstats + _hardstats + _unlimitedstats + _coronastats))
      _difficulty = 5;
    else
      this.getGageType();
  }

  String getGage() {
    switch (_difficulty) {
      case 1:
        {
          return _gageEasy[new Random().hashCode % _gageEasy.length];
        }
      case 2:
        {
          return _gageMedium[new Random().hashCode % _gageMedium.length];
        }
      case 3:
        {
          return _gageHard[new Random().hashCode % _gageHard.length];
        }
      case 4:
        {
          return _gageUnlimited[new Random().hashCode % _gageUnlimited.length];
        }
      case 5:
        {
          return _gageCoronavirus[new Random().hashCode % _gageCoronavirus.length];
        }
    }
    return "Error";
  }

  String getType() {
    switch (_difficulty) {
      case 1:
        {
          return "EASY";
        }
      case 2:
        {
          return "MEDIUM";
        }
      case 3:
        {
          return "HARD";
        }
      case 4:
        {
          return "UNLIMITED";
        }
      case 5:
        {
          return "CORONA";
        }
    }
    return "Error";
  }

  void setNewStats() {
    checkValidStats();
    switch (_difficulty) {
      case 1:
        {
          _easystats -= 9;
          _mediumstats += 4;
          _hardstats += 4;
          _unlimitedstats += 1;
          break;
        }
      case 2:
        {
          _easystats += 3;
          _mediumstats -= 8;
          _hardstats += 4;
          _unlimitedstats += 1;
          break;
        }
      case 3:
        {
          _easystats += 5;
          _mediumstats += 3;
          _hardstats -= 10;
          _unlimitedstats += 2;
          break;
        }
      case 4:
        {
          _easystats += 5;
          _mediumstats += 2;
          _hardstats += 2;
          _unlimitedstats -= 9;
          break;
        }
      case 5:
        {
          _easystats += 2;
          _coronastats -= 2;
          break;
        }
      default:
        {
          resetStats();
          break;
        }
    }
  }

  void checkValidStats() {
    if (_easystats < 7 || _mediumstats < 5 || _hardstats < 5
    || _unlimitedstats <= 0 || _coronastats <= 0) {
      resetStats();
    }
  }

  void resetStats() {
    this._easystats = 35;
    this._mediumstats = 30;
    this._hardstats = 20;
    this._unlimitedstats = 10;
    this._coronastats = 5;
  }
}