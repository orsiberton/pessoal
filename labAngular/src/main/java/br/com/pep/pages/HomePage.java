package br.com.pep.pages;

import static ch.lambdaj.Lambda.convert;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import ch.lambdaj.function.convert.Converter;
import net.thucydides.core.annotations.DefaultUrl;
import net.thucydides.core.pages.PageObject;
import net.thucydides.core.pages.WebElementFacade;

@DefaultUrl("http://localhost:8080/pep/index.xhtml")
public class HomePage extends PageObject {

	public List<String> getWelcomeMessageOnHome() {
		WebElementFacade definitionList = find(By.cssSelector("#page"));
		List<WebElement> results = definitionList.findElements(By.cssSelector("#content"));
		return convert(results, toStrings());
	}

	private Converter<WebElement, String> toStrings() {
		return new Converter<WebElement, String>() {
			public String convert(WebElement from) {
				return from.getText();
			}
		};
	}

}
