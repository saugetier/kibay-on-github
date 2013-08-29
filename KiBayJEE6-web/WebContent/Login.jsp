<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@ taglib prefix="h" uri="http://java.sun.com/jsf/html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Anmeldung</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="styles.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="img/KibayFavIcon.ico"></link>
</head>
<body>
	<f:view>
		<div id="bg_bottom">
			<div id="bg_top">
				<div id="login" style="margin-right: 100px">

					<%-- 					<f:loadBundle basename="de.kibay.jsf.messages" var="msg" />
					<h:form rendered="#{not loginController.user.loggedIn}">
						<h:panelGrid columns="2">
							<h:outputLabel value="#{msg.username}" for="username"></h:outputLabel>
							<h:inputText value="#{loginController.user.username}"
								id="username" required="true"
								requiredMessage="Bitte geben Sie ihren Benutzernamen ein">
								<f:validator validatorId="de.kibay.jsf.validator.LoginValidator" />
							</h:inputText>
							<h:outputLabel value="#{msg.password}" for="password"></h:outputLabel>
							<h:inputSecret value="#{loginController.user.password}"
								id="password" required="true"
								requiredMessage="Bitte geben Sie ihr Passwort ein">
							</h:inputSecret>

							<h:outputText>
							</h:outputText>
							<h:commandLink action="#{loginController.login}">
								<h:graphicImage id="actionLogin" alt="Login"
									value="/img/Login.png" title="Jetzt anmelden" width="90"
									height="22">
								</h:graphicImage>
							</h:commandLink>
						</h:panelGrid>
						<h:messages layout="table"></h:messages>
					</h:form> --%>
				</div>


				<div id="main">

					<div id="logo">
						<a href="/KiBay/faces/index.jsp"><img src="img/Logo.png"
							style="width: 300px;" /></a>
					</div>



					<div id="buttons">

						<div class="but1 but_size">
							<a href="/KiBay/faces/Userhome.jsp" class="my_but3" title="">Mein
								Kibay</a>
						</div>

						<div class="but_razd"></div>

						<div class="but1 but_size">
							<a href="/KiBay/faces/Buy.jsp" class="my_but2" title="">Kaufen</a>
						</div>

						<div class="but_razd"></div>

						<div class="but1 but_size">
							<a href="/KiBay/faces/Sell.jsp" class="my_but4" title="">Verkaufen</a>
						</div>

						<div class="but_razd"></div>
						<!-- <div class="but1 but_size"><a href="#" class="my_but5" title="">Vier</a></div>  -->
					</div>

					<div id="content">
						<div id="content_bg">
							<div id="content_bg_bott">
								<div id="left">
									<h:form rendered="#{loginController.user.loggedIn}">
										<h:outputLabel value="#{msg.loggedInAs} " for="usernameLabel"></h:outputLabel>
										<h:outputLabel value="#{loginController.user.username} "
											style="font-weight:bold" id="usernameLabel" />
										<h:commandLink action="#{loginController.logout}"
											value="(#{ msg.logout})"></h:commandLink>
										<h:messages layout="table"></h:messages>
									</h:form>
									<h1>Hilfe</h1>
									<span class="span_lh"> <span class="span_data">Anmeldung</span><br />

										<strong></strong><br />
									</span>
									<div class="read_more">
										<a href="#"></a>
									</div>
									<span class="span_lh"> Melden Sie sich hier mit ihrem
										Benuternamen und Passwort an. Sollten noch kein Konto bei
										KiBay besitzen, können Sie sich <a href="Register.jsp">hier</a>
										registrieren.
									</span>
									<div class="read_more">
										<a href="#"></a>
									</div>
								</div>


								<div id="right">

									<h1>Anmeldung bei Kibay</h1>


									<f:loadBundle basename="de.kibay.web.ressources.messages" var="msg" />
									<h:form>
										<h:panelGrid columns="2">
											<h:outputLabel value="#{msg.username}" for="username"></h:outputLabel>
											<h:inputText value="#{loginController.user.username}"
												id="username" required="true"
												requiredMessage="Bitte geben Sie ihren Benutzernamen ein">
												<f:validator
													validatorId="de.kibay.jsf.validator.LoginValidator" />
											</h:inputText>
											<h:outputLabel value="#{msg.password}" for="password"></h:outputLabel>
											<h:inputSecret value="#{loginController.user.password}"
												id="password" required="true"
												requiredMessage="Bitte geben Sie ihr Passwort ein">
											</h:inputSecret>
										</h:panelGrid>
										<h:commandButton action="#{loginController.login}"
											value="#{msg.login}"></h:commandButton>
										<h:messages layout="table"></h:messages>
									</h:form>


								</div>

								<div style="clear: both; width: 100%"></div>
							</div>
						</div>

						<div style="width: 100%; height: 8px; clear: both;"></div>

						<div class="row_bott">

							<h1>Neuigkeiten</h1>

							<span class="span_lh"></span>
						</div>
					</div>


				</div>
				<div id="footer">
					<p>
						Copyright 2012. <a href="#">Privacy Policy</a> | <a href="#">Terms
							of Use</a> | <a href="http://validator.w3.org/check/referer"
							title="This page validates as XHTML 1.0 Transitional"><abbr
							title="eXtensible HyperText Markup Language">XHTML</abbr></a> | <a
							href="http://jigsaw.w3.org/css-validator/check/referer"
							title="This page validates as CSS"><abbr
							title="Cascading Style Sheets">CSS</abbr></a>
					</p>
					<p>
						<!-- Do not remove -->
						<a href="http://www.metamorphozis.com" title="Website Design">Website
							Design</a> by <a
							href="http://www.libdesigner.com/2012/03/26/25-awesome-grass-textures-for-your-nature-projects/"
							title="Awesome Grass Textures">Awesome Grass Textures</a>
						<!-- end -->
					</p>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="jquery/cufon-yui.js"></script>
		<script type="text/javascript" src="jquery/JqueryBase.js"></script>

		<script type="text/javascript" src="jquery/Book_Antiqua_400.font.js"></script>
		<script type="text/javascript">
			Cufon.replace('h1')('h3')('h2')('.but1')('.antiqua');
		</script>
	</f:view>
</body>
</html>