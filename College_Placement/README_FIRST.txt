COLLEGE PLACEMENT MANAGEMENT SYSTEM - NO INSTALL VERSION
========================================================

START THE WEBSITE
-----------------
1. Extract this ZIP file.
2. Open the extracted folder.
3. Double-click index.html.
4. It opens in Chrome, Edge, or another browser.

No XAMPP, PHP, Python, Node.js, or server installation is needed for this
demonstration version.

FEATURES
--------
- Colourful responsive placement dashboard
- Student registration
- Company recruitment drive registration
- Job role, package, drive date and CGPA eligibility
- Apply for eligible jobs
- Duplicate application prevention
- Application round and status tracking
- Dashboard counts and student directory

IMPORTANT DATABASE EXPLANATION
------------------------------
This no-install version stores its working records in the browser's
localStorage. It is fully usable as a front-end demonstration, but it does
NOT connect to MySQL Workbench.

The file database.sql is included for your MySQL Workbench database:
1. Open MySQL Workbench and connect to a running MySQL Server.
2. File > Open SQL Script > choose database.sql.
3. Click the lightning bolt Execute button.
4. Refresh SCHEMAS to see placement_db and its three tables.

A real live website that reads/writes to MySQL requires a backend server
(e.g. PHP, Python Flask, Java, or Node.js) running somewhere. A browser-only
HTML file cannot safely connect directly to MySQL. This ZIP is the version
that opens without installing any runtime.
