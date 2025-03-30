[Unit]
Description=Outgoing Chatmail Postfix before queue filter

[Service]
ExecStart={execpath} {config_path} outgoing
Restart=always
RestartSec=30
User=vmail

[Install]
WantedBy=multi-user.target
