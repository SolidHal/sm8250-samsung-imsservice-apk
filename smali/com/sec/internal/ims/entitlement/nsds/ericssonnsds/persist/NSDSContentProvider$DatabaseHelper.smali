.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "NSDSContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 438
    const-string v0, "ericsson_nsds.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 439
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 443
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DatabaseHelper onCreate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v0, "PRAGMA writable_schema = 1; DELETE FROM sqlite_master WHERE TYPE IN (\'table\', \'index\'); PRAGMA writable_schema = 0; "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 445
    const-string v0, "CREATE TABLE IF NOT EXISTS lines(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id INTEGER REFERENCES accounts(_id) NOT NULL,msisdn TEXT NOT NULL,friendly_name TEXT NOT NULL,status INTEGER DEFAULT 0,line_res_package TEXT, icon INTEGER,color INTEGER,type TEXT DEFAULT regular,is_owner INTEGER DEFAULT 1,service_attributes TEXT, is_device_default INTEGER DEFAULT 0, location_status INTEGER , tc_status INTEGER , e911_address_id TEXT, e911_aid_expiration TEXT, e911_server_data TEXT, e911_server_url TEXT, cab_status INTEGER DEFAULT 0, reg_status INTEGER DEFAULT 0, ring_tone TEXT, UNIQUE( account_id,msisdn));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 446
    const-string v0, "CREATE TABLE IF NOT EXISTS gcm_tokens(_id INTEGER PRIMARY KEY AUTOINCREMENT,sender_id TEXT NOT NULL,gcm_token TEXT NOT NULL,protocol_to_server TEXT, device_uid TEXT, UNIQUE( sender_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 447
    const-string v0, "CREATE TABLE IF NOT EXISTS devices(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_uid TEXT NOT NULL,device_account_id INTEGER REFERENCES accounts(_id) NOT NULL,device_name TEXT NOT NULL,is_primary INTEGER DEFAULT 0,device_type INTEGER DEFAULT 0,is_local INTEGER DEFAULT 0, UNIQUE(device_account_id,device_uid));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 448
    const-string v0, "CREATE TABLE IF NOT EXISTS accounts(_id INTEGER PRIMARY KEY AUTOINCREMENT,account_id TEXT NOT NULL,device_uid TEXT, email TEXT,access_token TEXT,is_active INTEGER DEFAULT 0,is_temporary INTEGER DEFAULT 0, UNIQUE(account_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 449
    const-string v0, "CREATE TABLE IF NOT EXISTS services(_id INTEGER PRIMARY KEY AUTOINCREMENT,line_id INTEGER REFERENCES lines(_id),device_id INTEGER REFERENCES devices(_id),is_native INTEGER DEFAULT 0,service_name TEXT,service_instance_id TEXT,expiration_time INTEGER DEFAULT 0,service_msisdn TEXT,is_owner INTEGER,msisdn_friendly_name TEXT,service_fingerprint TEXT DEFAULT NULL,service_instance_token TEXT, service_token_expire_time TEXT, provisioning_params_id INTEGER REFERENCES provisioning_parameters(_id),config_parameters TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 450
    const-string v0, "CREATE TABLE IF NOT EXISTS connectivity_parameters(_id INTEGER PRIMARY KEY AUTOINCREMENT,certificate TEXT,epdg_addresses TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v0, "CREATE TABLE IF NOT EXISTS connectivity_sevice_names(_id INTEGER PRIMARY KEY AUTOINCREMENT,connectivity_id INTEGER REFERENCES connectivity_parameters(_id) NOT NULL, service_name TEXT NOT NULL,client_id TEXT NOT NULL,package_name TEXT NOT NULL,appstore_url TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 452
    const-string v0, "CREATE TABLE IF NOT EXISTS provisioning_parameters(_id INTEGER PRIMARY KEY AUTOINCREMENT,apn TEXT NOT NULL,pcscf_address TEXT NOT NULL,sip_uri TEXT NOT NULL,impu TEXT NOT NULL,sip_username TEXT,sip_password TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 453
    const-string v0, "CREATE TABLE IF NOT EXISTS device_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,device_id TEXT NOT NULL, version TEXT, device_config TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 454
    const-string v0, "CREATE TABLE IF NOT EXISTS nsds_configs(_id INTEGER PRIMARY KEY AUTOINCREMENT,imsi TEXT, pname TEXT NOT NULL,pvalue TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 455
    const-string v0, "CREATE TABLE IF NOT EXISTS sim_swap_nsds_configs(_id INTEGER PRIMARY KEY AUTOINCREMENT,imsi TEXT NOT NULL, pname TEXT NOT NULL,pvalue TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 456
    const-string v0, "CREATE TABLE IF NOT EXISTS sim_swap_services(_id INTEGER PRIMARY KEY AUTOINCREMENT,line_id INTEGER REFERENCES lines(_id),device_id INTEGER REFERENCES devices(_id),is_native INTEGER ,service_name TEXT,service_instance_id TEXT,expiration_time INTEGER DEFAULT 0,service_msisdn TEXT,is_owner INTEGER,msisdn_friendly_name TEXT,service_fingerprint TEXT DEFAULT NULL,service_instance_token TEXT, service_token_expire_time TEXT, provisioning_params_id INTEGER REFERENCES provisioning_parameters(_id),config_parameters TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 473
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade: oldVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 461
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpgrade: oldVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newVersion "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 463
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/persist/NSDSContentProvider;->access$100(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 465
    :cond_0
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 466
    const-string v0, "DROP TABLE IF EXISTS pending_lines"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 467
    const-string v0, "DROP TABLE IF EXISTS access_steering"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 469
    :cond_1
    return-void
.end method
