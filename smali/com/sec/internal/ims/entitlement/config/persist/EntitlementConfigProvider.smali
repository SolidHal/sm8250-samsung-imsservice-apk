.class public Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;
.super Landroid/content/ContentProvider;
.source "EntitlementConfigProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final CREATE_DEVICE_CONFIG_TABLE:Ljava/lang/String; = "CREATE TABLE IF NOT EXISTS entitlement_config(_id INTEGER PRIMARY KEY AUTOINCREMENT,version TEXT, imsi TEXT NOT NULL, device_config TEXT,backup_version TEXT,validity TEXT,next_config_time TEXT,token TEXT,completed TEXT,tc_popup_user_accept TEXT);"

.field private static final DATABASE_NAME:Ljava/lang/String; = "entitlement_config.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DEFAULT_SIM_SLOT_IDX:I = 0x0

.field private static final DEVICE_CONFIG_TABLE:Ljava/lang/String; = "entitlement_config"

.field private static final ENTITLEMENT_FORCE_UPDATE_EXPIRATION_TIME:J = 0x493e0L

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.samsung.ims.entitlementconfig.provider"

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private configUpdateDate:Ljava/util/Date;

.field protected mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

.field protected mService:Landroid/os/Messenger;

.field private mSvcConn:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 38
    const-class v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 73
    const-string v1, "com.samsung.ims.entitlementconfig.provider"

    const-string v2, "config"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "config/xpath"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "config/jansky_config"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 76
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "config/rcs_config"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 77
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "config/force_update"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "config/entitlement_url"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 79
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string/jumbo v2, "reconnect_db"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "binding_service"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    .line 47
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;)Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;
    .param p1, "x1"    # Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    return-object p1
.end method

