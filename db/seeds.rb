# Create some NeedTypes
money = NeedType.create(:name => "Raccolta fondi",
                        :description => "Abbiamo bisogno della vostra solidarieta'!",
                        :logo => "system/money.png",
                        :um => "euro")

water = NeedType.create(:name => "Acqua",
                        :description => "Abbiamo bisogno di acqua!",
                        :logo => "system/drink.png",
                        :um => "litri")

volounteer = NeedType.create(:name => "Volontariato",
                             :description => "Abbiamo bisogno di volontariato!",
                             :logo => "system/volounteer.png",
                             :um => "persone")

farina = NeedType.create(:name => "Farina",
                             :description => "Abbiamo bisogno di farina!",
                             :logo => "system/volounteer.png",
                             :um => "Kg")

uova = NeedType.create(:name => "Uova",
                             :description => "Abbiamo bisogno di uova!",
                             :logo => "system/eggs.png",
                             :um => "N")


# Create some organizations
s_ago_school = Organization.create(:name => "Nuova scuola di S.Agostino",
                    :description => "Costruiamo insieme la nuova scuola a S.Agostino!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%2015.jpg",
                    :latitude => "44.7938",
                    :longitude => "11.3813",
                    :marker_path => "system/school.png")

mensa_finale = Organization.create(:name => "Mensa di Finale Emilia",
                    :description => "Aiutiamo le persone a superare questo momento difficile!",
                    :logo => "http://img.funtasticus.com/2008/nov/111512Amateurs/amateur%20girls%208.jpg",
                    :latitude => "44.8311",
                    :longitude => "11.2919",
                    :marker_path => "system/family_aid.png")

# Create some needs for the organizations
s_ago_school.needs.create(:requested_quantity => 10000,
            :need_type_id => money.id)

s_ago_school.needs.create(:requested_quantity => 1000,
                          :need_type_id => water.id)

s_ago_school.needs.create(:requested_quantity => 10,
                          :need_type_id => volounteer.id)

s_ago_school.needs.create(:requested_quantity => 300,
                          :need_type_id => farina.id)

s_ago_school.needs.create(:requested_quantity => 200,
                          :need_type_id => uova.id)

mensa_finale.needs.create(:requested_quantity => 30000,
                    :need_type_id => money.id)

mensa_finale.needs.create(:requested_quantity => 500,
           :need_type_id => water.id)

mensa_finale.needs.create(:requested_quantity => 5,
                    :need_type_id => volounteer.id)

mensa_finale.needs.create(:requested_quantity => 5,
                    :need_type_id => farina.id)

mensa_finale.needs.create(:requested_quantity => 5,
                    :need_type_id => uova.id)

