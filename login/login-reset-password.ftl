<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passwort vergessen? - Autodarts</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">

    <style>
   .left-container {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

/* Content Wrapper to Center the Content Vertically */
.content-wrapper {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 1rem; /* Abstand zwischen Titel und Text */
}

/* Title Styling */
.left-container .title {
    font-size: 2.5rem;
    font-family: 'Open Sans', sans-serif;
    font-weight: bold;
    color: white;
    top: auto;
}

/* Subtitle Styling */
.left-container .subtitle {
    font-size: 1.2rem;
    font-family: 'Open Sans', sans-serif;
    color: rgba(255, 255, 255, 0.8);
    line-height: 1.5;
    max-width: 80%; /* Begrenzung der Textbreite */
    margin-top: 80px;
}
    </style>
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
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=de"><img src="${url.resourcesPath}/images/de_flag.png" alt="German" class="lang-flag"> ${msg("langGerman")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=en"><img src="${url.resourcesPath}/images/en_flag.png" alt="English" class="lang-flag"> ${msg("langEnglish")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=fr"><img src="${url.resourcesPath}/images/fr_flag.png" alt="French" class="lang-flag"> ${msg("langFrench")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=nl"><img src="${url.resourcesPath}/images/nl_flag.png" alt="Netherlands" class="lang-flag"> ${msg("langNetherlands")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=no"><img src="${url.resourcesPath}/images/no_flag.png" alt="Norsk" class="lang-flag"> ${msg("langNorsk")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=es"><img src="${url.resourcesPath}/images/es_flag.png" alt="Spanish" class="lang-flag"> ${msg("langSpanish")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=it"><img src="${url.resourcesPath}/images/it_flag.png" alt="Italian" class="lang-flag"> ${msg("langItalian")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=ar"><img src="${url.resourcesPath}/images/ar_flag.png" alt="Arabic" class="lang-flag"> ${msg("langArabic")}</a></li>
    <li><a href="${url.loginResetCredentialsUrl}&kc_locale=zh"><img src="${url.resourcesPath}/images/zh_flag.png" alt="Chinese" class="lang-flag"> ${msg("langChinese")}</a></li>
</ul>

</div>
    
    <div class="page-container">
        <div class="left-container">
            <div class="content-wrapper">
                <div class="title">${msg("forgotPasswordHeaderLeft")}</div>
                <p class="subtitle">${msg("fogotPasswordDescriptionLeft")}</p>
            </div>
        </div>
        <div class="right-container">
            <div class="login-container">
            <img src="${url.resourcesPath}/images/autodarts-logo.png" alt="Autodarts Logo" class="logo-img" />
                <h1>${msg("forgotPasswordHeaderRight")}</h1>
                 <form action="${url.loginAction}" method="post">
                    <label for="email">${msg("forgotPasswordLabelRight")}</label>
                    <#if auth?has_content && auth.showUsername()>
                    <input type="email" id="username" name="username" placeholder="${msg("forgotPasswordInputRight")}" value="${msg("forgotPasswordInputRight")}" required>
                    <#else>
                    <input type="email" id="username" name="username" placeholder="${msg("forgotPasswordInputRight")}" required>
                    </#if>
                    <p class="info-text">${msg("forgotPasswordDescriptionRight")}</p>
                    
                    <button type="submit">${msg("forgotPasswordButton")}</button>
                    
                    <div class="additional-options">
                        <a href="${url.loginUrl}" class="back-to-login">${msg("backToLogin")}</a>
                    </div>
                    <div class="footer-text">${msg("forgotPasswordPoweredBy")}</div>
                </form>
            </div>
        </div>
    </div>
    
    <script src="${url.resourcesPath}/js/script.js"></script>
</body>
</html>