.method private declared-synchronized connectToEntitlementConfigService()V
    .locals 5

    monitor-enter p0

    .line 399
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "connectToEntitlementConfigService()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.config.EntitlementConfigService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$1;-><init>(Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mSvcConn:Landroid/content/ServiceConnection;

    .line 431
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mSvcConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return-void

    .line 398
    .end local v0    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getJanskyConfigXmlBlock()Landroid/database/Cursor;
    .locals 1

    .line 364
    const-string v0, "//janskyConfig"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "dbCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 331
    .local v1, "deviceConfigXml":Ljava/lang/String;
    const/4 v2, 0x0

    .line 333
    .local v2, "elementName":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "tag_name"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 334
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 335
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Empty tag name. Return null"

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    const/4 v3, 0x0

    .line 346
    if-eqz v0, :cond_0

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_0
    return-object v3

    .line 338
    :cond_1
    :try_start_1
    const-string v4, "device_config"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    .line 339
    .local v7, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v0, v4

    .line 340
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 341
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    .line 346
    .end local v7    # "projection":[Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 347
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 346
    :catchall_0
    move-exception v3

    goto :goto_4

    .line 343
    :catch_0
    move-exception v4

    .line 344
    .local v4, "sqe":Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SQL exception while parseDeviceConfig "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    .end local v4    # "sqe":Ljava/lang/Exception;
    if-eqz v0, :cond_3

    .line 347
    goto :goto_0

    .line 351
    :cond_3
    :goto_1
    new-instance v4, Landroid/database/MatrixCursor;

    const-string v5, "element_name"

    const-string v6, "element_value"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 352
    .local v4, "matrixCursor":Landroid/database/MatrixCursor;
    if-eqz v1, :cond_5

    .line 353
    invoke-static {v1, v2}, Lcom/sec/internal/ims/entitlement/util/ConfigElementExtractor;->getAllElements(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 354
    .local v5, "mapElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 355
    .local v7, "key":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v7, v8, v3

    const/4 v9, 0x1

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v8}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 356
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_2

    .line 357
    .end local v5    # "mapElements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    goto :goto_3

    .line 358
    :cond_5
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Device Config is null: "

    invoke-static {v3, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_3
    return-object v4

    .line 346
    .end local v4    # "matrixCursor":Landroid/database/MatrixCursor;
    :goto_4
    if-eqz v0, :cond_6

    .line 347
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_6
    throw v3
.end method

.method private getRcsConfigXmlBlock()Landroid/database/Cursor;
    .locals 1

    .line 368
    const-string v0, "//RCSConfig/wap-provisioningdoc|//wap-provisioningdoc"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getXmlConfigByTag(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "tagName"    # Ljava/lang/String;

    .line 372
    const/4 v0, 0x0

    .line 373
    .local v0, "dbCursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 375
    .local v1, "deviceConfigXml":Ljava/lang/String;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "device_config"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    .line 376
    .local v6, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    .line 377
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 383
    .end local v6    # "projection":[Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 384
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 383
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 380
    :catch_0
    move-exception v3

    .line 381
    .local v3, "sqe":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQL exception while parseDeviceConfig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    .end local v3    # "sqe":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 384
    goto :goto_0

    .line 388
    :cond_1
    :goto_1
    new-instance v3, Landroid/database/MatrixCursor;

    const-string/jumbo v4, "xml_config"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 389
    .local v3, "matrixCursor":Landroid/database/MatrixCursor;
    if-eqz v1, :cond_2

    .line 390
    invoke-static {v1, p1}, Lcom/sec/internal/ims/entitlement/util/CompleteXMLBlockExtractor;->getXmlBlockForElement(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 391
    .local v4, "configXml":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v2

    invoke-virtual {v3, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 392
    .end local v4    # "configXml":Ljava/lang/String;
    goto :goto_2

    .line 393
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Device Config is null: "

    invoke-static {v2, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :goto_2
    return-object v3

    .line 383
    .end local v3    # "matrixCursor":Landroid/database/MatrixCursor;
    :goto_3
    if-eqz v0, :cond_3

    .line 384
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 386
    :cond_3
    throw v2
.end method

.method private insertDeviceConfig(Landroid/content/ContentValues;)J
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 168
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 169
    const-wide/16 v1, -0x1

    .line 171
    .local v1, "rowId":J
    :try_start_0
    const-string v3, "entitlement_config"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    move-wide v1, v3

    .line 172
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    goto :goto_1

    .line 176
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

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

    .line 178
    :goto_1
    return-wide v1

    .line 176
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 177
    throw v3
.end method

.method private updateDeviceConfig(Landroid/content/ContentValues;)I
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 190
    const/4 v1, 0x0

    .line 192
    .local v1, "numRows":I
    :try_start_0
    const-string v2, "entitlement_config"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v1, v2

    .line 193
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :goto_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 198
    goto :goto_1

    .line 197
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

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

    .line 199
    :goto_1
    return v1

    .line 197
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 198
    throw v2
.end method

.method private updateEntitlementUrl(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .line 222
    const-string v0, "entitlement_url"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "url":Ljava/lang/String;
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 226
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc9

    iput v2, v1, Landroid/os/Message;->what:I

    .line 227
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 228
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v3, "URL"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 230
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateEntitlementUrl: failed to request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 108
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "numRows":I
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 115
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    const-string v2, "entitlement_config"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 121
    nop

    .line 125
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    goto :goto_2

    .line 129
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 126
    :catch_0
    move-exception v2

    .line 127
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not delete:"

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
    goto :goto_1

    .line 131
    :goto_2
    return v0

    .line 129
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 130
    throw v2

    .line 111
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_2
    :goto_4
    return v0
.end method

.method public forceConfigUpdate()V
    .locals 6

    .line 203
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "forceConfigUpdate()"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-wide/32 v0, 0x493e0

    .line 207
    .local v0, "millis":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 208
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 210
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->configUpdateDate:Ljava/util/Date;

    .line 211
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 212
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x6c

    iput v3, v2, Landroid/os/Message;->what:I

    .line 213
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 214
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 215
    :catch_0
    move-exception v2

    .line 216
    .local v2, "re":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not force update config"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v2    # "re":Ljava/lang/Exception;
    :cond_1
    :goto_0
    return-void
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 141
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 146
    :cond_0
    const/4 v0, 0x0

    .line 147
    .local v0, "retUri":Landroid/net/Uri;
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 149
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->insertDeviceConfig(Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 150
    .local v1, "deviceConfigRowId":J
    invoke-static {v1, v2}, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->buildDeviceConfigUri(J)Landroid/net/Uri;

    move-result-object v0

    .line 151
    nop

    .line 155
    .end local v1    # "deviceConfigRowId":J
    :goto_0
    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    .line 158
    :cond_2
    return-object v0

    .line 143
    .end local v0    # "retUri":Landroid/net/Uri;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyChange(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 163
    return-void
.end method

.method public onCreate()Z
    .locals 2

    .line 238
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 239
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    .line 240
    const/4 v1, 0x1

    return v1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 245
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 250
    :cond_0
    const/4 v2, 0x0

    .line 251
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 252
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    move-object v12, v4

    .line 253
    .local v12, "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v4, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_2

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 265
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getRcsConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v2

    .line 266
    goto :goto_0

    .line 259
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getNsdsElementsWithXPath(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    .line 260
    goto :goto_0

    .line 262
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->getJanskyConfigXmlBlock()Landroid/database/Cursor;

    move-result-object v2

    .line 263
    goto :goto_0

    .line 255
    :cond_4
    const-string v4, "entitlement_config"

    invoke-virtual {v12, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 256
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v12

    move-object v5, v3

    move-object v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 257
    nop

    .line 270
    :goto_0
    return-object v2

    .line 247
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "queryBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    :cond_5
    :goto_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 275
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, "numRows":I
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 279
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Binding to EntitlementConfigService"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->connectToEntitlementConfigService()V

    .line 281
    return v0

    .line 284
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 285
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reconnect DB for DatabaseHelper"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz v1, :cond_1

    .line 287
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Reconnect DB after closing the previous DB"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;->close()V

    .line 290
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    .line 291
    return v0

    .line 294
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    .line 298
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->mDatabaseHelper:Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 299
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 301
    :try_start_0
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x6

    if-eq v2, v3, :cond_4

    goto :goto_0

    .line 309
    :cond_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateEntitlementUrl(Landroid/net/Uri;)V

    .line 310
    goto :goto_0

    .line 306
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->forceConfigUpdate()V

    .line 307
    goto :goto_0

    .line 303
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->updateDeviceConfig(Landroid/content/ContentValues;)I

    move-result v2

    move v0, v2

    .line 304
    nop

    .line 314
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 319
    goto :goto_2

    .line 318
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 315
    :catch_0
    move-exception v2

    .line 316
    .local v2, "sqe":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v3, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->LOG_TAG:Ljava/lang/String;

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "sqe":Landroid/database/sqlite/SQLiteException;
    goto :goto_1

    .line 321
    :goto_2
    if-eqz v0, :cond_7

    .line 322
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/config/persist/EntitlementConfigProvider;->notifyChange(Landroid/net/Uri;)V

    .line 324
    :cond_7
    return v0

    .line 318
    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 319
    throw v2

    .line 295
    .end local v1    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_8
    :goto_4
    return v0
.end method
