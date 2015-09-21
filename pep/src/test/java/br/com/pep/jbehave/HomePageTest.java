package br.com.pep.jbehave;

import org.jbehave.core.annotations.Given;
import org.jbehave.core.annotations.Then;
import org.jbehave.core.annotations.When;

import br.com.pep.steps.HomePageSteps;
import net.thucydides.core.annotations.Steps;

public class HomePageTest {

	@Steps
	HomePageSteps homePageSteps;

	@Given("the user is on the PEP home page")
	public void givenUserIsOnTheHomePage() {
		homePageSteps.isTheHomePage();
	}

	@When("the user looks up the welcome message '$message'")
	public void whenTheUserLooksUpTheWelcomeMessage(String message) {
		homePageSteps.getWelcomeMessageStep(message);
	}

	@Then("they should see the welcome message '$message'")
	public void thenTheyShouldSeeTheWelcomeMessage(String message) {
		homePageSteps.getWelcomeMessageStep(message);
	}

}
