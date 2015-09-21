package br.com.pep.steps;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.hasItem;

import br.com.pep.pages.HomePage;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.steps.ScenarioSteps;

public class HomePageSteps extends ScenarioSteps {

	private static final long serialVersionUID = -765768460590013741L;

	HomePage homepage;

	@Step
	public void isTheHomePage() {
		homepage.open();
	}

	@Step
	public void getWelcomeMessageStep(String welcomeMessage) {
		assertThat(homepage.getWelcomeMessageOnHome(), hasItem(containsString(welcomeMessage)));
	}
}
