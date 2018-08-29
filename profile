set-alias c clear
set-alias e explorer
set-alias livetwitch 'livestreamer --% --twitch-oauth-token 2vgxk0na1qnudrt44cfvm4t8yspttb'

Import-Module posh-git
$GitPromptSettings.DefaultPromptSuffix = '`n$(''>'' * ($nestedPromptLevel + 1)) '
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true

function MVNClean { 
    set-location 'C:\Users\marty\dev\frankli\web\'
    mvn clean install --% -DskipTests
}
Set-Alias frankli-clean MVNClean
function MVNCleanTest { 
    set-location 'C:\Users\marty\dev\frankli\web\'
    mvn clean install
}
Set-Alias frankli-clean-test MVNCleanTest
function Springboot {
    set-location 'C:\Users\marty\dev\frankli\web\backend'
    mvn spring-boot:run 
}
Set-Alias frankli-up Springboot
function ngServeFrontend { 
    set-location 'C:\Users\marty\dev\frankli\web\frontend\src\main\frontend'
    npm start
}
Set-Alias frankli-front ngServeFrontend
function ngServeMockServer { 
    set-location 'C:\Users\marty\dev\frankli\web\frontend\src\main\mockServer'
    npm start
}
Set-Alias frankli-mock ngServeMockServerset-alias c clear
set-alias e explorer
set-alias livetwitch 'livestreamer --% --twitch-oauth-token 2vgxk0na1qnudrt44cfvm4t8yspttb'

Import-Module posh-git
$GitPromptSettings.DefaultPromptSuffix = '`n$(''>'' * ($nestedPromptLevel + 1)) '
$GitPromptSettings.DefaultPromptAbbreviateHomeDirectory = $true

function MVNClean { 
    set-location 'C:\Users\marty\dev\frankli\web\'
    mvn clean install --% -DskipTests
}
Set-Alias frankli-clean MVNClean
function MVNCleanTest { 
    set-location 'C:\Users\marty\dev\frankli\web\'
    mvn clean install
}
Set-Alias frankli-clean-test MVNCleanTest
function Springboot {
    set-location 'C:\Users\marty\dev\frankli\web\backend'
    mvn spring-boot:run 
}
Set-Alias frankli-up Springboot
function ngServeFrontend { 
    set-location 'C:\Users\marty\dev\frankli\web\frontend\src\main\frontend'
    npm start
}
Set-Alias frankli-front ngServeFrontend
function ngServeMockServer { 
    set-location 'C:\Users\marty\dev\frankli\web\frontend\src\main\mockServer'
    npm start
}
Set-Alias frankli-mock ngServeMockServer
