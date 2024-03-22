class MonthWiseAnalyticsModel {
  int? theft;
  int? karnatakaPoliceAct1963;
  int? motorVehicleAccidentsFatal;
  int? suicide;
  int? motorVehicleAccidentsNonFatal;
  int? crimesRelatedToWomen;
  int? pocso;
  int? riots;
  int? arson;
  int? consumer;
  int? karnatakaStateLocalAct;
  int? missingPerson;
  int? molestation;
  int? cyberCrime;
  int? cheating;
  int? attemptToMurder;
  int? murder;
  int? casesOfHurt;
  int? childrenAct;
  int? cotpaCigarettesAndOtherTobaccoProducts;
  int? offencesAgainstPublicServantsPublicServantIsAVictim;
  int? burglaryNight;
  int? offencesRelatedToMarriage;
  int? burglaryDay;
  int? forgery;
  int? scheduledCasteAndTheScheduledTribes;
  int? negligentAct;
  int? robbery;
  int? animal;
  int? kidnappingAndAbduction;
  int? criminalIntimidation;
  int? attemptingToCommitOffences;
  int? deathsDueToRashnessNegligence;
  int? adulteration;
  int? exposureAndAbandonmentOfChild;
  int? crueltyByHusband;
  int? criminalTrespass;
  int? narcoticDrugsPshycotropicSubstances;
  int? affray;
  int? dacoity;
  int? wrongfulRestraintConfinement;

  MonthWiseAnalyticsModel(
      {this.theft,
      this.karnatakaPoliceAct1963,
      this.motorVehicleAccidentsFatal,
      this.suicide,
      this.motorVehicleAccidentsNonFatal,
      this.crimesRelatedToWomen,
      this.pocso,
      this.riots,
      this.arson,
      this.consumer,
      this.karnatakaStateLocalAct,
      this.missingPerson,
      this.molestation,
      this.cyberCrime,
      this.cheating,
      this.attemptToMurder,
      this.murder,
      this.casesOfHurt,
      this.childrenAct,
      this.cotpaCigarettesAndOtherTobaccoProducts,
      this.offencesAgainstPublicServantsPublicServantIsAVictim,
      this.burglaryNight,
      this.offencesRelatedToMarriage,
      this.burglaryDay,
      this.forgery,
      this.scheduledCasteAndTheScheduledTribes,
      this.negligentAct,
      this.robbery,
      this.animal,
      this.kidnappingAndAbduction,
      this.criminalIntimidation,
      this.attemptingToCommitOffences,
      this.deathsDueToRashnessNegligence,
      this.adulteration,
      this.exposureAndAbandonmentOfChild,
      this.crueltyByHusband,
      this.criminalTrespass,
      this.narcoticDrugsPshycotropicSubstances,
      this.affray,
      this.dacoity,
      this.wrongfulRestraintConfinement});

  MonthWiseAnalyticsModel.fromJson(Map<String, dynamic> json) {
    theft = json['Theft'];
    karnatakaPoliceAct1963 = json['Karnataka Police Act 1963'];
    motorVehicleAccidentsFatal = json['Motor Vehicle Accidents Fatal'];
    suicide = json['Suicide'];
    motorVehicleAccidentsNonFatal = json['Motor Vehicle Accidents Non-Fatal'];
    crimesRelatedToWomen = json['Crimes Related To Women'];
    pocso = json['Pocso'];
    riots = json['Riots'];
    arson = json['Arson'];
    consumer = json['Consumer'];
    karnatakaStateLocalAct = json['Karnataka State Local Act'];
    missingPerson = json['Missing Person'];
    molestation = json['Molestation'];
    cyberCrime = json['Cyber Crime'];
    cheating = json['Cheating'];
    attemptToMurder = json['Attempt To Murder'];
    murder = json['Murder'];
    casesOfHurt = json['Cases Of Hurt'];
    childrenAct = json['Children Act'];
    cotpaCigarettesAndOtherTobaccoProducts =
        json['Cotpa, Cigarettes And Other Tobacco Products'];
    offencesAgainstPublicServantsPublicServantIsAVictim =
        json['Offences Against Public Servants (Public Servant Is A Victim)'];
    burglaryNight = json['Burglary - Night'];
    offencesRelatedToMarriage = json['Offences Related To Marriage'];
    burglaryDay = json['Burglary - Day'];
    forgery = json['Forgery'];
    scheduledCasteAndTheScheduledTribes =
        json['Scheduled Caste And The Scheduled Tribes'];
    negligentAct = json['Negligent Act'];
    robbery = json['Robbery'];
    animal = json['Animal'];
    kidnappingAndAbduction = json['Kidnapping And Abduction'];
    criminalIntimidation = json['Criminal Intimidation'];
    attemptingToCommitOffences = json['Attempting To Commit Offences'];
    deathsDueToRashnessNegligence = json['Deaths Due To Rashness/Negligence'];
    adulteration = json['Adulteration'];
    exposureAndAbandonmentOfChild = json['Exposure And Abandonment Of Child'];
    crueltyByHusband = json['Cruelty By Husband'];
    criminalTrespass = json['Criminal Trespass'];
    narcoticDrugsPshycotropicSubstances =
        json['Narcotic Drugs & Pshycotropic Substances'];
    affray = json['Affray'];
    dacoity = json['Dacoity'];
    wrongfulRestraintConfinement = json['Wrongful Restraint/Confinement'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Theft'] = this.theft;
    data['Karnataka Police Act 1963'] = this.karnatakaPoliceAct1963;
    data['Motor Vehicle Accidents Fatal'] = this.motorVehicleAccidentsFatal;
    data['Suicide'] = this.suicide;
    data['Motor Vehicle Accidents Non-Fatal'] =
        this.motorVehicleAccidentsNonFatal;
    data['Crimes Related To Women'] = this.crimesRelatedToWomen;
    data['Pocso'] = this.pocso;
    data['Riots'] = this.riots;
    data['Arson'] = this.arson;
    data['Consumer'] = this.consumer;
    data['Karnataka State Local Act'] = this.karnatakaStateLocalAct;
    data['Missing Person'] = this.missingPerson;
    data['Molestation'] = this.molestation;
    data['Cyber Crime'] = this.cyberCrime;
    data['Cheating'] = this.cheating;
    data['Attempt To Murder'] = this.attemptToMurder;
    data['Murder'] = this.murder;
    data['Cases Of Hurt'] = this.casesOfHurt;
    data['Children Act'] = this.childrenAct;
    data['Cotpa, Cigarettes And Other Tobacco Products'] =
        this.cotpaCigarettesAndOtherTobaccoProducts;
    data['Offences Against Public Servants (Public Servant Is A Victim)'] =
        this.offencesAgainstPublicServantsPublicServantIsAVictim;
    data['Burglary - Night'] = this.burglaryNight;
    data['Offences Related To Marriage'] = this.offencesRelatedToMarriage;
    data['Burglary - Day'] = this.burglaryDay;
    data['Forgery'] = this.forgery;
    data['Scheduled Caste And The Scheduled Tribes'] =
        this.scheduledCasteAndTheScheduledTribes;
    data['Negligent Act'] = this.negligentAct;
    data['Robbery'] = this.robbery;
    data['Animal'] = this.animal;
    data['Kidnapping And Abduction'] = this.kidnappingAndAbduction;
    data['Criminal Intimidation'] = this.criminalIntimidation;
    data['Attempting To Commit Offences'] = this.attemptingToCommitOffences;
    data['Deaths Due To Rashness/Negligence'] =
        this.deathsDueToRashnessNegligence;
    data['Adulteration'] = this.adulteration;
    data['Exposure And Abandonment Of Child'] =
        this.exposureAndAbandonmentOfChild;
    data['Cruelty By Husband'] = this.crueltyByHusband;
    data['Criminal Trespass'] = this.criminalTrespass;
    data['Narcotic Drugs & Pshycotropic Substances'] =
        this.narcoticDrugsPshycotropicSubstances;
    data['Affray'] = this.affray;
    data['Dacoity'] = this.dacoity;
    data['Wrongful Restraint/Confinement'] = this.wrongfulRestraintConfinement;
    return data;
  }
}
