
load("~/Dropbox/hotspots_2024/8.RData/denmex.RData")
x <- xy |>
    sf::st_as_sf(coords = c("long", "lat"),
                 crs = 4326) |>
    dplyr::mutate(id = 1:dplyr::n()) |>
    dplyr::filter(!id %in% c(8008, 2138))
mex <- rgeomex::AGEE_inegi19_mx
x <- x[mex, ]
mapview::mapview(x |> dplyr::filter(ANO %in% c(2012, 2013,
                                               2019,2023, 
                                               2024)),
                 zcol = "ANO",
                 layer.name = "Año",
                 burst = TRUE)
