# Integration Guide: SonicWall Capture Client and ConnectWise Automate RMM
This repo describes how SonicWall Capture Client integrates with ConnectWise Automate RMM. 
This integration helps
- Detect devices which don’t have Capture Client installed
- install capture client on the endpoint via automate tool
- Displays that capture client is installed on the device details in the monitor and in device list page.

## About ConnectWise Automate
[ConnectWise Automate](https://www.connectwise.com/software/automate)(Formerly LabTech) is a cloud-based and on-premise IT automation solution that helps companies track and manage IT assets from a single location. This document describes the steps that need to be performed to be able to configure the integration successfully.

## Requirements 
Before starting the integration, make sure that the ConnectWise Automate agent is installed on the endpoints and is being reported in the ConnectWise Automate RMM console.
              

## Configuring ConnectWise Automate

-   Download the files in the folder *CW Automate packaging* from the [repo](ConnectWise Automate\CW Automate packaging)

-   Import the xml configurations Open ConnectWise Automate, navigate to **Tools > Import > LT XML Expansion**, and import the below files from extracted folder
    -   SonicWall Capture Client Endpoint Protection Install.xml 
    -   Computers-with-CC.xml
    -   Computers-without-CC.xml

-	Once the XML’s are imported, A new folder **Antinvirus -> SonicWall Capture Client** is created under Scripts which lists the client install script.

-   A couple of new search items will be added under search **Automation > Searches > AntiVirus Software** namely *Antivirus – Non SonicWall Capture Client Endpoints* and *Antivirus – SonicWall Capture Client Endpoints*.	

-   Next, navigate to **Tools > Import > SQL File**, and import the below SQL files from the extracted folder.
    -   edf-tenantid.sql
    -   edf-version.sql
    -   VirusScan-defination.sql
    When you import the script, the following updates are made in ConnectWise Automate.

-   You should be able to see the below 2 custom fields registered under **System > Configuration > Dashboard > Config**

-   You should be able to see a new tab *SonicWall Capture Clien*t and 2 custom fields when you right-click on **client > open > Info**

-   You should be able to see the new virus definition for Capture Client registered under **System > Configuration > Dashboard > Config**

-   You must issue the following commands from Commands > Inventory to all the ConnectWise Automate clients:
    -   Update Config
    -   Resend System info
    -   Resend Software Info LT

## Setting up Client

This integration needs 2 inputs from the ConnectWise Automate admins the tenantId and the client version.
To configure the above navigate to [client] > open > Info
The *SWCCtenantId* can be found in the Capture Client console under **Management > Tenant Settings**
The *SWCCVersion* can be found under **Management > Client Installers** based on the clients chosen.



**NOTE**: *Please make sure you use the right tenantId or the client will be installed under different client*


## Troubleshooting

Please post your queries to [SonicWall community](https://community.sonicwall.com/technology-and-support/categories/capture-client) for any help.


