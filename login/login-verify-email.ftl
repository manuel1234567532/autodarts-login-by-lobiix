<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actions required</title>
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
            <li>
                <a href="#" onclick="changeLocale('de')">
                    <img src="${url.resourcesPath}/images/de_flag.png" alt="German" class="lang-flag"> ${msg("langGerman")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('en')">
                    <img src="${url.resourcesPath}/images/en_flag.png" alt="English" class="lang-flag"> ${msg("langEnglish")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('fr')">
                    <img src="${url.resourcesPath}/images/fr_flag.png" alt="French" class="lang-flag"> ${msg("langFrench")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('nl')">
                    <img src="${url.resourcesPath}/images/nl_flag.png" alt="Netherlands" class="lang-flag"> ${msg("langNetherlands")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('no')">
                    <img src="${url.resourcesPath}/images/no_flag.png" alt="Norsk" class="lang-flag"> ${msg("langNorsk")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('es')">
                    <img src="${url.resourcesPath}/images/es_flag.png" alt="Spanish" class="lang-flag"> ${msg("langSpanish")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('it')">
                    <img src="${url.resourcesPath}/images/it_flag.png" alt="Italian" class="lang-flag"> ${msg("langItalian")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('ar')">
                    <img src="${url.resourcesPath}/images/ar_flag.png" alt="Arabic" class="lang-flag"> ${msg("langArabic")}
                </a>
            </li>
            <li>
                <a href="#" onclick="changeLocale('zh')">
                    <img src="${url.resourcesPath}/images/zh_flag.png" alt="Chinese" class="lang-flag"> ${msg("langChinese")}
                </a>
            </li>
        </ul>
</div>

<div class="verify-email-container">
    <h1>${msg("verifyEmailHeading")}🎯</h1>
    <p>${msg("verifyEmailInstruction")}</p>
    <a href="${url.loginAction}" class="resend-email-button">
        ${msg("verifyEmailResend")}
    </a>
    <p class="back-to-login">
        <a href="${properties.LogInURL}" class="back-to-login-link">${msg("backToLogin")}</a>
    </p>
</div>

    <script src="${url.resourcesPath}/js/script.js"></script>
      
    <script>
        function changeLocale(locale) {
            const url = new URL(window.location.href);
            url.searchParams.set('kc_locale', locale);
            window.location.href = url.toString();
        }
    </script>
</body>
</html>