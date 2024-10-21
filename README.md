# ping-monitor-service
small service to monitor internet connectivity without relying on dns

## Usage

Tested on Ubuntu 24 LTS


1. Adjust the path in the `scripts/ping_monitor.service` file:

```ini
[Service]
ExecStart=/path/to/your/check_connection.sh
```

2. Create `/etc/systemd/system/ping_monitor.service` (or choose a name you like)

```bash
sudo cp scripts/ping_monitor.service /etc/systemd/system/ping_monitor.service
```

3. Reload the systemd daemon to recognize the new service

```bash
sudo systemctl daemon-reload
```

4. Enable the service to start on boot

```bash
sudo systemctl enable ping_monitor.service
```

5. Start the service

```bash
sudo systemctl start ping_monitor.service
```
