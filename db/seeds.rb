# Create some NeedTypes
money = NeedType.create(:name => "money",
                        :description => "People, we need moar money!",
                        :logo => "system/money.jpg",
                        :um => "euro")
water = NeedType.create(:name => "water",
                        :description => "We need some water!",
                        :logo => "system/water.jpg",
                        :um => "litri")
volounteer = NeedType.create(:name => "volounteer",
                             :description => "Help us people!",
                             :logo => "system/volounteer.jpg",
                             :um => "persone")

# Create some organizations
s_ago_school = Organization.create(:name => "Nuova scuola di S.Agostino",
                    :description => "Costruiamo insieme la nuova scuola a S.Agostino!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%2015.jpg",
                    :latitude => "44.7938",
                    :longitude => "11.3813")

mensa_finale = Organization.create(:name => "Mensa di Finale Emilia",
                    :description => "Aiutiamo le persone a superare questo momento difficile!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%208.jpg",
                    :latitude => "44.8311",
                    :longitude => "11.2919")

# Create some needs for the organizations
Need.create(:requested_quantity => 1000,
            :need_type_id => money.id,
            :organization_id => s_ago_school.id)

Need.create(:requested_quantity => 500,
           :need_type_id => water.id,
           :organization_id => mensa_finale.id)


