# Create some NeedTypes
money = NeedType.create(:name => "money",
                        :description => "People, we need moar money!",
                        :logo => "system/money.jpg")
water = NeedType.create(:name => "water",
                        :description => "We need some water!",
                        :logo => "system/water.jpg")
volounteer = NeedType.create(:name => "volounteer",
                             :description => "Help us people!",
                             :logo => "system/volounteer.jpg")

# Create some organizations
o1 = Organization.create(:name => "Nuova scuola di S.Agostino",
                    :description => "Costruiamo insieme la nuova scuola a S.Agostino!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%2015.jpg")



Organization.create(:name => "Mensa di Finale Emilia",
                    :description => "Aiutiamo le persone a superare questo momento difficile!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%208.jpg")

