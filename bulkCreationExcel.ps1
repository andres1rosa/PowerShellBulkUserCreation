# Define the default password for new users
$PASSWORD_FOR_USERS = "Password1"

# Specify the path to the Excel file containing user details
$EXCEL_PATH = "C:\Users\a-rosa.TECHCORP\Downloads\UserDetails.xlsx"

# Import the module for handling Excel files
Import-Module ImportExcel

# Import user details from the Excel file
$USER_DETAILS_LIST = Import-Excel -Path $EXCEL_PATH

# Convert the plaintext password to a secure string for Active Directory usage
$password = ConvertTo-SecureString $PASSWORD_FOR_USERS -AsPlainText -Force

# Define the organizational unit path where the users will be created
$ouPath = "OU=Employees,DC=techcorp,DC=com"

# Loop through each user in the list of user details
foreach ($user in $USER_DETAILS_LIST) {
    # Convert first name and last name to lowercase
    $first = $user.FirstName.ToLower()
    $last = $user.LastName.ToLower()

    # Extract city, department, and phone from user details
    $city = $user.City
    $department = $user.Department
    $phone = $user.Phone

    # Generate username from first letter of first name and full last name
    $username = "$($first.Substring(0,1))$($last)".ToLower()

    # Display the username being created
    Write-Host "Creating user: $($username)" -BackgroundColor Black -ForegroundColor Cyan

    # Create new Active Directory user with the specified attributes
    New-AdUser -AccountPassword $password `
               -GivenName $first `
               -Surname $last `
               -DisplayName "$first $last" `
               -Name $username -City $city `
               -Department $department `
               -OfficePhone $phone `
               -EmployeeID $username `
               -PasswordNeverExpires $true `
               -Path $ouPath -Enabled $true
}