# Integration Guide: SonicWall Capture Client and Datto RMM
This repo describes how SonicWall Capture Client integrates with Datto Remote Monitoring & Management (RMM) tool. This integration helps:  Install Capture Client on the endpoint using the Datto platform and displays that Capture Client is installed on the device details in device list page

## About Datto RMM
[Datto RMM](https://help.aem.autotask.net/en/Content/1INTRODUCTION/Infrastructure/Overview.htm) is an IT automation solution that helps companies track and manage IT assets from a single location. This document describes the steps that need to be performed to be able to configure the integration successfully.


## Requirements 
Before starting the integration, make sure that the Datto RMM agent is installed on the endpoints and is being reported in the Datto RMM console.
              

## Configuring Datto RMM

1.	Download the *cc-install-component* from the above repo

2.	Login to Datto RMM tool and create a new component by choosing category as *Applications*

3.	Choose the **sites** where you want to install Capture Client

4.	Choose the Batch command and copy the contents downloaded from file in step 1

5.	Download the MSI from Capture Client management console under **Management > Client Installers**, rename the downloaded msi to *SonicWall Capture Client.msi* 
and add to the file in the component

6.	Create 2 input variables required for the script
The component can be used to create jobs and in turn install Capture Client on devices

7.	When choosing to use the above created component in a job the *tenantId* and *version* needs to be filled based on the sites. For example while creating a job for auto install of Capture Client on a given site the tenantId and version is filled for a site

The values for these variables can be found in the Capture Client console under the respective tenant.The *tenantId* can be found in the Capture Client console under **Management > Tenant Settings**


The *version* can be found under **Management > Client Installers** based on the clients chosen.
<Screenshot>

*Please make sure you use the right tenantId or the client will be installed under different client.*


## Troubleshooting

Please post your queries to [SonicWall community](https://community.sonicwall.com/technology-and-support/categories/capture-client) for any help.


