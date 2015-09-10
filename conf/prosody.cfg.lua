daemonize = false;

pidfile = "/tmp/prosody.pid";

log = { { to = "console" }; }

storage = "internal";

modules_enabled = {
    "roster";
    "saslauth";
    "tls";
    "dialback";
    "disco";
    "private";
    "vcard";
    "version";
    "uptime";
    "time";
    "ping";
    "register";
    "posix";
    "compression";
    "privacy";
    "lastactivity";
    "carbons";
}

allow_registration = false;

ssl = {
    key = "certs/server.key";
    certificate = "certs/server.crt";
}

VirtualHost "devnulllabs.io"

c2s_require_encryption = true

s2s_require_encryption = true

s2s_insecure_domains = { "gmail.com" }

Component "conference.devnulllabs.io" "muc"
