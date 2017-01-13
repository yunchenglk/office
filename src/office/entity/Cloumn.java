package office.entity;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@Retention(RetentionPolicy.RUNTIME)  
public @interface Cloumn {

	public boolean PrimaiyKey() default true; 
}
