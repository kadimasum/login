# Password Validation Script

This is a simple Bash script that prompts the user to enter a username and password, verifies if the passwords match, and logs the user in if successful.

## Features

- Prompts the user to enter a username.
- Prompts for a password and confirms it by asking the user to re-enter the password.
- Removes any extra spaces (whitespace characters) from the password.
- Compares the password and confirmation to ensure they match.
- If the passwords match, the user is logged in; otherwise, an error message is displayed.

## How It Works

1. The script first asks for a username using `read -p`.
2. It then prompts the user to create a password (without showing the password input) using `read -sp`.
3. The password is processed to remove any leading/trailing spaces or other whitespace characters using `tr -d '[:space:]'`.
4. The script asks for confirmation by prompting the user to re-enter the password.
5. It checks if the two passwords match:
   - If they match, the script logs the user in.
   - If they don't match, an error message is displayed, and the script exits with an error code.

## Usage

1. Clone or download the script to your local machine.
2. Ensure the script has executable permissions by running:

   ```bash
   chmod +x script.sh
   ```

3. Run the script:

   ```bash
   ./script.sh
   ```

4. Follow the prompts to enter your username and password.

## Example Run

```bash
$ ./script.sh
Enter your username: john_doe
Create password: ********
Confirm password: ********
You're logged in as john_doe!
```

In the case of mismatching passwords:

```bash
$ ./script.sh
Enter your username: john_doe
Create password: ********
Confirm password: *******
Password does not match!
```

## Notes

- This script removes any whitespace from the password input to prevent accidental input errors.
- The password input is not displayed for security reasons (`-s` option in `read`).
- The script exits with code `1` if the passwords do not match.

## License

This script is open-source and free to use under the MIT License.


