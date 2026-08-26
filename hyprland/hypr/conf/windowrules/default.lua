-- -----------------------------------------------------
-- Window Rules
-- -----------------------------------------------------

-- VSCodium transparency and blur
hl.window_rule({
    name = "vscodium-opacity",
    match = { class = ".*codium.*" },
    opacity = "0.90 0.85",
})

hl.window_rule({
    name = "vscodium-opacity-cap",
    match = { class = ".*VSCodium.*" },
    opacity = "0.90 0.85",
})
