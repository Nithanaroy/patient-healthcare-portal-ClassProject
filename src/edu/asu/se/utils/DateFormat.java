package edu.asu.se.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat {
	public static Date format(String dateInString) {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;

		try {

			date = formatter.parse(dateInString);

		} catch (ParseException e) {
			e.printStackTrace();
		}

		return date;
	}

	public static String toString(Date d) {
		SimpleDateFormat df = new SimpleDateFormat("MMM dd, yyyy");
		return df.format(d);
	}

	public static String getDBDate(Date d) {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		return df.format(d);
	}
}
