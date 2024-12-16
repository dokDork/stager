# stager
<img src="https://github.com/dokDork/stager/raw/main/images/stager.png" width="250" height="250">  

## Description
The **stager** is a software component installed on a target machine that can download additional software, referred to as the **second stage**, from a supporting website. 
This second stage may perform various functions, such as activating a backdoor, a keylogger, or other simple activities.
In this section, we present several stagers that, as of **December 2024**, can be used on Windows to download simple backdoors (for example, those obtained from https://www.revshells.com/) **without triggering Windows Defender**.
We propose one stager in PowerShell for use on Windows and another stager in VBS to be used as a macro in Office documents.
**These stagers should only be used for testing on machines where explicit consent has been obtained to execute both the stager and the second stage.**
