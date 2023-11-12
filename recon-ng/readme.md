```
recon-ng -w thmredteam
db insert domains

marketplace search
```


```
[recon-ng][thmredteam] > db insert domains
domain (TEXT): thmredteam.com
notes (TEXT):
[*] 1 rows affected.
[recon-ng][thmredteam] > marketplace search
```

Some modules, like `whoxy_whois`, require a key, as we can tell from the `*` under the `K` column. This requirement indicates that this module is not usable unless we have a key to use the related service.

Other modules have dependencies, indicated by a `*` under the `D` column. Dependencies show that third-party Python libraries might be necessary to use the related module.

```
marketplace search KEYWORD
marketplace info MODULE
marketplace install MODULE
marketplace remove MODULE
```

```
marketplace info virustotal
````