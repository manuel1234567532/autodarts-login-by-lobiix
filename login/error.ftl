<!DOCTYPE html>
<html lang="${locale.current}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${msg("errorTitle")}</title>
    <link rel="stylesheet" href="${url.resourcesPath}/css/styles.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>

<div class="error-container">
    <h1><i class="fa fa-exclamation-circle"></i> ${msg("errorHeading")}</h1>
    <p>${msg("errorDescription")}</p>
    <a href="${properties.LogInURL}" class="back-to-login-link">${msg("backToLogin")}</a>
</div>

</body>
</html>
