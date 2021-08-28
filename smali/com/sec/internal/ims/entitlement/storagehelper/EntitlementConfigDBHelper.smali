.class public Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;
.super Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;
.source "EntitlementConfigDBHelper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 20
    return-void
.end method

.method public static deleteConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "imsi"    # Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    .local v0, "ceContext":Landroid/content/Context;
    const-string v1, "imsi = ?"

    .line 119
    .local v1, "selection":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 120
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 122
    .local v3, "noDeletes":I
    if-lez v3, :cond_0

    .line 123
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted device config: successfully for imsi:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public static getNsdsUrlFromDeviceConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultUrl"    # Ljava/lang/String;

    .line 128
    const-string v0, "getNsdsUrlFromDeviceConfig: "

    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v1

    .line 129
    .local v1, "ceContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 130
    .local v2, "entitlementUrl":Ljava/lang/String;
    const-string v3, "//janskyConfig/entitlement_server_FQDN"

    .line 131
    .local v3, "xpathExpr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 132
    invoke-static {v3}, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 131
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .local v4, "cursor":Landroid/database/Cursor;
    if-eqz v4, :cond_1

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v5

    goto :goto_1

    .line 131
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_0

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v6

    :try_start_3
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "ceContext":Landroid/content/Context;
    .end local v2    # "entitlementUrl":Ljava/lang/String;
    .end local v3    # "xpathExpr":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "defaultUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v5

    .line 136
    .restart local v1    # "ceContext":Landroid/content/Context;
    .restart local v2    # "entitlementUrl":Ljava/lang/String;
    .restart local v3    # "xpathExpr":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "defaultUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    .end local v4    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 136
    :catch_0
    move-exception v4

    .line 137
    .local v4, "sqe":Landroid/database/SQLException;
    sget-object v5, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v4    # "sqe":Landroid/database/SQLException;
    :goto_2
    if-eqz v2, :cond_4

    .line 141
    const-string v4, "generic_devices"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/generic_devices"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-object v2

    .line 147
    :cond_4
    return-object p1
.end method

.method public static insertDeviceConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlDeviceConfig"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    .local v0, "ceContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 61
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v1, v2

    .line 63
    if-eqz p2, :cond_0

    .line 64
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    const-string v2, "imsi"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "device_config"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 71
    .local v2, "configUri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 72
    sget-object v3, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v4, "inserted device config in device config successfully"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .end local v2    # "configUri":Landroid/net/Uri;
    :cond_2
    return-void
.end method

.method public static migrationToCe(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "db"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 152
    .local v0, "ceContext":Landroid/content/Context;
    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->moveDatabaseFrom(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 153
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed to maigrate DB."

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return v2

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Failed delete DB on DE."

    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v2

    .line 160
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "migration is done"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x1

    return v1
.end method

.method public static updateDeviceConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "xmlDeviceConfig"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;

    .line 97
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDeviceConfig: version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    .local v0, "ceContext":Landroid/content/Context;
    const/4 v1, 0x0

    .line 100
    .local v1, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 101
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v1, v2

    .line 102
    if-eqz p2, :cond_0

    .line 103
    const-string/jumbo v2, "version"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    const-string v2, "device_config"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_1
    const-string v2, "imsi = ?"

    .line 109
    .local v2, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    .line 110
    .local v3, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 111
    .local v4, "noUpdates":I
    if-lez v4, :cond_2

    .line 112
    sget-object v5, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updated device config in device config successfully with version:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2
    return-void
.end method


# virtual methods
.method public getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "imsi"    # Ljava/lang/String;

    .line 32
    const-string v6, "imsi = ?"

    .line 33
    .local v6, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    .line 35
    .local v4, "selectionArgs":[Ljava/lang/String;
    const-string v0, "device_config"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_0
    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 46
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public insertDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resManageConn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v0, v1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->insertDeviceConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public isDeviceConfigAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "imsi"    # Ljava/lang/String;

    .line 23
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->getDeviceConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isDeviceConfigAvailable: no config"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateDeviceConfig(Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resManageConn"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->deviceConfig:Ljava/lang/String;

    invoke-static {v0, v1, p2, p3}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->updateDeviceConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
