getgenv().GOKUConfig = {

    -- [[ Main Settings ]] --
    AutoFarm = true,           -- must be true to auto-start
    JobMode  = "fishing",      -- fishing/stocker/cooking/atm_swiper/janitor/farming
    Farming  = false,          -- farming as a CO-JOB alongside the main job

    -- [[ Job Randomizer ]] --
    JobRandomizer         = false,
    JobRandomizerInterval = 30,      -- minutes
    JobRandomizerPool     = { "atm_swiper", "stocker", "cooking", "janitor", "fishing", "farming" },

    -- [[ Money & Deposit ]] --
    AutoDeposit      = true,
    DepositThreshold = 200,     -- deposit when hand cash passes this
    DepositAll       = true,    -- deposit everything (0 left in hand)

    -- [[ Safety & Protections ]] --
    AntiKill    = true,
    AntiRagdoll = true,
    AutoRespawn = true,
    AutoHit     = true,
    StaminaFarm = true,

    -- [[ Server Hopping ]] --
    MoneyStallRejoin  = true,
    MoneyStallMins    = 15,     -- minutes with no earnings before rejoin
    AutoHop           = true,
    AutoHopInterval   = 60,     -- minutes (0 = off)
    AutoHopMaxPlayers = 0,      -- hop if server over this (0 = off)
    HopTargetMaxPlayers = 8,    -- only hop to servers at/under this
    AutoLowServerHop  = false,
    HopOnDeath        = true,  -- hop to a new server if a player downs you (escape griefers)

    -- [[ Vehicle Settings ]] --
    VehicleType       = "bike", -- bike/car
    Vehicle           = "auto", -- auto / vehicle name
    SwiperUseVehicle  = true,
    AutoRepairVehicle = true,

    -- [[ ATM Swiper ]] --
    AutoBuyTools = true,
    BulkBuyCount = 5,

    -- [[ Stocker ]] --
    BestBox = true,
    BoxType = "NormalBox",      -- NormalBox/SunflowerSeedsBox/ElectronicsBox/GoldenBox

    -- [[ Cook ]] --
    AutoBuySkillet = true,

    -- [[ Janitor ]] --
    PuddleTarget = "nearest",   -- smart/nearest

    -- [[ Fishing Settings ]] --
    FishingUseVehicle = false,
    BaitPerTrip = 12,
    FishSell    = 12,           -- sell every N fish
    FishSafeStore = false,      -- keep rare fish (store in safe)
    FishSafeTiers = {},         -- Uncommon/Rare/Epic/Legendary/Omega
    FishSellNow      = true,    -- INSTANT-sell a rare on catch (ignores bait/count); priority over FishSafeStore
    FishSellNowTiers = { "Legendary", "Omega" }, -- which rarities trigger the instant sell
    FishingRod  = "smart",      -- smart / rod name
    FishingBait = "smart",      -- smart / bait name
    FishPreset  = "blatant",    -- legit/fast/blatant (blatant = instant, highest AC risk)
    FishWebhook = "YOUR_WEBHOOK_URL_HERE",
    FishNotifyTiers = { "Legendary", "Omega" },

    -- [[ Display & Performance ]] --
    FpsBoost = false,
    FpsBoostExtreme = false,     -- forces FpsBoost on
    Whitescreen = false,        -- blank 3D render, HUD stays
}

-- [[ CARGADOR DEL SCRIPT PRINCIPAL ]] --
loadstring(game:HttpGet("https://githubusercontent.com"))()
