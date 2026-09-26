# web-application-security-project
web-security-project
## Overview

This project demonstrates security testing and protection of a Dockerized
Damn Vulnerable Web Application (DVWA).

The project focuses on identifying Cross-Site Scripting vulnerabilities and
implementing security controls to prevent malicious script execution.

## Objectives

- Set up DVWA using Docker
- Demonstrate reflected XSS
- Demonstrate stored XSS
- Implement a Content Security Policy
- Test and validate the security improvements

## Technologies Used

- Docker
- DVWA
- Apache
- PHP
- HTML and JavaScript
- Content Security Policy
- Web application security testing

## Vulnerabilities Tested

### Reflected XSS

A script was entered into the input field and reflected back into the webpage.
The script executed because the application did not properly protect user input.

### Stored XSS

A malicious script was stored in the DVWA guestbook and executed when the page
was loaded again.

## Security Countermeasure

A Content Security Policy was added to restrict JavaScript execution to trusted
scripts from the same server.

Example policy:

```text
default-src 'self'; script-src 'self'
