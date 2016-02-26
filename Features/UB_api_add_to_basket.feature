@API @api @report_gen
Feature: UB api - add to basket


  Scenario Outline: create basket and add product
    Given I have a user token
    And I know the product id for the product "<product_url>"
    When I request through the api the item is added to the basket
    Then the iem requested should be in the new basket
    Examples:
      | product_url                                                                                                          |
      |http://it.boohoo.com/calzature/dzz97714?zanpid=2112529763012170752&utm_source=ZanoxIT&utm_medium=affiliates&utm_term=2092734&zanoxprogramid=15645 |


  Scenario Outline: remove item from basket
    Given I have a user token
    And I know the product id for the product "<product_url>"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty
    Examples:
      | product_url                                                                                                                                                                                                                                                                |
      | http://www.farfetch.com/uk/shopping/women/dsquared2--skinny-jeans-item-11052231.aspx?storeid=9274&ffref=lp_pic_7_11_                                                                                                                                                       |
      | http://www.farfetch.com/uk/shopping/women/marc-jacobs-shearling-coat-item-11247965.aspx?storeid=9970&ffref=lp_pic_3_2_                                                                                                                                                     |
      | https://www.zalando.de/only-jeans-slim-fit-dark-blue-denim-on321a08q-953.html                                                                                                                                                                                              |
      | http://www.asos.fr/ASOS-Poncho-oversize-%C3%A0-manches-en-jersey/18s6ty/?iid=5909899&cid=3159&sh=0&pge=0&pgesize=36&sort=-1&clr=Taupe&totalstyles=6415&gridsize=3&mporgp=L0FTT1MvQVNPUy1PdmVyc2l6ZWQtV292ZW4tUG9uY2hvLVdpdGgtSmVyc2V5LVNsZWV2ZXMvUHJvZC8.                  |
      | http://www.farfetch.com/uk/shopping/women/marc-jacobs-shearling-coat-item-11247965.aspx?storeid=9970&ffref=lp_pic_3_2_                                                                                                                                                     |
      | https://www.zalando.de/only-jeans-slim-fit-dark-blue-denim-on321a08q-953.html                                                                                                                                                                                              |
      | http://www.asos.de/ASOS-Strickkleid-mit-One-Shoulder-Tr%C3%A4ger-in-Metallic/18ufx9/?iid=5628695&cid=18761&sh=0&pge=0&pgesize=36&sort=-1&clr=Pink&totalstyles=1629&gridsize=3&mporgp=L0FTT1MvQVNPUy1EcmVzcy1pbi1Lbml0LXdpdGgtT25lLVNob3VsZGVyLWluLU1ldGFsbGljL1Byb2Qv      |
      | http://de.boohoo.com/ausverkauf/azz40734                                                                                                                                                                                                                                   |
      | https://www.zalando.fr/boss-orange-nabrilo-echarpe-bo152g00c-c11.html                                                                                                                                                                                                      |
      | http://www.asos.fr/ASOS-Poncho-oversize-%C3%A0-manches-en-jersey/18s6ty/?iid=5909899&cid=3159&sh=0&pge=0&pgesize=36&sort=-1&clr=Taupe&totalstyles=6415&gridsize=3&mporgp=L0FTT1MvQVNPUy1PdmVyc2l6ZWQtV292ZW4tUG9uY2hvLVdpdGgtSmVyc2V5LVNsZWV2ZXMvUHJvZC8.                  |
      | http://www.asos.com/ASOS/ASOS-Muscle-Fit-Ribbed-Jumper/Prod/pgeproduct.aspx?iid=5296136&cid=7617&sh=0&pge=0&pgesize=36&sort=-1&clr=Black+%26+white+twist&totalstyles=1391&gridsize=3                                                                                       |
      | http://www.farfetch.com/uk/shopping/women/dsquared2--skinny-jeans-item-11052231.aspx?storeid=9274&ffref=lp_pic_7_11_                                                                                                                                                       |
      | http://www.houseoffraser.co.uk/Royal+Doulton+1815+wooden+pizza+board+35.5cm/197364195,default,pd.html                                                                                                                                                                        |
# to do add net a porter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
# add amazon tests
# the outlet
# agent provatour
# misguided|

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://www.houseoffraser.co.uk/Royal+Doulton+1815+wooden+pizza+board+35.5cm/197364195,default,pd.html"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "https://www.farfetch.com/uk/shopping/women/dsquared2--skinny-jeans-item-11052231.aspx?storeid=9274&ffref=lp_pic_7_11_"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty


  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://www.asos.com/ASOS/ASOS-Muscle-Fit-Ribbed-Jumper/Prod/pgeproduct.aspx?iid=5296136&cid=7617&sh=0&pge=0&pgesize=36&sort=-1&clr=Black+%26+white+twist&totalstyles=1391&gridsize=3"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty


  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://www.asos.fr/ASOS-Poncho-oversize-%C3%A0-manches-en-jersey/18s6ty/?iid=5909899&cid=3159&sh=0&pge=0&pgesize=36&sort=-1&clr=Taupe&totalstyles=6415&gridsize=3&mporgp=L0FTT1MvQVNPUy1PdmVyc2l6ZWQtV292ZW4tUG9uY2hvLVdpdGgtSmVyc2V5LVNsZWV2ZXMvUHJvZC8."
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "https://www.zalando.fr/boss-orange-nabrilo-echarpe-bo152g00c-c11.html"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://de.boohoo.com/ausverkauf/azz40734"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://www.asos.de/ASOS-Strickkleid-mit-One-Shoulder-Tr%C3%A4ger-in-Metallic/18ufx9/?iid=5628695&cid=18761&sh=0&pge=0&pgesize=36&sort=-1&clr=Pink&totalstyles=1629&gridsize=3&mporgp=L0FTT1MvQVNPUy1EcmVzcy1pbi1Lbml0LXdpdGgtT25lLVNob3VsZGVyLWluLU1ldGFsbGljL1Byb2Qv"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty



  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "https://www.zalando.de/only-jeans-slim-fit-dark-blue-denim-on321a08q-953.html"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty


  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://www.farfetch.com/uk/shopping/women/marc-jacobs-shearling-coat-item-11247965.aspx?storeid=9970&ffref=lp_pic_3_2_"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product " http://www.asos.fr/ASOS-Poncho-oversize-%C3%A0-manches-en-jersey/18s6ty/?iid=5909899&cid=3159&sh=0&pge=0&pgesize=36&sort=-1&clr=Taupe&totalstyles=6415&gridsize=3&mporgp=L0FTT1MvQVNPUy1PdmVyc2l6ZWQtV292ZW4tUG9uY2hvLVdpdGgtSmVyc2V5LVNsZWV2ZXMvUHJvZC8."
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "https://www.zalando.de/only-jeans-slim-fit-dark-blue-denim-on321a08q-953.html"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "http://www.farfetch.com/uk/shopping/women/marc-jacobs-shearling-coat-item-11247965.aspx?storeid=9970&ffref=lp_pic_3_2_"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty

  @report_gen
  Scenario: remove item from basket FOR REPORTS
    Given I have a user token
    And I know the product id for the product "https://www.farfetch.com/uk/shopping/women/dsquared2--skinny-jeans-item-11052231.aspx?storeid=9274&ffref=lp_pic_7_11_"
    When I request through the api the item is added to the basket
    And I remove the item from the basket
    Then my basket should be empty


  Scenario: register a new user
  Given I have a user token
