.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
.super Landroid/content/ContentProvider;
.source "NSDSContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;,
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$LineEntityQuery;,
        Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$LinesColumns;
    }
.end annotation


# static fields
.field private static final ACCESS_STEERING_TABLE:Ljava/lang/String; = "access_steering"

.field private static final ACCOUNTS_TABLE:Ljava/lang/String; = "accounts"

.field private static final CONNECTIVITY_PARAMS_TABLE:Ljava/lang/String; = "connectivity_parameters"

.field private static final CONNECTIVITY_SERVICE_NAME_TABLE:Ljava/lang/String; = "connectivity_sevice_names"

.field private static final CREATE_ACCOUNT_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS accounts(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id TEXT NOT NULL,device_uid TEXT, email TEXT,access_token TEXT,is_active INTEGER DEFAULT 0,is_temporary INTEGER DEFAULT 0, UNIQUE(account_id));"

.field private static final CREATE_CONNECTIVITY_PARAMS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS connectivity_parameters(_id INTEGER PRIMARY KEY AUTOINCREMENT,certificate TEXT,epdg_addresses TEXT);"

.field private static final CREATE_CONNECTIVITY_PARAM_SERVICE_NAME_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS connectivity_sevice_names(_id INTEGER PRIMARY KEY AUTOINCREMENT,connectivity_id INTEGER REFERENCES connectivity_parameters(_id) NOT NULL, service_name TEXT NOT NULL,client_id TEXT NOT NULL,package_name TEXT NOT NULL,appstore_url TEXT NOT NULL);"

.field private static final CREATE_DEVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_uid TEXT NOT NULL,device_account_id INTEGER REFERENCES accounts(_id) NOT NULL,device_name TEXT NOT NULL,is_primary INTEGER DEFAULT 0,device_type INTEGER DEFAULT 0,is_local INTEGER DEFAULT 0, UNIQUE(device_account_id,device_uid));"

.field private static final CREATE_DEVICE_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS device_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_id TEXT NOT NULL, version TEXT, device_config TEXT);"

.field private static final CREATE_GCM_TOKENS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS gcm_tokens(_id INTEGER PRIMARY KEY AUTOINCREMENT,sender_id TEXT NOT NULL,gcm_token TEXT NOT NULL,protocol_to_server TEXT, device_uid TEXT, UNIQUE( sender_id));"

.field private static final CREATE_LINES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS lines(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER REFERENCES accounts(_id) NOT NULL,msisdn TEXT NOT NULL,friendly_name TEXT NOT NULL,status INTEGER DEFAULT 0,line_res_package TEXT, icon INTEGER,color INTEGER,type TEXT DEFAULT regular,is_owner INTEGER DEFAULT 1,service_attributes TEXT, is_device_default INTEGER DEFAULT 0, location_status INTEGER , tc_status INTEGER , e911_address_id TEXT, e911_aid_expiration TEXT, e911_server_data TEXT, e911_server_url TEXT, cab_status INTEGER DEFAULT 0, reg_status INTEGER DEFAULT 0, ring_tone TEXT, UNIQUE( account_id,msisdn));"

.field private static final CREATE_NSDS_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS nsds_configs(_id INTEGER PRIMARY KEY AUTOINCREMENT,imsi TEXT, pname TEXT NOT NULL,pvalue TEXT);"

.field private static final CREATE_PROVISIONING_PARAMS_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS provisioning_parameters(_id INTEGER PRIMARY KEY AUTOINCREMENT,apn TEXT NOT NULL,pcscf_address TEXT NOT NULL,sip_uri TEXT NOT NULL,impu TEXT NOT NULL,sip_username TEXT,sip_password TEXT NOT NULL);"

.field private static final CREATE_SERVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS services(_id INTEGER PRIMARY KEY AUTOINCREMENT,line_id INTEGER REFERENCES lines(_id),device_id INTEGER REFERENCES devices(_id),is_native INTEGER DEFAULT 0,service_name TEXT,service_instance_id TEXT,expiration_time INTEGER DEFAULT 0,service_msisdn TEXT,is_owner INTEGER,msisdn_friendly_name TEXT,service_fingerprint TEXT DEFAULT NULL,service_instance_token TEXT, service_token_expire_time TEXT, provisioning_params_id INTEGER REFERENCES provisioning_parameters(_id),config_parameters TEXT);"

.field private static final CREATE_SIM_SWAP_NSDS_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sim_swap_nsds_configs(_id INTEGER PRIMARY KEY AUTOINCREMENT,imsi TEXT NOT NULL, pname TEXT NOT NULL,pvalue TEXT);"

.field private static final CREATE_SIM_SWAP_SERVICES_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS sim_swap_services(_id INTEGER PRIMARY KEY AUTOINCREMENT,line_id INTEGER REFERENCES lines(_id),device_id INTEGER REFERENCES devices(_id),is_native INTEGER ,service_name TEXT,service_instance_id TEXT,expiration_time INTEGER DEFAULT 0,service_msisdn TEXT,is_owner INTEGER,msisdn_friendly_name TEXT,service_fingerprint TEXT DEFAULT NULL,service_instance_token TEXT, service_token_expire_time TEXT, provisioning_params_id INTEGER REFERENCES provisioning_parameters(_id),config_parameters TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "ericsson_nsds.db"

.field private static final DATABASE_VERSION:I = 0x3

.field private static final DEVICES_TABLE:Ljava/lang/String; = "devices"

.field private static final DEVICE_CONFIG_TABLE:Ljava/lang/String; = "device_config"

.field private static final GCM_TOKENS_TABLE:Ljava/lang/String; = "gcm_tokens"

.field private static final LINES_TABLE:Ljava/lang/String; = "lines"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSDS_CONFIG_TABLE:Ljava/lang/String; = "nsds_configs"

.field private static final PENDING_LINES_TABLE:Ljava/lang/String; = "pending_lines"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.nsds.provider"

.field private static final PROVISIONING_PARAMS_TABLE:Ljava/lang/String; = "provisioning_parameters"

.field private static final REMOVE_ALL_TABLES_AND_INDICES:Ljava/lang/String; = "PRAGMA writable_schema = 1; DELETE FROM sqlite_master WHERE TYPE IN (\'table\', \'index\'); PRAGMA writable_schema = 0; "

.field private static final SERVICES_TABLE:Ljava/lang/String; = "services"

.field private static final SIM_SWAP_NSDS_CONFIG_TABLE:Ljava/lang/String; = "sim_swap_nsds_configs"

.field private static final SIM_SWAP_SERVICES_TABLE:Ljava/lang/String; = "sim_swap_services"

.field private static final SQL_WHERE_ACCOUNT_ID:Ljava/lang/String; = "_id = ?"

.field private static final SQL_WHERE_ACTIVE_ACCOUNT:Ljava/lang/String; = "is_active = 1"

.field private static final SQL_WHERE_ALL_LINES:Ljava/lang/String; = " (lines.account_id != 0 OR is_native = 1)"

.field private static final SQL_WHERE_DEVICES_FOR_LINE_ID:Ljava/lang/String; = "devices._id IN(SELECT services.device_id from lines, devices, services  where device_id = devices._id AND line_id = lines._id AND status = 1 AND line_id = ?)"

.field private static final SQL_WHERE_DEVICE_ID:Ljava/lang/String; = "_id = ?"

.field private static final SQL_WHERE_LINES_FOR_ACTIVE_ACCOUNT:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1))"

