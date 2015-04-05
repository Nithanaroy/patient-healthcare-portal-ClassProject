package edu.asu.se.utils;

/**
 * Valid users of the system
 * 
 * @author Nitin Pasumarthy
 *
 */
public enum UserType {
	patient("Patient"), staff("Staff"); // Doctor and other staff

	private String name;

	UserType(String _name) {
		this.name = _name;
	}

	@Override
	public String toString() {
		return this.name;
	}

	/**
	 * A mapper between strings and this enum
	 * 
	 * @param type
	 * @return
	 */
	public static UserType getType(String type) {
		String[] permittedStrings = { "patient", "doctor", "staff" };
		try {
			if (type.equalsIgnoreCase(permittedStrings[0])) {
				return UserType.patient;
			}
			if (type.equalsIgnoreCase(permittedStrings[1])
					|| type.equalsIgnoreCase(permittedStrings[2]))
				return UserType.staff;
		} catch (Exception e) {
		}
		throw new IllegalArgumentException(
				"Given type is invalid. Permitted values are: "
						+ StringJoin.join(permittedStrings, ","));
	}
}
