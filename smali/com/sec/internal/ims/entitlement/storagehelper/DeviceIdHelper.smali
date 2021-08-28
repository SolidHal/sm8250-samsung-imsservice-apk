.class public Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;
.super Ljava/lang/Object;
.source "DeviceIdHelper.java"


# static fields
.field private static final INTERVAL_BETWEEN_RETRY:I = 0x1f4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final RETRY_COUNT:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static generateDeviceId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 69
    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->queryDeviceIdFromTelephonyManager(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "deviceIdFromTm":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "indRetry":I
    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 71
    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->queryDeviceIdFromTelephonyManager(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    goto :goto_2

    .line 78
    :cond_0
    const-wide/16 v2, 0x1f4

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 79
    :catch_0
    move-exception v2

    .line 80
    .local v2, "ie":Ljava/lang/InterruptedException;
    sget-object v3, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateDeviceId wait interrrupted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v1    # "indRetry":I
    :cond_1
    :goto_2
    move-object v1, v0

    .line 85
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string/jumbo v3, "urn:uuid:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_2
    return-object v1
.end method

.method public static getDeviceId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 32
    const/4 v0, 0x0

    .line 33
    .local v0, "deviceUid":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getDeviceId"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v1, "ericsson.nsds"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "device_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :cond_0
    if-nez v0, :cond_1

    .line 40
    sget-object v2, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getDeviceId is null"

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-static {p0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->generateDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->saveDeviceId(Landroid/content/Context;ILjava/lang/String;)V

    .line 44
    :cond_1
    return-object v0
.end method

.method public static getDeviceIdIfExists(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 23
    const-string v0, "ericsson.nsds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 25
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "device_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getEncodedDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "deviceUid"    # Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static queryDeviceIdFromTelephonyManager(Landroid/content/Context;I)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .line 97
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    .line 98
    .local v0, "manager":Lcom/sec/internal/helper/os/ITelephonyManager;
    const-string v1, ""

    .line 100
    .local v1, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "deviceIdFromManager":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "imei":Ljava/lang/String;
    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "meid":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "imei len ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "meid len"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "0"

    const/4 v7, 0x2

    const/16 v8, 0xe

    const/4 v9, 0x1

    const/4 v10, 0x3

    const/16 v11, 0x8

    const/4 v12, 0x0

    if-nez v5, :cond_0

    .line 107
    :try_start_1
    const-string/jumbo v5, "urn:gsma:imei:%s-%s-%s"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 108
    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v9

    aput-object v6, v10, v7

    .line 107
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto :goto_0

    .line 109
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 110
    const-string/jumbo v5, "urn:device-id:meid:%s-%s-%s"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v10, v12

    .line 111
    invoke-virtual {v4, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v9

    aput-object v6, v10, v7

    .line 110
    invoke-static {v5, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v5

    .line 116
    .end local v2    # "deviceIdFromManager":Ljava/lang/String;
    .end local v3    # "imei":Ljava/lang/String;
    .end local v4    # "meid":Ljava/lang/String;
    :cond_1
    :goto_0
    goto :goto_1

    .line 114
    :catch_0
    move-exception v2

    .line 115
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getting deviceId failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method private static saveDeviceId(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I
    .param p2, "deviceId"    # Ljava/lang/String;

    .line 52
    const-string v0, "ericsson.nsds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getSharedPref(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 54
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 55
    sget-object v1, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getDeviceId save is failed"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 58
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 59
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "device_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 61
    return-void
.end method
