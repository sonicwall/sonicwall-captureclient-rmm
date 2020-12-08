# Integration Guide: SonicWall Capture Client and Microsoft Endpoint Manager
This repo describes how SonicWall Capture Client integrates with Microsoft Endpoint Manager. This integration helps:  Install Capture Client on the endpoint using the Microsoft Endpoint Manager platform and displays that Capture Client is installed on the device details in device list page

## About Microsoft Endpoint Manager
[Microsoft Endpoint Manager](https://www.microsoft.com/en-us/microsoft-365/microsoft-endpoint-manager) is an IT automation solution that helps companies tracks Endpoint security, device management, and intelligent cloud actions in a unified management solution with Microsoft Intune and Configuration Manager. This document describes the steps that need to be performed to be able to configure the integration successfully.


## Requirements 
Before starting the integration, make sure that device is reported in the Microsoft Endpoint Manager console.
              

## Configuring Microsoft Endpoint Manager

1.	Navigate to the **Home > Apps** section from Microsoft Endpoint Manager home and create a new app by selecting app type as **line-of-business app**.

2.	Upload the MSI downloaded from the SonicWall Capture Client under **Management > Client Installers**

3.	Fill in the below into the Edit application pane
	-	Name: SonicWall Capture Client Windows
	-	Description: SonicWall Capture Client Windows installer for both 32 and 64 bit machines and desktops and servers.
	-	Publisher: SonicWall
	-	Command-line arguments: `/l*v C:\temp\CaptureClientMSILog.txt /qn TOKENID="[tenantId]"`
	-	Information URL:
	-	Privacy URL:
	-	click on *Review + Save* to save the changes
	-	In the final page of the widget click on *create* to create the app

4.	Assign the app to groups to deploy SonicWall Capture Client

When choosing to use the above created script the **tenantId** the sites. For example while creating a job for auto install of Capture Client on a given site the tenantId for a site. The values for these variables can be found in the Capture Client console under the respective tenant. The tenantId can be found in the Capture Client console under **Management > Tenant Settings**

*Please make sure you use the right tenantId or the client will be installed under different client.*


## Troubleshooting

Please post your queries to [SonicWall community](https://community.sonicwall.com/technology-and-support/categories/capture-client) for any help.


