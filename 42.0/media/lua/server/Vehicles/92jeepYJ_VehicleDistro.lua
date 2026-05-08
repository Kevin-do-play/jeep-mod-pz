local distributionTable = VehicleDistributions[1]

VehicleDistributions.JP92GloveBox = {
    rolls = 1,
    items = {
        "Base.92jeepYJMagazine", 60,
        "Base.Pen", 4,
        "Base.Pencil", 4,
        "Base.Cigarettes", 5,
        "Base.Lighter", 5,
        "Base.Matches", 3,
        "Base.Tissue", 2,
    },
    junk = ClutterTables.GloveBoxJunk,
}

VehicleDistributions.JP92 = {

	GloveBox = VehicleDistributions.JP92GloveBox;
	JP92Trunk = VehicleDistributions.TrunkHeavy;
	JP92Roofrack = VehicleDistributions.JP92Roofrack;
}

VehicleDistributions.JP92RN = {

	GloveBox = VehicleDistributions.JP92GloveBox;
	JP84Trunk = VehicleDistributions.RangerTruckBed;
    DAMNGunrack = VehicleDistributions.DAMNgunrack;
}

distributionTable["92jeepYJs"] = { Normal = VehicleDistributions.JP92; }
distributionTable["92jeepYJse"] = { Normal = VehicleDistributions.JP92; }
distributionTable["92jeepYJjp"] = { Normal = VehicleDistributions.JP92; }
distributionTable["92jeepYJranger"] = { Normal = VehicleDistributions.JP92RN; }