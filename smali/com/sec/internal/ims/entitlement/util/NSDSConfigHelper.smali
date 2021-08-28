.class public Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;
.super Ljava/lang/Object;
.source "NSDSConfigHelper.java"


# static fields
.field public static final KEY_CONFIG_REFRESH_ON_POWERUP:Ljava/lang/String; = "configRefreshOnPowerUp"

.field public static final KEY_GCM_EVT_LST_MSG_SENDER_ID:Ljava/lang/String; = "GCM_Sender_ID_Event_List"

.field public static final KEY_GCM_PUSH_MSG_SENDER_ID:Ljava/lang/String; = "GCM_Sender_ID"

.field public static final KEY_URL_ENTITLEMENT_SERVER:Ljava/lang/String; = "entitlement_server_FQDN"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static sDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDerivedConfigToMap()V
    .locals 5

    .line 57
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    const-string v1, "entitlement_server_FQDN"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "entitlmentServerUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 59
    const-string v2, "generic_devices"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/generic_devices"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_0
    return-void
.end method

.method public static declared-synchronized clear()V
    .locals 2

    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    monitor-exit v0

    return-void

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getBooleanValue(Ljava/lang/String;)Z
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "retValue":Z
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 100
    :cond_0
    goto :goto_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid confifg value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :goto_0
    return v0
.end method

.method public static getConfigRefreshOnPowerUp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .line 89
    const-string v0, "configRefreshOnPowerUp"

    const-string v1, "0"

    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getConfigServer(I)Ljava/lang/String;
    .locals 2
    .param p0, "phoneId"    # I

    .line 118
    nop

    .line 119
    const-string/jumbo v0, "support_configserver"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    return-object v0
.end method

.method public static declared-synchronized getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->loadConfigFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 38
    .local v1, "dbDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    invoke-static {}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->addDerivedConfigToMap()V

    .line 44
    .end local v1    # "dbDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->sDataMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 35
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defValue"    # Ljava/lang/String;

    const-class v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;

    monitor-enter v0

    .line 48
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->getConfigValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .local v1, "retValue":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 50
    move-object v1, p3

    .line 52
    :cond_0
    monitor-exit v0

    return-object v1

    .line 47
    .end local v1    # "retValue":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imsi":Ljava/lang/String;
    .end local p2    # "key":Ljava/lang/String;
    .end local p3    # "defValue":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 105
    if-eqz p0, :cond_1

    .line 106
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 107
    .local v0, "mUsermanager":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x1

    return v1

    .line 110
    .end local v0    # "mUsermanager":Landroid/os/UserManager;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "User is lock"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public static isWFCAutoOnEnabled(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 123
    nop

    .line 124
    const-string/jumbo v0, "wfc_auto_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 123
    return v0
.end method

.method protected static loadConfigFromDb(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v0, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v1, "pname"

    const-string/jumbo v2, "pvalue"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "projection":[Ljava/lang/String;
    const-string v6, "imsi = ?"

    .line 70
    .local v6, "selection":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    .line 71
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$NsdsConfigs;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .local v3, "cursor":Landroid/database/Cursor;
    if-eqz v3, :cond_1

    .line 74
    :goto_0
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "key":Ljava/lang/String;
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 77
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v9, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "imsi":Ljava/lang/String;
    :cond_0
    :goto_1
    throw v1

    .line 81
    .restart local v0    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "imsi":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 84
    .end local v3    # "cursor":Landroid/database/Cursor;
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v6    # "selection":Ljava/lang/String;
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    :cond_2
    goto :goto_2

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "sqe":Landroid/database/sqlite/SQLiteException;
    sget-object v2, Lcom/sec/internal/ims/entitlement/util/NSDSConfigHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!Could not load nsds config from db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v1    # "sqe":Landroid/database/sqlite/SQLiteException;
    :goto_2
    return-object v0
.end method
