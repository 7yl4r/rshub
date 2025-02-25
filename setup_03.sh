sudo pip3 install matlab_kernel

# Register the MATLAB kernel with Jupyter:
python -m matlab_kernel install --user

sudo cp jupyterhub.service /etc/systemd/system/jupyterhub.service

# enable and start the service
sudo systemctl daemon-reload
sudo systemctl enable jupyterhub
sudo systemctl start jupyterhub
