local distributionTable = VehicleDistributions[1]

VehicleDistributions.JP92 = {

	GloveBox = VehicleDistributions.GloveBox;
	JP92Trunk = VehicleDistributions.TrunkHeavy;
	JP92Roofrack = VehicleDistributions.JP92Roofrack;
}

VehicleDistributions.JP92RN = {

	GloveBox = VehicleDistributions.RangerGloveBox;
	JP84Trunk = VehicleDistributions.RangerTruckBed;
    DAMNGunrack = VehicleDistributions.DAMNgunrack;
}

distributionTable["92jeepYJs"] = { Normal = VehicleDistributions.JP92; }
distributionTable["92jeepYJse"] = { Normal = VehicleDistributions.JP92; }
distributionTable["92jeepYJjp"] = { Normal = VehicleDistributions.JP92; }
distributionTable["92jeepYJranger"] = { Normal = VehicleDistributions.JP92RN; }