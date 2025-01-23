
# Step 1. load the dataset ####
load("~/Dropbox/hotspots_2024/8.RData/denmex.RData")

# Step 3. generate the public and private keys #### *gala

encryptr::genkeys()


# Step 4. encriptacion de la base ####
xy <- xy|>
    encryptr::encrypt(long, lat)


# Step 5. save the results ####
save(xy,
     file = "8.RData/dengue_geocoded_dataset.RData")






