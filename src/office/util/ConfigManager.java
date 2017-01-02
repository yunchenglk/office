package office.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigManager {
	private static ConfigManager config;
	private static Properties properties;

	private ConfigManager() {
		try {
			properties = new Properties();
			InputStream is = ConfigManager.class.getResourceAsStream("database.properties");
			properties.load(is);
			is.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public static ConfigManager instance() {
		if (config == null) {
			new ConfigManager();
		}
		return config;
	}

	public String getVal(String key) {
		System.out.println("asdf");
		return properties.getProperty(key);

	}

}
