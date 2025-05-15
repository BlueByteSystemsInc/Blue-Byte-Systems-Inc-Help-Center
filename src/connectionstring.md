---
title: Connection String | PDMReminder | SOLIDWORKS PDM
description: Learn how to create and use a secure SQL Server connection string for PDMReminder to access your SOLIDWORKS PDM vault database efficiently.
---

# Configuring a Connection String for PDMReminder

PDMReminder requires a connection string to rapidly read from your SOLIDWORKS PDM vault database. This connection string allows the add-in to securely access the necessary data to send reminders and generate reports.

You can create your own connection string, or use the form below to generate one easily.

## Why is a Connection String Needed?

The connection string provides PDMReminder with the information it needs to connect to your SQL Server database. This enables the add-in to:
- Retrieve user and file information quickly.
- Generate accurate reminders and reports.
- Integrate seamlessly with your existing PDM infrastructure.

## Connection String Creator

Fill in the details below to generate your connection string. The **Instance** field is optional—leave it blank if you are connecting to the default SQL Server instance.

<div style="max-width:400px; margin-bottom:1em;">
  <form id="connForm" autocomplete="off">
    <label for="server">Server:</label><br>
    <input type="text" id="server" name="server" required style="width:100%"><br><br>
    <label for="instance">Instance (optional):</label><br>
    <input type="text" id="instance" name="instance" style="width:100%"><br><br>
    <label for="dbname">Vault DB Name:</label><br>
    <input type="text" id="dbname" name="dbname" required style="width:100%"><br><br>
    <label for="username">Username:</label><br>
    <input type="text" id="username" name="username" required style="width:100%"><br><br>
    <label for="password">Password:</label><br>
    <input type="password" id="password" name="password" required style="width:100%"><br><br>
    <button type="button" onclick="generateConnStr()">Generate Connection String</button>
  </form>
</div>

**Your Connection String:**
<pre id="connStrOutput" style="background:#f4f4f4; color:#000000; padding:1em; border-radius:5px;"></pre>

<script>
function generateConnStr() {
    var server = document.getElementById('server').value.trim();
    var instance = document.getElementById('instance').value.trim();
    var dbname = document.getElementById('dbname').value.trim();
    var username = document.getElementById('username').value.trim();
    var password = document.getElementById('password').value.trim();

    var dataSource = server;
    if(instance) {
        dataSource += '\\' + instance;
    }

    var connStr = `Server=${dataSource};Database=${dbname};User Id=${username};Password=${password}`;

    document.getElementById('connStrOutput').textContent = connStr;
}
</script>

> **Note:**  
> Keep your connection string secure. Do not share it with unauthorized users.