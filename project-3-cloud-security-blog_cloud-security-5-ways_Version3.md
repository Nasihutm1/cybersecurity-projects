# 5 Ways to Secure Your Cloud Data

Cloud storage is convenient but introduces new risks. Here are five actionable steps to keep your data safe:

---

## 1. Use a Password Manager

Storing and managing unique, strong passwords is crucial.  
Recommended: [Bitwarden](https://bitwarden.com), [LastPass](https://lastpass.com)

```bash
# Generate a random password using Bitwarden CLI
bw generate
```

---

## 2. Enable Two-Factor Authentication (2FA)

Add an extra layer of security to your accounts.  
Apps: [Authy](https://authy.com), [Google Authenticator](https://support.google.com/accounts/answer/1066447)

*Always enable 2FA on your cloud storage accounts!*

---

## 3. Use a VPN When Accessing Cloud Services

VPNs encrypt your connection and hide your IP address.  
Options: [ProtonVPN](https://protonvpn.com), [Windscribe](https://windscribe.com)

```bash
# Connect to ProtonVPN via CLI
protonvpn-cli connect
```

---

## 4. Audit Cloud App Permissions Regularly

Review and revoke unnecessary third-party app access.  
Here's a quick script for Google Drive:

```bash
# List Google Drive permissions (requires gdrive)
gdrive permissions list <file_id>
```

---

## 5. Encrypt Files Before Upload

Always encrypt sensitive files before uploading.

```bash
# Using 7z
7z a -p -mhe encrypted.7z sensitive.docx

# Using VeraCrypt (interactive)
veracrypt --text --create secure.vc
```

---

## 📷 [Placeholder: Insert screenshots of password manager, 2FA, VPN, and encryption steps]

---

### References & Further Reading

- [OWASP Cloud-Native Application Security Top 10](https://owasp.org/www-project-cloud-native-application-security-top-10/)
- [MITRE ATT&CK – Cloud Techniques](https://attack.mitre.org/tactics/TA0005/)