.field private static final SQL_WHERE_LINE_ENTITIY_BASE:Ljava/lang/String; = "line_id = lines._id AND device_id = devices._id"

.field private static final SQL_WHERE_LINE_ENTITIY_ID:Ljava/lang/String; = "line_id = lines._id AND device_id = devices._id AND lines._id= ?"

.field private static final SQL_WHERE_LINE_ENTITY_ACTIVE_ACCOUNT:Ljava/lang/String; = "line_id = lines._id AND device_id = devices._id AND services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1))"

.field private static final SQL_WHERE_LINE_ID:Ljava/lang/String; = "lines._id = ?"

.field private static final SQL_WHERE_LINE_STATUS_ACTIVE:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1)) AND status = ?"

.field private static final SQL_WHERE_LOCAL_LINES_WITH_SERVICES:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND status = ?"

.field private static final SQL_WHERE_LOCAL_LINES_WITH_SERVICES_BASE:Ljava/lang/String; = "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ?"

.field public static final TABLE_JOIN_FOR_ALL_LINES:Ljava/lang/String; = "lines LEFT OUTER JOIN services on services.line_id = lines._id "

.field public static final TABLE_JOIN_LINES_SERVICES:Ljava/lang/String; = "lines, services,devices"

.field private static final sLineEntityProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLineWithServicesProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

.field protected mNsdsService:Landroid/os/Messenger;

