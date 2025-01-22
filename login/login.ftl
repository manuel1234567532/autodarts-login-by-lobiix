<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Anmeldung bei Autodarts</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>

  <#assign languageFlagMap = {
    "Deutsch": "de",
    "English": "en",
    "Français": "fr",
    "Nederlands": "nl",
    "Norsk": "no",
    "Español": "es",
    "Italiano": "it",
    "العربية": "ar",
    "中文": "zh"
}>

   <div class="language-picker">
    <button class="lang-btn" onclick="toggleDropdown()">
        <#-- Aktuelles Flag basierend auf locale.current -->
        <img src="${url.resourcesPath}/images/${languageFlagMap[locale.current]!en}_flag.png" alt="${locale.current}" class="lang-flag">
        ${locale.current}
    </button>
  <ul class="lang-dropdown">
    <li><a href="${url.loginUrl}&kc_locale=de"><img src="${url.resourcesPath}/images/de_flag.png" alt="German" class="lang-flag"> ${msg("langGerman")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=en"><img src="${url.resourcesPath}/images/en_flag.png" alt="English" class="lang-flag"> ${msg("langEnglish")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=fr"><img src="${url.resourcesPath}/images/fr_flag.png" alt="French" class="lang-flag"> ${msg("langFrench")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=nl"><img src="${url.resourcesPath}/images/nl_flag.png" alt="Netherlands" class="lang-flag"> ${msg("langNetherlands")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=no"><img src="${url.resourcesPath}/images/no_flag.png" alt="Norsk" class="lang-flag"> ${msg("langNorsk")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=es"><img src="${url.resourcesPath}/images/es_flag.png" alt="Spanish" class="lang-flag"> ${msg("langSpanish")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=it"><img src="${url.resourcesPath}/images/it_flag.png" alt="Italian" class="lang-flag"> ${msg("langItalian")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=ar"><img src="${url.resourcesPath}/images/ar_flag.png" alt="Arabic" class="lang-flag"> ${msg("langArabic")}</a></li>
    <li><a href="${url.loginUrl}&kc_locale=zh"><img src="${url.resourcesPath}/images/zh_flag.png" alt="Chinese" class="lang-flag"> ${msg("langChinese")}</a></li>
</ul>

</div>
    
    <div class="page-container">
       <div class="left-container">
    <div class="title">Autodarts.io 🎯</div>
   <!-- <img src="${url.resourcesPath}/images/bg.jpg" alt="Autodarts logo" class="logo-image"> -->
    <div class="options">
        <button class="mode-button" style="top: 20%; left: 15%;">Play against friends🤝</button>
        <button class="mode-button" style="top: 25%; left: 50%;">Bob's 2️⃣7️⃣</button>
        <button class="mode-button" style="top: 30%;left: 73%;">Count Up↗️</button>
        <button class="mode-button" style="top: 35%;left: 30%;">Competed in Tournaments🏆</button>
        <button class="mode-button" style="top: 40%;left: 8%;">Cricket⚾</button>
        <button class="mode-button" style="top: 55%;left: 60%;">Round the World🌍</button>
        <button class="mode-button" style="top: 46%;left: 30%;">Play against Bots🤖</button>
        <button class="mode-button" style="top: 55%;left: 15%;">5️⃣0️⃣1️⃣</button>
        <button class="mode-button" style="top: 64%;left: 27%;">Segment Training💪</button>
        <button class="mode-button" style="top: 68%;left: 65%;">Shanghai🏙️</button>
        <button class="mode-button" style="top: 75%;left: 34%;">Around the Clock🕒</button>
        <button class="mode-button" style="top: 75%; left: 10%;">X0️⃣1️⃣</button>
        <button class="mode-button" style="top: 84%;left: 55%;">Gotcha😛</button>
    </div>
</div>
        <div class="right-container">
  <div class="login-container">
   <img src="${url.resourcesPath}/images/autodarts-logo.png" alt="Autodarts Logo" class="logo-img" />
    <h1>${msg("loginTitle")}</h1>
     <#if message??>
        <div class="alert alert-${message.type}">
            <#if message.type == 'error'>
                 <span class="error-icon"><i class="fa fa-exclamation-circle"></i></span>
            </#if>
            ${kcSanitize(message.summary)?no_esc}
        </div>
    </#if>
       <form action="${url.loginAction}" method="POST">
                    <!-- Hier werden die benötigten Felder für Keycloak übergeben -->
                    <input type="hidden" name="client_id" value="master">
                    <input type="hidden" name="redirect_uri" value="http://localhost:8080/realms/master/account">
                    <input type="hidden" name="response_type" value="code">

                    
                    <!-- Eingabefeld für den Benutzernamen -->
                    <label for="username">${msg("usernameOrEmail")}</label>
                    <input type="text" id="username" name="username" placeholder="${msg("usernameOrEmail")}" required>

                    <!-- Eingabefeld für das Passwort -->
                    <label for="password">${msg("password")}</label>
                    <input type="password" id="password" name="password" placeholder="${msg("password")}" required>

                    <!-- Submit-Button -->
                    <button type="submit">${msg("loginButton")}</button>

                    <!-- Zusätzliche Optionen -->
                    <div class="additional-options">
                        <a href="${url.loginResetCredentialsUrl}" class="forgot-password">${msg("forgotPassword")}</a> |
                        <a href="${url.registrationUrl}" class="register">${msg("register")}</a>
                    </div>
                </form>


    <!-- Google login button -->
   <a href="http://localhost:8080/realms/master/broker/google/endpoint" class="google-login">
    <img src="https://cdn.iconscout.com/icon/free/png-256/google-470-675827.png" alt="Google Icon">
    <span>${msg("googleLogin")}</span>
</a>


    <!-- Footer text -->
    <div class="footer-text">${msg("poweredBy")}</div>
</div>

        </div>
    </div>

    <script src="${url.resourcesPath}/js/script.js"></script>
    
</body>
</html>