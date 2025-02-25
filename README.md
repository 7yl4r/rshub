# rshub
jupyterhub setup for doing remote sensing

# setup
All files should be run with this repo root as the cwd.

1. `./setup_01.sh`
2. install MATLAB
3. `./setup_03.sh`

# TODO
## ubuntu on cozumel
cozumel as jupyterhub server?

## generate cofig file & + it here
```
sudo jupyterhub --generate-config -f /etc/jupyterhub/jupyterhub_config.py

sudo emacs /etc/jupyterhub/jupyterhub_config.py
```

do edits like 

```
c.JupyterHub.ip = '0.0.0.0'
c.JupyterHub.port = 8000

c.JupyterHub.authenticator_class = 'jupyterhub.auth.PAMAuthenticator'
```

## Certbot setup
```
# install
sudo apt install certbot python3-certbot-nginx

# obtain cert
sudo certbot --nginx -d your-domain.com
```

add this to jupyterhub_config.py:

```
c.JupyterHub.ssl_key = '/etc/letsencrypt/live/your-domain.com/privkey.pem'
c.JupyterHub.ssl_cert = '/etc/letsencrypt/live/your-domain.com/fullchain.pem'
```

then `sudo systemctl restart jupyterhub`.
