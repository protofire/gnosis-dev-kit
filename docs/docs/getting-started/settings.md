For configuration purposes, the following table maps the 'alerts' environment variables to their Django setting:

| Environment Variable | Django Setting | Development Default | Production Default| Description |
|----------------------|----------------|---------------------|-------------------|-------------|
|DJANGO_SETTINGS_MODULE| none | alerts.settings.local|alerts.settings.production||
|EMAIL_HOST | EMAIL_HOST | none | smtp.gmail.com||
|EMAIL_HOST_PASSWORD | EMAIL_HOST_PASSWORD | none | **** |For Gmail accounts or 2FA accounts remember to generate an app specific password|
|EMAIL_HOST_USER | EMAIL_HOST_USER | none | noreply@gnosis.pm||
|EMAIL_PORT | EMAIL_PORT | 2525 | 587||
|EMAIL_SUBJECT_PREFIX | EMAIL_SUBJECT_PREFIX | none | '[gnosis alerts]' ||
|EMAIL_USE_TLS| none | none | True ||
|DEFAULT_FROM_EMAIL| DEFAULT_FROM_EMAIL | none |'gnosispm <noreply@gnosis.pm>' ||
|EMAIL_BACKEND | none | 'django.core.mail.backends.filebased.EmailBackend'| 'email_log.backends.EmailBackend'||
|EMAIL_LOG_BACKEND | none | 'django.core.mail.backends.smtp.EmailBackend'| 'django.core.mail.backends.smtp.EmailBackend'||
|EMAIL_FILE_PATH | none | '/tmp/app-messages' | none |Directory containing the emails sent when EMAIL_BACKEND is a file|
|ETHEREUM_NODE_HOST | ETHEREUM_NODE_HOST | localhost | localhost ||
|ETHEREUM_NODE_PORT |ETHEREUM_NODE_PORT | 8545 | 8545||
|ETHEREUM_NODE_SSL| ETHEREUM_NODE_SSL| False | False ||
|ETHERSCAN_URL| ETHERSCAN_URL| 'https://testnet.etherscan.io' | 'https://etherscan.io/' ||
|SERVER_HOST| SERVER_HOST | http://localhost:8080 | alerts.gnosis.pm |Used in eth/mail_batch.py. Address and port may vary.|
