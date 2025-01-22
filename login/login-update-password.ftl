<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Passwort vergessen? - Autodarts</title>
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
    
            <div class="login-container">
              <div class="logo">
            <img src="${url.resourcesPath}/images/autodarts-logo.png" alt="Autodarts Logo" class="logo-img" />
        </div>

        <h1>${msg("updatePasswordHeader")}</h1>
        
        <form action="${url.loginAction}" method="post">
            <#if message??>
                <#if message.type == 'error'>
                    <div class="alert alert-error">
                        <span class="fa fa-exclamation-circle error-icon"></span>
                        ${kcSanitize(message.summary)?no_esc}
                    </div>
                <#elseif message.type == 'warning'>
                    <div class="alert alert-warning">
                        <span class="fa fa-exclamation-triangle warning-icon"></span>
                        ${kcSanitize(message.summary)?no_esc}
                    </div>
                <#elseif message.type == 'success'>
                    <div class="alert alert-success">
                        <span class="fa fa-check-circle success-icon"></span>
                        ${kcSanitize(message.summary)?no_esc}
                    </div>
                <#elseif message.type == 'info'>
                    <div class="alert alert-info">
                        <span class="fa fa-info-circle info-icon"></span>
                        ${kcSanitize(message.summary)?no_esc}
                    </div>
                </#if>
            </#if>

            <input type="hidden" name="username" value="${username}" />

            <label for="password-new">${msg("updateCurrentPassword")}</label>
            <input type="password" id="password-new" name="password-new" placeholder="${msg("updateCurrentPassword")}" class="${messagesPerField.printIfExists('password-new', 'has-error')}" required/>

            <label for="password-confirm">${msg("updateConfirmPassword")}</label>
            <input type="password" id="password-confirm" name="password-confirm" placeholder="${msg("updateConfirmPassword")}" class="${messagesPerField.printIfExists('password-confirm', 'has-error')}" required/>

            <button type="submit">${msg("updateButton")}</button>

            <div class="additional-options">
                <a href="${url.loginUrl}">${msg("backToLogin")}</a>
            </div>
        </form>
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