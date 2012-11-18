# Create some NeedTypes
money = NeedType.create(:name => "Raccolta fondi",
                        :description => "Abbiamo bisogno della vostra solidarietà!",
                        :logo => "system/money.jpg",
                        :um => "euro")
water = NeedType.create(:name => "Acqua",
                        :description => "Abbiamo bisogno di acqua!",
                        :logo => "system/water.jpg",
                        :um => "litri")
volounteer = NeedType.create(:name => "Volontariato",
                             :description => "Abbiamo bisogno di volontariato!",
                             :logo => "system/volounteer.jpg",
                             :um => "persone")

# Create some organizations
s_ago_school = Organization.create(:name => "Nuova scuola di S.Agostino",
                    :description => "Costruiamo insieme la nuova scuola a S.Agostino!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%2015.jpg",
                    :latitude => "44.7938",
                    :longitude => "11.3813",
                    :marker_path => "../assets/icons/school.png")

mensa_finale = Organization.create(:name => "Mensa di Finale Emilia",
                    :description => "Aiutiamo le persone a superare questo momento difficile!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%208.jpg",
                    :latitude => "44.8311",
                    :longitude => "11.2919")

# Create some needs for the organizations
s_ago_school.needs.create(:requested_quantity => 1000,
            :need_type_id => money.id)

mensa_finale.create(:requested_quantity => 500,
           :need_type_id => water.id)


