package it23171992_AmbulanceAppointment;

import it23171992_interfaces.TravelFeeCalculator;

public class TravelFeeCalculatorClass implements TravelFeeCalculator {
	private static final double ratePerKilometer=165.00;
	@Override
	public double calcTravelFee(double kms) {
		double totalFee = kms*ratePerKilometer;
		return totalFee;
	}

}
