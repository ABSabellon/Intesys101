
diseaseAppendicitis(X):- symptomAppendicitis(X), positivePhysicalTestAppendicitis(X),	historyAppendicitis(X), hasNoOtherSigns(X).

hasDisease(X):- diseaseAppendicitis(X).

hasDisease(X):- diseaseCholecystitis(X).

hasDisease(X):- diseaseAppendicitis(X), diseaseCholecystitis(X).

treatmentAppendectomy(X) :- diseaseAppendicitis(X).

symptomDiarrheaDiarrhea(X):- symptomLooseBowelMovement(X), symptomDehydration(X).

historyCholecystitis(X):- filipino(X).

historyCholecystitis(X):- obese(X).

symptomCholecystitis(X):- symptomPain_cholecystitis(X).

symptomCholecystitis(X):- symptomPain_cholecystitis(X), symptomFever(X).

symptomCholecystitis(X):- symptomPain_cholecystitis(X), symptomJaundice(X).

symptomCholecystitis(X):- symptomPain_cholecystitis(X), symptomFever(X), symptomJaundice(X).

isShiftingAppendicitis(Y):- locationMid_Abdomen(Y)  , locationLowerRightQuadrant(Y).

isShiftingCholecystitis(Y):- locationMid_Abdomen(Y) , locationUpperRightQuadrant(Y ).

positivePhysicalTestCholecystitis(X):- murphySign(X).

treatmentCholecystectomy(X):- diseaseCholecystitis(X).

hasNoOtherSigns(X):- hasNoBumps(X).

hasNoOtherSigns(X):- female(X), regularMenstruation(X).

historyAppendicitis(X):- noAppendicitisBefore(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomNausea(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomVomiting(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomDiarrhea(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomNausea(X), symptomVomiting(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomVomiting(X), symptomDiarrhea(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomNausea(X), symptomDiarrhea(X).

symptomAppendicitis(X):- symptomPain_appendicitis(X), symptomFever(X), symptomAnorexia(X), symptomNausea(X), symptomVomiting(X), symptomDiarrhea(X).

symptomFever(X):- temperatureC > 37.

symptomFever(X):- temperatureC = 37.

symptomFever(X):- temperatureF > 98.6.

symptomFever(X):- temperatureF = 98.6.

symptomAnorexia(X):- symptomWeightLoss(X), symptomFatigue(X), symptomDehydration(X).

symptomPain_appendicitis(X):- isProgressive(Y), isChildren(X), isShifting(Y),		isLocalized(Y).

symptomPain_appendicitis(X):- isProgressive(Y), isAdult(X), isShifting(Y), isLocalized(Y).

symptomPain_appendicitis(X):- isProgressive(Y), isAdult(X), isLocalized(Y).

isProgressive(Y):- doesNotSubside(Y), scaleIncreases(Y).

scaleIncreases(Y):- painScale(Y, Before) < painScale(Y, After).

scaleIncreases(Y):- painScale(Y, Before) = painScale(Y, After).

isLocalized(Y):- notRadiating(Y), notGeneralized(Y).

isShifting(Y):- location(Y, Mid_Abdomen) , location(Y, LowerRightQuadrant).

isChildren(X):- age < 18.

isAdult(X):- age > 18.

isAdult(X):- age = 18.

diseaseCholecystitis(X):- symptom(X, Cholecystitis), history(X, Cholecystitis).

symptomPain_cholecystitis(X):-  mealFattyAndSalty(X), locationMid_Abdomen(Y).

symptomPain_cholecystitis(X):-  isShifting(Y).

symptomPain_cholecystitis(X):-  isShifting(Y), locationBack(Y).

symptomPain_cholecystitis(X):-  isShifting(Y), locationShoulder(Y).

symptomPain_cholecystitis(X):-  isShifting(Y), locationBack(Y), locationShoulder(Y).

symptomJaundice(X):- yellow(sclerae).

symptomJaundice(X):- yellow(skin).

positivePhysicalTestAppendicitis(X) :- rovsingSign(X), coughSign(X).

murphySign(X):- palpate(UpperLeftQuadrant), locationUpperRightQuadrant(Y).

rovsingSign(X):- palpate(LeftLowerQuadrant), locationRightLowerQuadrant(Y).

coughSign(X):- painDuringCoughing(X).































