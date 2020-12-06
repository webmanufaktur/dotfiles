<VirtualHost ${hostname}.test:80>
    DocumentRoot "/home/aca/www/${hostname}.test"
    ServerName ${hostname}.test
    ServerAlias ${hostname}.test www.${hostname}.test

    <Directory "/home/aca/www/${hostname}.test">
        AllowOverride all
        allow from all
        Options None
        Require all granted
    </Directory>
</VirtualHost>







