\c card_db;

DELETE FROM settings;

INSERT INTO settings (name, value) VALUES ('LOG_LEVEL', 'DEBUG');
INSERT INTO settings (name, value) VALUES ('AES_DECRYPT_KEY', '');
INSERT INTO settings (name, value) VALUES ('HOST_DOMAIN', '');
INSERT INTO settings (name, value) VALUES ('MIN_WITHDRAW_SATS', '');
INSERT INTO settings (name, value) VALUES ('MAX_WITHDRAW_SATS', '');
INSERT INTO settings (name, value) VALUES ('LN_HOST', '');
INSERT INTO settings (name, value) VALUES ('LN_PORT', '');
INSERT INTO settings (name, value) VALUES ('LN_TLS_FILE', '/boltcard/tls.cert');
INSERT INTO settings (name, value) VALUES ('LN_MACAROON_FILE', '/boltcard/admin.macaroon');
INSERT INTO settings (name, value) VALUES ('FEE_LIMIT_SAT', '');
INSERT INTO settings (name, value) VALUES ('FEE_LIMIT_PERCENT', '');
INSERT INTO settings (name, value) VALUES ('LN_TESTNODE', '');
INSERT INTO settings (name, value) VALUES ('FUNCTION_LNURLW', '');
INSERT INTO settings (name, value) VALUES ('FUNCTION_LNURLP', '');
INSERT INTO settings (name, value) VALUES ('FUNCTION_EMAIL', '');
INSERT INTO settings (name, value) VALUES ('AWS_SES_ID', '');
INSERT INTO settings (name, value) VALUES ('AWS_SES_SECRET', '');
INSERT INTO settings (name, value) VALUES ('AWS_SES_EMAIL_FROM', '');
INSERT INTO settings (name, value) VALUES ('EMAIL_MAX_TXS', '');
INSERT INTO settings (name, value) VALUES ('FUNCTION_INTERNAL_API', 'ENABLE');