.field protected mNsdsSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 63
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 236
    const-string v1, "com.samsung.ims.nsds.provider"

    const-string v2, "lines/#/enable_cab"

    const/16 v3, 0x31

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "lines/#/disable_cab"

    const/16 v3, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 241
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "lines"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "lines/#/devices"

    const/16 v3, 0x2b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 245
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/lines/#/services"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 248
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 250
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/lines/#/add_services"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 252
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/lines/#/remove_services"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 254
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/lines/#/acitvate_services"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/lines/#/deactivate_services"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 259
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "accounts/disable_active_account"

    const/16 v3, 0x30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "activate_sim_device"

    const/16 v3, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 263
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "deactivate_sim_device"

    const/16 v3, 0x1f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "update_e911_address"

    const/16 v3, 0x2e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 268
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vowifi_toggle_on"

    const/16 v3, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "vowifi_toggle_off"

    const/16 v3, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 273
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "accounts/upload_all_contacts"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "accounts/download_all_contacts"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "accounts/upload_updated_contact/#"

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 280
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/set_primary"

    const/16 v3, 0x1a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 282
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/own_activation_status"

    const/16 v3, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 284
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/own_login_status"

    const/16 v3, 0x29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 286
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/own_ready_status"

    const/16 v3, 0x3c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 288
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/own_nsds_service_status"

    const/16 v3, 0x3d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 290
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/push_token"

    const/16 v3, 0x43

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 293
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "device_config"

    const/16 v3, 0x27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 294
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "device_config/element"

    const/16 v3, 0x3e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "nsds_configs"

    const/16 v3, 0x28

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 298
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "nsds_configs/entitlement_url"

    const/16 v3, 0x49

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "devices/#/services"

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 303
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "all_lines_in_current_account"

    const/16 v3, 0x2c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 305
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "all_lines"

    const/16 v3, 0x2d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 307
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "all_lines_internal"

    const/16 v3, 0x4d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 310
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "services"

    const/16 v3, 0x3f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 313
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "sim_swap_nsds_configs"

    const/16 v3, 0x47

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 314
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "sim_swap_services"

    const/16 v3, 0x48

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 316
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "gcm_tokens"

    const/16 v3, 0x4a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 318
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "retrieve_aka_token"

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "reconnect_db"

    const/16 v3, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 322
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "binding_service"

    const/16 v3, 0x52

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    .line 386
    const-string v1, "_id"

    const-string v2, "lines._id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v3, "account_id"

    const-string v4, "lines.account_id"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v5, "msisdn"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v6, "friendly_name"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v7, "type"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v7, "status"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v7, "line_res_package"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v7, "icon"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v8, "color"

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v9, "is_native"

    const-string/jumbo v10, "services.is_native"

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v10, "is_owner"

    const-string v11, "lines.is_owner"

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "service_attributes"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "is_device_default"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "location_status"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "tc_status"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "e911_address_id"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "e911_aid_expiration"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "e911_server_data"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "e911_server_url"

    invoke-virtual {v0, v11, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string v11, "cab_status"

    const-string v12, "cab_status"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "reg_status"

    const-string/jumbo v12, "reg_status"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "ring_tone"

    const-string/jumbo v12, "ring_tone"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "service_name"

    const-string/jumbo v12, "service_name"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "service_fingerprint"

    const-string/jumbo v12, "service_fingerprint"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "service_instance_id"

    const-string/jumbo v12, "service_instance_id"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "service_instance_token"

    const-string/jumbo v12, "service_instance_token"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    const-string/jumbo v11, "service_token_expire_time"

    const-string/jumbo v12, "service_token_expire_time"

    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    .line 420
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    const-string v1, "Lines.is_owner"

    invoke-virtual {v0, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    const-string v1, "device_uid"

    const-string v2, "device_uid"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    const-string v1, "device_name"

    const-string v2, "device_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_primary"

    const-string v2, "is_primary"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineEntityProjectionMap:Ljava/util/HashMap;

    const-string v1, "device_type"

    const-string v2, "device_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    .line 84
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p0, "x0"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 62
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->renameDeviceAccountIdColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private activateSimDevice(I)V
    .locals 5
    .param p1, "slotid"    # I

    .line 1293
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "activate_after_oos"

    const-string v4, "completed"

    invoke-static {v0, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1297
    .local v0, "msg":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1298
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1299
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "SLOT_ID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1300
    const-string v3, "EVENT_TYPE"

    const/16 v4, 0xb

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1301
    const-string v3, "RETRY_COUNT"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1302
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1303
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 1304
    :catch_0
    move-exception v0

    .line 1305
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateSIMDevice: failed to activate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private addServicesToLine(Landroid/net/Uri;)J
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1446
    const-wide/16 v0, 0x0

    .line 1447
    .local v0, "totalInserts":J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1448
    .local v2, "deviceId":Ljava/lang/Long;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 1449
    .local v3, "lineId":Ljava/lang/Long;
    const-string/jumbo v4, "service_names"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1450
    .local v4, "strServiceNames":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1451
    .local v5, "serviceNames":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    aget-object v8, v5, v7

    .line 1452
    .local v8, "serviceName":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1453
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "device_id"

    invoke-virtual {v9, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1454
    const-string v10, "line_id"

    invoke-virtual {v9, v10, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1455
    const-string/jumbo v10, "service_name"

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-direct {p0, v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoServices(Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 1457
    .local v10, "numRows":J
    add-long/2addr v0, v10

    .line 1451
    .end local v8    # "serviceName":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    .end local v10    # "numRows":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1460
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_1

    .line 1461
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not add services:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to line Id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    :cond_1
    return-wide v0
.end method

.method private appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "selection"    # Ljava/lang/String;

    .line 1525
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1526
    const-string v0, " AND ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1527
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1528
    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1530
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private broadcastPrimaryDeviceSettingChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;

    .line 1427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.IS_PRIMARY_ACTIVATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1428
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1429
    .local v1, "isPrimary":Z
    :goto_0
    const-string v2, "is_primary_device"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1430
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v2, v0, v3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1431
    return-void
.end method

.method private declared-synchronized connectToNSDSMultiSimService()V
    .locals 5

    monitor-enter p0

    .line 813
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToNSDSMultiSimService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 827
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.nsds.NSDSMultiSimService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$1;-><init>(Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsSvcConn:Landroid/content/ServiceConnection;

    .line 845
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    monitor-exit p0

    return-void

    .line 812
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deactivateSimDevice(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1311
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    :try_start_0
    const-string v1, "imsi"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1316
    .local v1, "imsi":Ljava/lang/String;
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1317
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1318
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1319
    .local v3, "data":Landroid/os/Bundle;
    const-string v4, "IMSI"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1321
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    .end local v1    # "imsi":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 1322
    :catch_0
    move-exception v1

    .line 1323
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openLoginPage: failed to open login page"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private deleteFromServices(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 725
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 726
    .local v1, "noRows":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 728
    :try_start_0
    const-string v2, "device_id = ? AND line_id = ?"

    .line 729
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 730
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string/jumbo v4, "services"

    invoke-virtual {v0, v4, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 731
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 735
    .end local v2    # "selection":Ljava/lang/String;
    .end local v3    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 736
    goto :goto_1

    .line 735
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 732
    :catch_0
    move-exception v2

    .line 733
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete from Services table:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 737
    :goto_1
    return v1

    .line 735
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 736
    throw v2
.end method

.method private disableActiveAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "queryParamAccountId"    # Ljava/lang/String;

    .line 1189
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->disableLinesAndServices(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1190
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1191
    .local v0, "values":Landroid/content/ContentValues;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "is_active"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    const-string v2, "is_active = ?  AND _id = ?"

    .line 1193
    .local v2, "updateSelectionAccount":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "1"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    aput-object p2, v3, v1

    move-object v1, v3

    .line 1194
    .local v1, "updateSelectionAccountArgs":[Ljava/lang/String;
    const-string v3, "accounts"

    invoke-virtual {p1, v3, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1195
    .local v3, "numRows":I
    if-gtz v3, :cond_0

    .line 1196
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "disabling the account failed"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_0
    return v3
.end method

.method private disableLinesAndServices(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1202
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1203
    .local v0, "lineValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "status"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    const-string v1, "lines"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1206
    .local v1, "numLinesUpdated":I
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableLinesAndServices: de-activated :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lines for logout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    if-lez v1, :cond_0

    .line 1208
    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1210
    :cond_0
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "disableLinesAndServices: de-activated lines for logout"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const-string/jumbo v3, "services"

    invoke-virtual {p1, v3, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1212
    return-void
.end method

.method private getDeviceConfigElement(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1248
    const/4 v0, 0x0

    .line 1249
    .local v0, "deviceConfigXml":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1251
    .local v1, "elementName":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v3, "tag_name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 1252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1253
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Empty tag name. Return null"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    const/4 v2, 0x0

    return-object v2

    .line 1256
    :cond_0
    const-string v3, "device_config"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 1257
    .local v6, "projection":[Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    .local v3, "dbCursor":Landroid/database/Cursor;
    if-eqz v3, :cond_2

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1260
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v4

    goto :goto_1

    .line 1257
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_1

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "deviceConfigXml":Ljava/lang/String;
    .end local v1    # "elementName":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    throw v4

    .line 1262
    .restart local v0    # "deviceConfigXml":Ljava/lang/String;
    .restart local v1    # "elementName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1265
    .end local v3    # "dbCursor":Landroid/database/Cursor;
    .end local v6    # "projection":[Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 1263
    :catch_0
    move-exception v3

    .line 1264
    .local v3, "sqe":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while parseDeviceConfig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    .end local v3    # "sqe":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Landroid/database/MatrixCursor;

    const-string v4, "element_name"

    const-string v5, "element_value"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1268
    .local v3, "matrixCursor":Landroid/database/MatrixCursor;
    if-eqz v0, :cond_5

    .line 1269
    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/util/ConfigElementExtractor;->getAllElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 1270
    .local v4, "mapElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1271
    .local v6, "key":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    aput-object v6, v7, v2

    const/4 v8, 0x1

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1272
    .end local v6    # "key":Ljava/lang/String;
    goto :goto_3

    .line 1273
    .end local v4    # "mapElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    goto :goto_4

    .line 1274
    :cond_5
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Device Config is null: "

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :goto_4
    return-object v3
.end method

.method private getDeviceOwnActivationStatus(I)Landroid/database/Cursor;
    .locals 6
    .param p1, "slotid"    # I

    .line 1216
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 1218
    .local v1, "pendingSimSwap":Z
    if-eqz v1, :cond_0

    const-string v2, "activation_in_progress"

    goto :goto_0

    .line 1219
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v3, "device_state"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    nop

    .line 1221
    .local v2, "deviceState":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceState: onSimSwapEvt "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    new-instance v3, Landroid/database/MatrixCursor;

    const-string v4, "activation_status"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1223
    .local v3, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1224
    return-object v3
.end method

.method private getDeviceOwnReadyStatus(I)Landroid/database/Cursor;
    .locals 6
    .param p1, "slotid"    # I

    .line 1228
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, "deviceUid":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1230
    .local v1, "cursor":Landroid/database/MatrixCursor;
    const/4 v2, 0x1

    .line 1231
    .local v2, "readyStatus":Z
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1232
    const/4 v2, 0x0

    .line 1235
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    .line 1236
    invoke-static {v3, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceInActivationProgress(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1237
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->activateSimDevice(I)V

    .line 1238
    const/4 v2, 0x0

    .line 1241
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "own_ready_status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    new-instance v3, Landroid/database/MatrixCursor;

    const-string/jumbo v4, "ready_status"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v1, v3

    .line 1243
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1244
    return-object v1
.end method

.method private getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 979
    const-string v0, "device_uid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "deviceUid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 983
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    const-string v0, "dummy.txt.txt"

    .line 987
    :cond_1
    return-object v0
.end method

.method private getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "expectedType"    # Ljava/lang/String;
    .param p3, "resourceId"    # Ljava/lang/Integer;

    .line 1555
    const/4 v0, 0x0

    if-eqz p3, :cond_2

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1560
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    .line 1561
    .local v1, "resourceEntryName":Ljava/lang/String;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "resourceTypeName":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1563
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") is of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " but "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is required."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    return-object v0

    .line 1568
    :cond_1
    return-object v1

    .line 1569
    .end local v1    # "resourceEntryName":Ljava/lang/String;
    .end local v2    # "resourceTypeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1570
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    return-object v0

    .line 1556
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private handleVoWiFiToggleOffEvent(I)V
    .locals 5
    .param p1, "slotid"    # I

    .line 1345
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1346
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1351
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xdd

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1352
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1353
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "SLOT_ID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1354
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1355
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 1356
    :catch_0
    move-exception v1

    .line 1357
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVoWiFiToggleOffEvent: failed to toggle off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private handleVoWiFiToggleOnEvent(I)V
    .locals 5
    .param p1, "slotid"    # I

    .line 1328
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "deviceUid":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const-string v2, "activate_after_oos"

    const-string v3, "completed"

    invoke-static {v1, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1334
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xdc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1335
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1336
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "SLOT_ID"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1337
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1338
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 1339
    :catch_0
    move-exception v1

    .line 1340
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleVoWiFiToggleOnEvent: failed to toggle on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private insertDeviceConfig(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 742
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 743
    const-wide/16 v1, -0x1

    .line 745
    .local v1, "rowId":J
    :try_start_0
    const-string v3, "device_config"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v1, v3

    .line 746
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    goto :goto_1

    .line 750
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 747
    :catch_0
    move-exception v3

    .line 748
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into device_config table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 752
    :goto_1
    return-wide v1

    .line 750
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 751
    throw v3
.end method

.method private insertIntoAccounts(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 678
    const-wide/16 v0, -0x1

    .line 679
    .local v0, "rowId":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 680
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 682
    :try_start_0
    const-string v3, "accounts"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v0, v3

    .line 683
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    goto :goto_1

    .line 687
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 684
    :catch_0
    move-exception v3

    .line 685
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into DEVICES table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 689
    :goto_1
    return-wide v0

    .line 687
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 688
    throw v3
.end method

.method private insertIntoDevices(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 663
    const-wide/16 v0, -0x1

    .line 664
    .local v0, "rowId":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 665
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 667
    :try_start_0
    const-string v3, "devices"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v0, v3

    .line 668
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 673
    goto :goto_1

    .line 672
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 669
    :catch_0
    move-exception v3

    .line 670
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into DEVICES table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 674
    :goto_1
    return-wide v0

    .line 672
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 673
    throw v3
.end method

.method private insertIntoGcmTokens(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 709
    const-wide/16 v0, -0x1

    .line 710
    .local v0, "rowId":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 711
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 713
    :try_start_0
    const-string v3, "gcm_tokens"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v0, v3

    .line 714
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 719
    goto :goto_1

    .line 718
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 715
    :catch_0
    move-exception v3

    .line 716
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into GCM Tokens table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 720
    :goto_1
    return-wide v0

    .line 718
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 719
    throw v3
.end method

.method private insertIntoLines(Landroid/content/ContentValues;)J
    .locals 17
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 621
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "icon"

    const-string v4, "line_res_package"

    const-string v5, "color"

    const-wide/16 v6, -0x1

    .line 622
    .local v6, "lineId":J
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 623
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 625
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 626
    .local v9, "resPackage":Ljava/lang/String;
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v10, v0

    .line 627
    .local v10, "resources":Landroid/content/res/Resources;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    .line 630
    .local v11, "pm":Landroid/content/pm/PackageManager;
    :try_start_1
    invoke-virtual {v11, v9}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    .line 633
    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 632
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    sget-object v12, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Lines resource package not found: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 637
    .local v0, "colorResourceId":Ljava/lang/Integer;
    invoke-direct {v1, v10, v5, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    .local v11, "colorResource":Ljava/lang/String;
    const-string v12, " from values"

    if-nez v11, :cond_1

    .line 639
    :try_start_3
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 640
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Color resource is null, removing: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_1
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 643
    .local v5, "iconResourceId":Ljava/lang/Integer;
    const-string v13, "drawable"

    invoke-direct {v1, v10, v13, v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getResourceName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v13

    .line 644
    .local v13, "iconResource":Ljava/lang/String;
    if-nez v13, :cond_2

    .line 645
    sget-object v14, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "colorResourceId":Ljava/lang/Integer;
    .local v16, "colorResourceId":Ljava/lang/Integer;
    const-string v0, "Icon resource is null, removing: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 644
    .end local v16    # "colorResourceId":Ljava/lang/Integer;
    .restart local v0    # "colorResourceId":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v16, v0

    .line 648
    .end local v0    # "colorResourceId":Ljava/lang/Integer;
    .restart local v16    # "colorResourceId":Ljava/lang/Integer;
    :goto_1
    if-nez v11, :cond_3

    if-nez v13, :cond_3

    .line 649
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 650
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Both color and icon resource are null, removing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_3
    const-string v0, "lines"

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v6, v3

    .line 653
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v5    # "iconResourceId":Ljava/lang/Integer;
    .end local v9    # "resPackage":Ljava/lang/String;
    .end local v10    # "resources":Landroid/content/res/Resources;
    .end local v11    # "colorResource":Ljava/lang/String;
    .end local v13    # "iconResource":Ljava/lang/String;
    .end local v16    # "colorResourceId":Ljava/lang/Integer;
    goto :goto_2

    .line 657
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 654
    :catch_1
    move-exception v0

    .line 655
    .local v0, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_4
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not insert into LINES:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 657
    .end local v0    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_2
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    nop

    .line 659
    return-wide v6

    .line 657
    :goto_3
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    throw v0
.end method

.method private insertIntoNsdsConfig(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 777
    const-wide/16 v0, -0x1

    .line 778
    .local v0, "rowId":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 779
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 781
    :try_start_0
    const-string v3, "nsds_configs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v0, v3

    .line 782
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 787
    goto :goto_1

    .line 786
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 783
    :catch_0
    move-exception v3

    .line 784
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into nsds_configs table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 788
    :goto_1
    return-wide v0

    .line 786
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 787
    throw v3
.end method

.method private insertIntoServices(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 694
    const-wide/16 v0, -0x1

    .line 695
    .local v0, "rowId":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 696
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 698
    :try_start_0
    const-string/jumbo v3, "services"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v0, v3

    .line 699
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 704
    goto :goto_1

    .line 703
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 700
    :catch_0
    move-exception v3

    .line 701
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into SERVICES table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 705
    :goto_1
    return-wide v0

    .line 703
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 704
    throw v3
.end method

.method private insertIntoSimSwapNsdsConfig(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 792
    const-wide/16 v0, -0x1

    .line 793
    .local v0, "rowId":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 794
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 796
    :try_start_0
    const-string/jumbo v3, "sim_swap_nsds_configs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v0, v3

    .line 797
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    :goto_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    goto :goto_1

    .line 801
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 798
    :catch_0
    move-exception v3

    .line 799
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not insert into nsds_configs table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 803
    :goto_1
    return-wide v0

    .line 801
    :goto_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 802
    throw v3
.end method

.method private insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "selectionArgs"    # [Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;

    .line 1542
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 1543
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v0

    return-object v1

    .line 1545
    :cond_0
    array-length v2, p1

    add-int/2addr v2, v1

    .line 1546
    .local v2, "newLength":I
    new-array v3, v2, [Ljava/lang/String;

    .line 1547
    .local v3, "newSelectionArgs":[Ljava/lang/String;
    aput-object p2, v3, v0

    .line 1548
    array-length v4, p1

    invoke-static {p1, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1549
    return-object v3
.end method

.method private queryInternalWithService(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 991
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryInternalWithService: uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 993
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "query: NSDS service is not connected"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    const/4 v0, 0x0

    return-object v0

    .line 998
    :cond_0
    const/4 v0, 0x0

    .line 999
    .local v0, "slotid":I
    const-string/jumbo v1, "slot"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1000
    .local v1, "slotStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1001
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1004
    :cond_1
    const/4 v2, 0x0

    .line 1005
    .local v2, "cursor":Landroid/database/Cursor;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x1c

    if-eq v3, v4, :cond_3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 1010
    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceOwnReadyStatus(I)Landroid/database/Cursor;

    move-result-object v2

    .line 1011
    goto :goto_0

    .line 1007
    :cond_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceOwnActivationStatus(I)Landroid/database/Cursor;

    move-result-object v2

    .line 1008
    nop

    .line 1016
    :goto_0
    return-object v2
.end method

.method private removeServicesFromLine(Landroid/net/Uri;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1473
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1474
    .local v0, "deviceId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1476
    .local v1, "lineId":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->deleteFromServices(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1477
    .local v2, "totalDeletes":I
    if-nez v2, :cond_0

    .line 1478
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete services for device Id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    :cond_0
    return v2
.end method

.method private static renameDeviceAccountIdColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 478
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "renameDeviceAccountIdColumn()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string v0, "devices"

    .line 481
    .local v0, "tableName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "tempTableName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " RENAME TO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 483
    const-string v2, "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_uid TEXT NOT NULL,device_account_id INTEGER REFERENCES accounts(_id) NOT NULL,device_name TEXT NOT NULL,is_primary INTEGER DEFAULT 0,device_type INTEGER DEFAULT 0,is_local INTEGER DEFAULT 0, UNIQUE(device_account_id,device_uid));"

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " select * from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method private retrieveAkaToken(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1400
    :try_start_0
    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1401
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1402
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x31

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1403
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1404
    .local v2, "data":Landroid/os/Bundle;
    const-string v3, "IMSI"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const-string v3, "EVENT_TYPE"

    const/16 v4, 0x13

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    const-string v3, "RETRY_COUNT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1407
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1408
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1411
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieveAkaToken: failed to retrieve aka"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private setDevicePrimary(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1362
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1363
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "is_primary"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1364
    .local v2, "isPrimary":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1365
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Can not update isPrimary since Query parameter:is_primary is null or empty"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 1370
    .local v3, "selectionArgs":[Ljava/lang/String;
    const-string v4, "devices"

    const-string v5, "_id = ?"

    invoke-virtual {p1, v4, v0, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1371
    .local v4, "numRows":I
    if-ne v4, v1, :cond_1

    .line 1372
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "setDevicePrimary is successful:"

    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->broadcastPrimaryDeviceSettingChanged(Ljava/lang/String;)V

    .line 1376
    :cond_1
    return v4
.end method

.method private updateCabStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "status"    # I

    .line 1434
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1435
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "cab_status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1436
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1437
    .local v1, "lineId":Ljava/lang/String;
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 1438
    .local v2, "selectionArgs":[Ljava/lang/String;
    const-string v3, "lines"

    const-string v4, "lines._id = ?"

    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 1439
    .local v3, "numRows":I
    if-lez v3, :cond_0

    .line 1440
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCabStatus: cab status successfully updated for lineId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_0
    return v3
.end method

.method private updateDeviceConfig(Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 763
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 764
    const/4 v1, 0x0

    .line 766
    .local v1, "numRows":I
    :try_start_0
    const-string v2, "device_config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 767
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    goto :goto_1

    .line 771
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 768
    :catch_0
    move-exception v2

    .line 769
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not update connectivity_parameters table:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_0

    .line 773
    :goto_1
    return v1

    .line 771
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    throw v2
.end method

.method private updateE911Address(I)V
    .locals 4
    .param p1, "slotid"    # I

    .line 1281
    :try_start_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1282
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1283
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1284
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "SLOT_ID"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1285
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1286
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "data":Landroid/os/Bundle;
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "openLoginPage: failed to open login page"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateEntitlementUrl(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1380
    const-string v0, "entitlement_url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1381
    .local v0, "url":Ljava/lang/String;
    const-string v1, "imsi"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1384
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1385
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0xd4

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1386
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1387
    .local v3, "bundle":Landroid/os/Bundle;
    const-string v4, "URL"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1389
    const-string v4, "IMSI"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    :cond_0
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1392
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    invoke-virtual {v4, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 1393
    :catch_0
    move-exception v2

    .line 1394
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateEntitlementUrl: failed to request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private updateInternalWithService(Landroid/net/Uri;)I
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1125
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInternalWithService: uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mNsdsService:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1127
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "update: NSDS service is not connected"

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    return v1

    .line 1132
    :cond_0
    const/4 v0, 0x0

    .line 1133
    .local v0, "slotId":I
    const-string/jumbo v2, "slot"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1134
    .local v2, "slotStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1135
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1139
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "deviceUid":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1141
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "SimSwap process is in progress. Ignore operations now"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    return v1

    .line 1145
    :cond_2
    const/4 v4, 0x0

    .line 1146
    .local v4, "numRows":I
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_5

    const/16 v6, 0x49

    if-eq v5, v6, :cond_4

    const/16 v6, 0x50

    if-eq v5, v6, :cond_3

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 1172
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->handleVoWiFiToggleOffEvent(I)V

    .line 1173
    goto :goto_0

    .line 1169
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->handleVoWiFiToggleOnEvent(I)V

    .line 1170
    goto :goto_0

    .line 1163
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->deactivateSimDevice(Landroid/net/Uri;)V

    .line 1164
    goto :goto_0

    .line 1160
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->activateSimDevice(I)V

    .line 1161
    goto :goto_0

    .line 1157
    :pswitch_4
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateServicesStatusForLine(Landroid/net/Uri;Z)I

    move-result v4

    .line 1158
    goto :goto_0

    .line 1154
    :pswitch_5
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateServicesStatusForLine(Landroid/net/Uri;Z)I

    move-result v4

    .line 1155
    goto :goto_0

    .line 1151
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->removeServicesFromLine(Landroid/net/Uri;)I

    move-result v4

    .line 1152
    goto :goto_0

    .line 1148
    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->addServicesToLine(Landroid/net/Uri;)J

    .line 1149
    goto :goto_0

    .line 1178
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->retrieveAkaToken(Landroid/net/Uri;)V

    .line 1179
    goto :goto_0

    .line 1175
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateEntitlementUrl(Landroid/net/Uri;)V

    .line 1176
    goto :goto_0

    .line 1166
    :cond_5
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateE911Address(I)V

    .line 1167
    nop

    .line 1184
    :goto_0
    return v4

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1e
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateServicesStatusForLine(Landroid/net/Uri;Z)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "activate"    # Z

    .line 1484
    const/4 v0, 0x0

    .line 1485
    .local v0, "status":I
    if-eqz p2, :cond_0

    .line 1486
    const/4 v0, 0x1

    .line 1488
    :cond_0
    const/4 v1, 0x0

    .line 1489
    .local v1, "totalUpdates":I
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1490
    .local v2, "deviceId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1491
    .local v3, "lineId":Ljava/lang/String;
    const-string/jumbo v4, "service_ids"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1492
    .local v4, "strServiceIds":Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1493
    .local v5, "serviceIds":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 1494
    .local v8, "serviceId":Ljava/lang/String;
    invoke-direct {p0, v2, v3, v8, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateStatusInServices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    .line 1495
    .local v9, "numRows":I
    add-int/2addr v1, v9

    .line 1493
    .end local v8    # "serviceId":Ljava/lang/String;
    .end local v9    # "numRows":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1498
    :cond_1
    if-nez v1, :cond_2

    .line 1499
    sget-object v6, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not add services:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to line Id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    :cond_2
    return v1
.end method

.method private updateStatusInServices(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "lineId"    # Ljava/lang/String;
    .param p3, "serviceId"    # Ljava/lang/String;
    .param p4, "status"    # I

    .line 1505
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1506
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 1507
    .local v1, "noRows":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1509
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1510
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "service_status"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1511
    const-string v3, "device_id= ? AND line_id= ? AND _id = ?"

    .line 1512
    .local v3, "whereClause":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    .line 1513
    .local v4, "whereArgs":[Ljava/lang/String;
    const-string/jumbo v5, "services"

    invoke-virtual {v0, v5, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move v1, v5

    .line 1514
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "values":Landroid/content/ContentValues;
    .end local v3    # "whereClause":Ljava/lang/String;
    .end local v4    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 1518
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 1515
    :catch_0
    move-exception v2

    .line 1516
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateStatusInServices: Could not update Services table:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    .end local v2    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1519
    nop

    .line 1521
    return v1

    .line 1518
    :goto_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1519
    throw v2
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .line 1576
    const/4 v0, 0x0

    .line 1577
    .local v0, "numInserted":I
    const/4 v1, 0x0

    .line 1579
    .local v1, "table":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 1581
    .local v2, "uriType":I
    const-string v3, "imsi"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, "imsi":Ljava/lang/String;
    const/16 v4, 0x28

    if-eq v2, v4, :cond_1

    const/16 v4, 0x47

    if-eq v2, v4, :cond_0

    .line 1590
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "None of the Uri\'s match for bulkInsert:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1587
    :cond_0
    const-string/jumbo v1, "sim_swap_nsds_configs"

    .line 1588
    goto :goto_0

    .line 1584
    :cond_1
    const-string v1, "nsds_configs"

    .line 1585
    nop

    .line 1593
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/internal/ims/entitlement/storagehelper/MigrationHelper;->checkMigrateDB(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1594
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ignoring nsds_config inserts since migration is not done yet"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    const/4 v4, -0x1

    return v4

    .line 1598
    :cond_2
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v4, :cond_7

    .line 1599
    invoke-virtual {v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1600
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1602
    :try_start_0
    const-string/jumbo v5, "sim_swap_nsds_configs"

    if-ne v1, v5, :cond_4

    .line 1603
    const-string v5, "DELETE FROM sim_swap_nsds_configs"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1604
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "INSERT INTO "

    if-eqz v5, :cond_3

    .line 1605
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " SELECT * from nsds_configs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    .line 1607
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " SELECT * from nsds_configs WHERE IMSI = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1609
    :goto_1
    const-string v5, "DELETE FROM sim_swap_services"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    const-string v5, "INSERT INTO sim_swap_services SELECT * from services"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1613
    :cond_4
    array-length v5, p2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_6

    aget-object v7, p2, v6

    .line 1614
    .local v7, "cv":Landroid/content/ContentValues;
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v8

    .line 1615
    .local v8, "newID":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_5

    .line 1613
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "newID":J
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1616
    .restart local v7    # "cv":Landroid/content/ContentValues;
    .restart local v8    # "newID":J
    :cond_5
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to insert row into "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .end local v0    # "numInserted":I
    .end local v1    # "table":Ljava/lang/String;
    .end local v2    # "uriType":I
    .end local v3    # "imsi":Ljava/lang/String;
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "values":[Landroid/content/ContentValues;
    throw v5

    .line 1619
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v8    # "newID":J
    .restart local v0    # "numInserted":I
    .restart local v1    # "table":Ljava/lang/String;
    .restart local v2    # "uriType":I
    .restart local v3    # "imsi":Ljava/lang/String;
    .restart local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "values":[Landroid/content/ContentValues;
    :cond_6
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1620
    array-length v5, p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    .line 1622
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1623
    nop

    .line 1625
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    goto :goto_3

    .line 1622
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1623
    throw v5

    .line 1627
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    :goto_3
    return v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 490
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    .line 492
    .local v0, "numRows":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 496
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 497
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 498
    const/4 v2, 0x1

    .line 500
    .local v2, "notify":Z
    :try_start_0
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    const/4 v4, 0x6

    const/4 v5, 0x1

    if-eq v3, v4, :cond_7

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_6

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_5

    const/16 v4, 0x47

    if-eq v3, v4, :cond_4

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_3

    const/16 v4, 0x27

    if-eq v3, v4, :cond_2

    const/16 v4, 0x28

    if-eq v3, v4, :cond_1

    .line 537
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "None of the Uri\'s match for insert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 528
    :cond_1
    const/4 v2, 0x0

    .line 529
    const-string v3, "nsds_configs"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 530
    goto/16 :goto_0

    .line 523
    :cond_2
    const/4 v2, 0x0

    .line 524
    const-string v3, "device_config"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 525
    goto :goto_0

    .line 508
    :cond_3
    const-string v3, "gcm_tokens"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 509
    goto :goto_0

    .line 533
    :cond_4
    const/4 v2, 0x0

    .line 534
    const-string/jumbo v3, "sim_swap_nsds_configs"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 535
    goto :goto_0

    .line 502
    :cond_5
    const-string v3, "accounts"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 503
    goto :goto_0

    .line 517
    :cond_6
    const-string v3, "device_id = ?"

    .line 518
    .local v3, "newSelection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    .line 519
    .local v4, "newSelectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "services"

    invoke-virtual {v1, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 520
    goto :goto_0

    .line 511
    .end local v3    # "newSelection":Ljava/lang/String;
    .end local v4    # "newSelectionArgs":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->deleteFromServices(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 512
    goto :goto_0

    .line 514
    :cond_8
    const-string v3, "devices"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 515
    goto :goto_0

    .line 505
    :cond_9
    const-string v3, "lines"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 506
    nop

    .line 539
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    goto :goto_2

    .line 543
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 540
    :catch_0
    move-exception v3

    .line 541
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not update LINES table:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_1

    .line 545
    :goto_2
    if-lez v0, :cond_a

    if-eqz v2, :cond_a

    .line 546
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 548
    :cond_a
    return v0

    .line 543
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 544
    throw v3

    .line 493
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "notify":Z
    :cond_b
    :goto_4
    return v0
.end method

.method public getDevicePushToken()Landroid/database/Cursor;
    .locals 6

    .line 1416
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, "deviceUid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/PushTokenHelper;->getPushToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    .local v1, "token":Ljava/lang/String;
    new-instance v2, Landroid/database/MatrixCursor;

    const-string v3, "device_push_token"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1419
    .local v2, "cursor":Landroid/database/MatrixCursor;
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 1421
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDevicePushToken: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1423
    return-object v2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 553
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 558
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 563
    :cond_0
    const/4 v0, 0x0

    .line 564
    .local v0, "retUri":Landroid/net/Uri;
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_8

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    const/4 v2, 0x6

    if-eq v1, v2, :cond_6

    const/16 v2, 0x9

    if-eq v1, v2, :cond_5

    const/16 v2, 0x47

    if-eq v1, v2, :cond_4

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_3

    const/16 v2, 0x27

    if-eq v1, v2, :cond_2

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    .line 590
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoNsdsConfig(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 591
    .local v1, "rowId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->buildNsdsConfigUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 592
    goto/16 :goto_0

    .line 586
    .end local v1    # "rowId":J
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertDeviceConfig(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 587
    .local v1, "deviceConfigRowId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$DeviceConfig;->buildDeviceConfigUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 588
    goto :goto_0

    .line 598
    .end local v1    # "deviceConfigRowId":J
    :cond_3
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoGcmTokens(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 599
    .local v1, "gcmTokensRowId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$GcmTokens;->buildGcmTokensUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 600
    goto :goto_0

    .line 594
    .end local v1    # "gcmTokensRowId":J
    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoSimSwapNsdsConfig(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 595
    .local v1, "rowIdSwap":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$SimSwapNsdsConfigs;->buildNsdsConfigUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 596
    goto :goto_0

    .line 582
    .end local v1    # "rowIdSwap":J
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoAccounts(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 583
    .local v1, "accountRowId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Accounts;->buildAccountUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 584
    goto :goto_0

    .line 574
    .end local v1    # "accountRowId":J
    :cond_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 575
    .local v1, "paramDeviceId":J
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 576
    .local v3, "paramLineId":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "device_id"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 577
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "line_id"

    invoke-virtual {p2, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 578
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoServices(Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 579
    .local v5, "serviceRowId":J
    invoke-static {v5, v6}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Services;->buildServiceUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 580
    goto :goto_0

    .line 570
    .end local v1    # "paramDeviceId":J
    .end local v3    # "paramLineId":J
    .end local v5    # "serviceRowId":J
    :cond_7
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoDevices(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 571
    .local v1, "deviceRowId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Devices;->buildDeviceUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 572
    goto :goto_0

    .line 566
    .end local v1    # "deviceRowId":J
    :cond_8
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertIntoLines(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 567
    .local v1, "lineId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildLineUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 568
    nop

    .line 604
    .end local v1    # "lineId":J
    :goto_0
    if-eqz v0, :cond_9

    .line 605
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 607
    :cond_9
    return-object v0

    .line 560
    .end local v0    # "retUri":Landroid/net/Uri;
    :cond_a
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 611
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 612
    return-void
.end method

.method public onCreate()Z
    .locals 1

    .line 808
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    .line 809
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v2, :cond_f

    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 856
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 857
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v14, v2

    .line 858
    .local v14, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v12, p3

    .line 859
    .local v12, "newSelection":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const-string v3, "lines._id"

    const-string v4, "lines, services,devices"

    const-string v5, "_id"

    if-eqz v2, :cond_d

    const/4 v6, 0x2

    const-string v7, "devices"

    if-eq v2, v6, :cond_c

    const/16 v6, 0x1d

    const-string/jumbo v8, "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND status = ?"

    const-string v9, "1"

    if-eq v2, v6, :cond_b

    const/16 v6, 0x43

    if-eq v2, v6, :cond_a

    const/16 v6, 0x4a

    if-eq v2, v6, :cond_9

    const/16 v6, 0x4d

    const-string v13, "lines LEFT OUTER JOIN services on services.line_id = lines._id "

    if-eq v2, v6, :cond_7

    const/16 v6, 0x27

    if-eq v2, v6, :cond_6

    const/16 v6, 0x28

    if-eq v2, v6, :cond_5

    const/16 v6, 0x3e

    if-eq v2, v6, :cond_4

    const/16 v6, 0x3f

    move-object/from16 v16, v12

    .end local v12    # "newSelection":Ljava/lang/String;
    .local v16, "newSelection":Ljava/lang/String;
    const-string/jumbo v12, "services"

    if-eq v2, v6, :cond_3

    const-string v6, "accounts"

    move-object/from16 v17, v12

    const/4 v12, 0x1

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    .line 972
    invoke-direct {v0, v15, v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->queryInternalWithService(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object v4, v14

    move-object/from16 v19, v15

    move-object/from16 v12, v16

    .local v2, "cursor":Landroid/database/Cursor;
    goto/16 :goto_5

    .line 935
    .end local v2    # "cursor":Landroid/database/Cursor;
    :pswitch_0
    const-string/jumbo v2, "sim_swap_services"

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 936
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 937
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v14

    move-object/from16 v19, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 931
    .end local v2    # "cursor":Landroid/database/Cursor;
    :pswitch_1
    const-string/jumbo v2, "sim_swap_nsds_configs"

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 932
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 933
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v14

    move-object/from16 v19, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 906
    .end local v2    # "cursor":Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {v14, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v14, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 908
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 909
    const-string v2, "0"

    invoke-direct {v0, v11, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 910
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 911
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .local v11, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 912
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v4, v14

    move-object/from16 v19, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 939
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :pswitch_3
    invoke-virtual {v14, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 941
    const-string v2, " (lines.account_id != 0 OR is_native = 1)"

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 942
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 943
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 944
    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .end local v16    # "newSelection":Ljava/lang/String;
    .local v2, "newSelection":Ljava/lang/String;
    goto :goto_0

    .line 946
    .end local v2    # "newSelection":Ljava/lang/String;
    .restart local v16    # "newSelection":Ljava/lang/String;
    :cond_1
    move-object/from16 v12, v16

    .end local v16    # "newSelection":Ljava/lang/String;
    .restart local v12    # "newSelection":Ljava/lang/String;
    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 947
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v4, v14

    move-object/from16 v19, v15

    goto/16 :goto_5

    .line 859
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v12    # "newSelection":Ljava/lang/String;
    .restart local v16    # "newSelection":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v19, v15

    move-object v15, v14

    goto/16 :goto_3

    .line 872
    :pswitch_5
    invoke-virtual {v14, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 873
    const-string v2, "devices._id IN(SELECT services.device_id from lines, devices, services  where device_id = devices._id AND line_id = lines._id AND status = 1 AND line_id = ?)"

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v11, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 875
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 876
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v14

    move-object/from16 v19, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 914
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual {v14, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 915
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 916
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v14

    move-object/from16 v19, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 888
    .end local v2    # "cursor":Landroid/database/Cursor;
    :pswitch_7
    invoke-virtual {v14, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 889
    const-string/jumbo v2, "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1)) AND status = ?"

    invoke-virtual {v14, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 890
    invoke-direct {v0, v11, v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 891
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 893
    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .end local v16    # "newSelection":Ljava/lang/String;
    .local v3, "newSelection":Ljava/lang/String;
    goto :goto_1

    .line 895
    .end local v3    # "newSelection":Ljava/lang/String;
    .restart local v16    # "newSelection":Ljava/lang/String;
    :cond_2
    move-object/from16 v3, v16

    .end local v16    # "newSelection":Ljava/lang/String;
    .restart local v3    # "newSelection":Ljava/lang/String;
    :goto_1
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v14

    move-object v12, v15

    move-object/from16 v13, p2

    move-object v9, v14

    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v9, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v14, v3

    move-object/from16 v19, v15

    .end local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .local v19, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object v15, v2

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 896
    .local v4, "cursor":Landroid/database/Cursor;
    move-object v11, v2

    move-object v12, v3

    move-object v2, v4

    move-object v4, v9

    goto/16 :goto_5

    .line 918
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "newSelection":Ljava/lang/String;
    .end local v4    # "cursor":Landroid/database/Cursor;
    .end local v9    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :pswitch_8
    move-object v9, v14

    move-object/from16 v19, v15

    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v9    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v9, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 919
    const-string v2, "is_active = 1"

    invoke-virtual {v9, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 920
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object v15, v9

    .end local v9    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 921
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 882
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_9
    move-object/from16 v19, v15

    move-object v15, v14

    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v2, v17

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 883
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "line_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 883
    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 885
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 886
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 961
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    move-object v2, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 962
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 963
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    move-object/from16 v12, v16

    goto/16 :goto_5

    .line 958
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceConfigElement(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 959
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 927
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_5
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "nsds_configs"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 928
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 929
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 923
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_6
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 925
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 949
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_7
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v15, v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 951
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 952
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 953
    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    move-object v12, v2

    .end local v16    # "newSelection":Ljava/lang/String;
    .local v2, "newSelection":Ljava/lang/String;
    goto :goto_2

    .line 955
    .end local v2    # "newSelection":Ljava/lang/String;
    .restart local v16    # "newSelection":Ljava/lang/String;
    :cond_8
    move-object/from16 v12, v16

    .end local v16    # "newSelection":Ljava/lang/String;
    .restart local v12    # "newSelection":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object v5, v12

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 956
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 965
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_9
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "gcm_tokens"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 966
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 967
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 969
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_a
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDevicePushToken()Landroid/database/Cursor;

    move-result-object v2

    .line 970
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 898
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_b
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v15, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 899
    invoke-virtual {v15, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 900
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 901
    invoke-direct {v0, v11, v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 902
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 903
    .end local v2    # "selectionArgs":[Ljava/lang/String;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 904
    .local v2, "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto/16 :goto_5

    .line 878
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :cond_c
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v15, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 879
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v15

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 880
    .restart local v2    # "cursor":Landroid/database/Cursor;
    move-object v4, v15

    goto :goto_5

    .line 859
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v16    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v12    # "newSelection":Ljava/lang/String;
    .restart local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_d
    move-object/from16 v16, v12

    move-object/from16 v19, v15

    move-object v15, v14

    .line 862
    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v14    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v15, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v16    # "newSelection":Ljava/lang/String;
    .restart local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    invoke-virtual {v15, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 863
    const-string/jumbo v2, "services.line_id = lines._id AND services.device_id = devices._id AND lines.account_id != -1 AND devices.device_uid = ? AND  (lines.account_id = 0 OR lines.account_id = (SELECT _id from accounts where is_active = 1))"

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 864
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sLineWithServicesProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v15, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 865
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->getDeviceUidFromQueryParam(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 866
    .end local p4    # "selectionArgs":[Ljava/lang/String;
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 867
    invoke-virtual {v10, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .end local v16    # "newSelection":Ljava/lang/String;
    .restart local v3    # "newSelection":Ljava/lang/String;
    goto :goto_4

    .line 869
    .end local v3    # "newSelection":Ljava/lang/String;
    .restart local v16    # "newSelection":Ljava/lang/String;
    :cond_e
    move-object/from16 v3, v16

    .end local v16    # "newSelection":Ljava/lang/String;
    .restart local v3    # "newSelection":Ljava/lang/String;
    :goto_4
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v11, v15

    move-object/from16 v12, v19

    move-object/from16 v13, p2

    move-object v14, v3

    move-object v4, v15

    .end local v15    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .local v4, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    move-object v15, v2

    move-object/from16 v18, p5

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 870
    .local v5, "cursor":Landroid/database/Cursor;
    move-object v11, v2

    move-object v12, v3

    move-object v2, v5

    .line 975
    .end local v3    # "newSelection":Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .local v2, "cursor":Landroid/database/Cursor;
    .restart local v11    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "newSelection":Ljava/lang/String;
    :goto_5
    return-object v2

    .line 853
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v4    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v11    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "newSelection":Ljava/lang/String;
    .end local v19    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p4    # "selectionArgs":[Ljava/lang/String;
    :cond_f
    :goto_6
    const/4 v2, 0x0

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x46
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 1021
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const/4 v0, 0x0

    .line 1024
    .local v0, "numRows":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x52

    if-ne v1, v2, :cond_0

    .line 1025
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Binding to NSDSMultiSimService"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->connectToNSDSMultiSimService()V

    .line 1027
    return v0

    .line 1030
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x51

    if-ne v1, v2, :cond_2

    .line 1031
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reconnect DB for DatabaseHelper null"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v1, :cond_1

    .line 1033
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reconnect DB after closing the previous DB"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->close()V

    .line 1036
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    .line 1037
    return v0

    .line 1040
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_5

    .line 1044
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1046
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    if-nez v2, :cond_4

    .line 1047
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    goto :goto_0

    .line 1049
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1053
    :goto_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1054
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v3, v5, :cond_a

    const/16 v4, 0x9

    const-string v5, "accounts"

    if-eq v3, v4, :cond_9

    const/16 v4, 0x1a

    if-eq v3, v4, :cond_8

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_7

    const/16 v4, 0x27

    if-eq v3, v4, :cond_6

    const/16 v4, 0x28

    if-eq v3, v4, :cond_5

    packed-switch v3, :pswitch_data_0

    .line 1109
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateInternalWithService(Landroid/net/Uri;)I

    move-result v3

    move v0, v3

    goto/16 :goto_1

    .line 1103
    :pswitch_0
    invoke-direct {p0, v1, p1, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateCabStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)I

    move-result v3

    move v0, v3

    .line 1104
    goto/16 :goto_1

    .line 1100
    :pswitch_1
    invoke-direct {p0, v1, p1, v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateCabStatus(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)I

    move-result v3

    move v0, v3

    .line 1101
    goto/16 :goto_1

    .line 1081
    :pswitch_2
    const-string v3, "account_id"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1082
    .local v3, "queryParamAccountId":Ljava/lang/String;
    invoke-direct {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->disableActiveAccount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 1083
    goto/16 :goto_1

    .line 1071
    .end local v3    # "queryParamAccountId":Ljava/lang/String;
    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1072
    .local v3, "sb1":Ljava/lang/StringBuilder;
    const-string v4, "_id = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-direct {p0, v3, p3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->appendSelection(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1074
    .local v4, "accountSelection":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, p4, v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->insertSelectionArg([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object p4, v6

    .line 1075
    invoke-virtual {v1, v5, p2, v4, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 1076
    if-gtz v0, :cond_d

    .line 1077
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Updating the account failed"

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1098
    .end local v3    # "sb1":Ljava/lang/StringBuilder;
    .end local v4    # "accountSelection":Ljava/lang/String;
    :cond_5
    goto/16 :goto_1

    .line 1094
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->updateDeviceConfig(Landroid/content/ContentValues;)I

    move-result v3

    move v0, v3

    .line 1095
    goto/16 :goto_1

    .line 1062
    :cond_7
    const-string v3, "gcm_tokens"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 1063
    goto/16 :goto_1

    .line 1106
    :cond_8
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->setDevicePrimary(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;)I

    move-result v3

    move v0, v3

    .line 1107
    goto/16 :goto_1

    .line 1068
    :cond_9
    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 1069
    goto/16 :goto_1

    .line 1085
    :cond_a
    const-string v3, "device_id = ? AND line_id = ?"

    .line 1086
    .local v3, "updateSelection":Ljava/lang/String;
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v4, v7

    .line 1087
    .local v4, "updateSelectionArgs":[Ljava/lang/String;
    const-string/jumbo v5, "services"

    invoke-virtual {v1, v5, p2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move v0, v5

    .line 1088
    if-lez v0, :cond_d

    .line 1089
    sget-object v5, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Updated Services table for deviceId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " and lineId :"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1089
    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1065
    .end local v3    # "updateSelection":Ljava/lang/String;
    .end local v4    # "updateSelectionArgs":[Ljava/lang/String;
    :cond_b
    const-string v3, "devices"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 1066
    goto :goto_1

    .line 1056
    :cond_c
    const-string v3, "lines"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    move v0, v3

    .line 1057
    if-gtz v0, :cond_d

    .line 1058
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Updating lines failed"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_d
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1115
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1116
    goto :goto_3

    .line 1115
    :catchall_0
    move-exception v2

    goto :goto_4

    .line 1112
    :catch_0
    move-exception v2

    .line 1113
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_2
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not update table:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_2

    .line 1118
    :goto_3
    if-eqz v0, :cond_e

    .line 1119
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->notifyChange(Landroid/net/Uri;)V

    .line 1121
    :cond_e
    return v0

    .line 1115
    :goto_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1116
    throw v2

    .line 1041
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_f
    :goto_5
    return v0

    :pswitch_data_0
    .packed-switch 0x2f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
