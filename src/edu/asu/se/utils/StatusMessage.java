package edu.asu.se.utils;

public class StatusMessage {
	private static String message;
	private static MessageType type;

	private static StatusMessage instance = new StatusMessage();

	/**
	 * Singleton class
	 */
	private StatusMessage() {
	}

	public static StatusMessage createInstance(String _message, MessageType _type) {
		message = _message;
		type = _type;
		return instance;
	}

	public String getMessage() {
		return message;
	}

	public MessageType getType() {
		return type;
	}
}
