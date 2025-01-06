<h1>PowerShell Bulk User Creation</h1>

<h2>Description</h2>
Welcome to the third installment of an ongoing series where we explore administrative tasks on Windows Server with a focus on Active Directory. This project goes over utilizing PowerShell to create active directory user accoiunts. We create these accounts by using a PowerShell script that extracts user data. This PowerShell script provides automation for administrative tasks.
<br><br>
This project will focus on PowerShell and Active Directory.
Below is a reference to the topology of the network we are working on.
<br />

<p align="center">
Topology: <br/>
<img src="https://imgur.com/X1H5wHU.png" height="80%" width="80%" alt="Topology"/>
<br /> 

<h2>Key Configurations</h2>

- <b>Active Directory User Creation<b>

<h2>Environments Used </h2>

- <b>Windows Server 2019</b>
- <b>Windows 10 (21H2)</b>

<h2>Project walk-through:</h2>

<h3>Follow the steps below to configure network services on DC1 and CL1:</h3>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
<b>
<p>Log into CL1 using Admin Credentials.</p>
<img src="https://imgur.com/bweXxEX.png" height="50%" width="50%" alt="install AD DS"/>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
<p>Install "RSAT: Active Directory Domain Service".</p>
<img src="https://imgur.com/vQthjfc.png" height="50%" width="50%" alt="install AD DS"/>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
<p>Use Active Directory Users and Computers to create an "Employees" Ogranizational Unit.</p>
<img src="https://imgur.com/hMCK0pn.png" height="50%" width="50%" alt="install AD DS"/>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
<p>Use PowerShell ISE to change the execution policy to "Unrestricted".</p>
<img src="https://imgur.com/8J3PcKA.png" height="50%" width="50%" alt="install AD DS"/>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
<p>Run the PowerShell script.</p>
<img src="https://imgur.com/47f54mA.png" height="50%" width="50%" alt="install AD DS"/>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
<p>Use Active Directory to verify the creation of the accounts.</p>
<img src="https://imgur.com/kJajKY5.png" height="50%" width="50%" alt="install AD DS"/>
<p><strong>.</strong></p>
<p><strong>.</strong></p>
</b>
<h2> Final Thoughts </h2>

<p>
We have successfully leveraged PowerShell to automate the creation of user accounts in our domain. Our script efficiently extracts employee data from an Excel sheet and generates their accounts, demonstrating the power of automation. As a result, we now manage multiple user accounts within our domain seamlessly.
</p>

<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>
