# Integration Guide: SonicWall Capture Client and Continuum RMM
This repo describes how SonicWall Capture Client integrates with Continuum  Remote Monitoring & Management (RMM) tool. This integration helps:  Install Capture Client on the endpoint using the Continuum  platform and displays that Capture Client is installed on the device details in device list page

## About Continuum RMM
[Continuum  RMM](https://www.continuum.net/platform/solutions/command) is an IT automation solution that helps companies track and manage IT assets from a single location. This document describes the steps that need to be performed to be able to configure the integration successfully.


## Requirements 
Before starting the integration, make sure that the Continuum RMM agent is installed on the endpoints and is being reported in the Continuum RMM console.
              

## Configuring Continuum RMM

1.	Navigate to the **Scripts** section in Contumuum RMM and create a new script from **Add > Add from template** and select *Create own application* from list of templates.

2.	Add the below details to create the script
	-	Script Name: SonicWall Capture Client Deploy Windows, add description
	-	Choose Type of Installer: Installer
	-	Choose https for download details and add the url, https://captureclient.sonicwall.com/api/clientapp/[tenantId] steps to find tenantId is given below 
	-	Type of application: MSI package
	-	Package/Exe Name: downloaded Capture Client  msi from Management > Client Installers  and rename it to “SonicWall Capture Client.msi”
	-	Installation parameter: 
		`/l*v C:\Capture\CaptureClientMSILog.txt /qn /promptrestart TOKENID=[tenantId]`
	-	Save the script

When choosing to use the above created script the **tenantId** the sites. For example while creating a job for auto install of Capture Client on a given site the tenantId for a site. The values for these variables can be found in the Capture Client console under the respective tenant. The tenantId can be found in the Capture Client console under **Management > Tenant Settings**

*Please make sure you use the right tenantId or the client will be installed under different client.*


## Troubleshooting

Please post your queries to [SonicWall community](https://community.sonicwall.com/technology-and-support/categories/capture-client) for any help.


