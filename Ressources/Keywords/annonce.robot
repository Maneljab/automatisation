*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    XML
Variables    ../Locators/locator.py
*** Variables ***
${Image Path}            C:\\paravendue\\Ressources\\JDD\\voiture.jpg
*** Keywords ***
Depot-Annonce
    
    Execute JavaScript    document.querySelector("a[title='Déposez vos annonces gratuites']").click()
    Wait Until Element Is Visible    ${categ}    timeout=20
    Click Element   ${categ}  
    Wait Until Element Is Visible       //*[@id='chaines']//*[text()="AUTO-MOTO-BATEAU"]
    Click Element           //*[@id='chaines']//*[text()="AUTO-MOTO-BATEAU"]
    Wait Until Element Is Visible       //*[@id='V']//*[text()="Voiture d'occasion"]
    Click Element      //*[@id='V']//*[text()="Voiture d'occasion"]
    Select From List By Index    //*[@id="choixFamille"]    0
    Select Radio Button    company_ad    0
    Select Radio Button     radTypeSaisie     manuelle
    Select From List By Index    typeVehicule     1
    Select From List By Index    marque    6
    Wait Until Element Is Enabled      id=modele
    Scroll Element Into View    modele
    Select From List By Index    modele    1
    Wait Until Element Is Enabled    id=mois
    Scroll Element Into View    mois
    Select From List By Index    mois      3
    Wait Until Element Is Visible     id=annee 
    Scroll Element Into View    annee
    Select From List By Value     id=annee      annee_2022 
    Wait Until Element Is Enabled    id=type
    Scroll Element Into View     type
    Select From List By Index     type      1
    Wait Until Element Is Enabled    id=energie
    Scroll Element Into View    energie
    Select From List By Index    energie     1
    Wait Until Element Is Enabled    id=typeTransmission
    Scroll Element Into View    typeTransmission
    Select From List By Index    typeTransmission    1
    Wait Until Element Is Enabled    id=nombrePortes
    Scroll Element Into View    nombrePortes
    Select From List By Index    nombrePortes     1
    Wait Until Element Is Enabled     id=version
    Scroll Element Into View    version
    Select From List By Index    version      1
    Wait Until Element Is Visible    id=kilometrage
    Scroll Element Into View    kilometrage
    Input Text    id=kilometrage       210
    Wait Until Element Is Visible      id=enrichi-7800001_140
    Scroll Element Into View    enrichi-7800001_140
    Input Text    id=enrichi-7800001_140      5
    Input Text    id=enrichi-7800001_150      3
    Input Text    id=enrichi-7800001_160      60
    Input Text    id=enrichi-7800001_170      5l/100
    Select From List By Index    enrichi-7800001_190    1
    Wait Until Element Is Visible       //*[contains(@class, 'multicheck')]//*[@id="bloc_enrichi-7800001_60_1"]
    Scroll Element Into View     //*[contains(@class, 'multicheck')]//*[@id="bloc_enrichi-7800001_60_1"]
    Click Element        //*[contains(@class, 'multicheck')]//*[@id="bloc_enrichi-7800001_60_1"]
    Wait Until Element Is Enabled    id=nbrSemainesPublication
    Scroll Element Into View    nbrSemainesPublication
    Select From List By Index    nbrSemainesPublication     1
    Wait Until Element Is Enabled    id=prix
    Scroll Element Into View    prix
    Input Text    id=prix    5000 euro
    Wait Until Element Is Visible     //*[@id="fldPrix"]//*[contains(@class, "check")]//*[contains(@class, "coche")]    timeout=20
    Scroll Element Into View       //*[@id="fldPrix"]//*[contains(@class, "check")]//*[contains(@class, "coche")]
    Click Element         //*[@id="fldPrix"]//*[contains(@class, "check")]//*[contains(@class, "coche")]
    Wait Until Element Is Enabled     //*[@id="bloc_flagPaiement"]//*[contains(@class, "coche")] 
    Scroll Element Into View     //*[@id="bloc_flagPaiement"]//*[contains(@class, "coche")] 
    Click Element      //*[@id="bloc_flagPaiement"]//*[contains(@class, "coche")] 
    Wait Until Element Is Visible     codePays
    Scroll Element Into View    codePays
    Select From List By Index     codePays    1
    Wait Until Element Is Visible    //*[@id="imgUpload-dropdiv"]//[text()="Pas de photos sous la main"]
    Scroll Element Into View     //*[@id="imgUpload-dropdiv"]//[text()="Pas de photos sous la main"]
    Click Element     //*[@id="imgUpload-dropdiv"]//[text()="Pas de photos sous la main"]
    Wait Until Element Is Visible     //a[href="javascript:$.fancybox.close();"]
    Scroll Element Into View    //a[href="javascript:$.fancybox.close();"]
    Click Element     //a[href="javascript:$.fancybox.close();"]
    #Execute JavaScript    document.querySelector("a[id='suivant1']").click()


