.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;
.super Ljava/lang/Object;
.source "DefaultNsdsConfigStrategy.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;
    }
.end annotation


# static fields
.field private static final DEFAULT_REFRESH_TIME_IN_SECS:J = 0x15180L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

.field protected final sMapEntitlementServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->sMapEntitlementServices:Ljava/util/Map;

    .line 118
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->DEFAULT:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    .line 35
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->sMapEntitlementServices:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "vowifi"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public final getEntitlementServerUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "deviceUid"    # Ljava/lang/String;

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->isOneOf([Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "url":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEntitlementServerUrl: url in sp "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-nez v0, :cond_0

    .line 54
    const-string v1, "https://eas3.msg.t-mobile.com/generic_devices"

    .line 55
    .local v1, "DEFAULT_URL_ENTITLEMENT_SERVER":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->getNsdsUrlFromDeviceConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    .end local v1    # "DEFAULT_URL_ENTITLEMENT_SERVER":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 59
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const-string v0, "http://ses.ericsson-magic.net:10080/generic_devices"

    .line 60
    .local v0, "DEFAULT_URL_ENTITLEMENT_SERVER":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getEntitlementServerUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getNextOperation(II)I
    .locals 4
    .param p1, "deviceEventType"    # I
    .param p2, "prevNsdsBaseOperation"    # I

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->isOneOf([Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;->getOperation(II)I

    move-result v0

    return v0

    .line 69
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/DefaultNsdsOperation;->getOperation(II)I

    move-result v0

    return v0
.end method

.method public final isDeviceProvisioned()Z
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 42
    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 44
    .local v0, "isProvisioned":Z
    sget-object v1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeviceProvisioned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return v0
.end method

.method public final scheduleRefreshDeviceConfig(I)V
    .locals 13
    .param p1, "slotid"    # I

    .line 75
    const-wide/32 v0, 0x15180

    .line 77
    .local v0, "refreshTime":J
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mStrategyType:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    sget-object v5, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->TMOUS:Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;->isOneOf([Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy$NsdsConfigStrategyType;)Z

    move-result v2

    const-wide/16 v4, 0x0

    if-eqz v2, :cond_3

    .line 78
    const-string v2, "//configInfo/configRefreshTime"

    .line 79
    .local v2, "xpathExpr":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 80
    invoke-static {v2}, Lcom/sec/internal/constants/ims/entitilement/EntitlementConfigContract$DeviceConfig;->buildXPathExprUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 79
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 82
    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .local v7, "time":J
    cmp-long v3, v7, v4

    if-lez v3, :cond_1

    .line 84
    move-wide v0, v7

    goto :goto_1

    .line 79
    .end local v7    # "time":J
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_0

    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v7

    :try_start_3
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "refreshTime":J
    .end local v2    # "xpathExpr":Ljava/lang/String;
    .end local p0    # "this":Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;
    .end local p1    # "slotid":I
    :cond_0
    :goto_0
    throw v3

    .line 87
    .restart local v0    # "refreshTime":J
    .restart local v2    # "xpathExpr":Ljava/lang/String;
    .restart local p0    # "this":Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;
    .restart local p1    # "slotid":I
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 89
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_2
    goto :goto_2

    .line 87
    :catch_0
    move-exception v3

    .line 88
    .local v3, "sqe":Landroid/database/SQLException;
    sget-object v6, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignore sqlexception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v2    # "xpathExpr":Ljava/lang/String;
    .end local v3    # "sqe":Landroid/database/SQLException;
    :cond_3
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "scheduleRefreshDeviceConfig: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    cmp-long v2, v0, v4

    if-lez v2, :cond_4

    .line 94
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/DefaultNsdsConfigStrategy;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v0

    const-string v5, "com.sec.vsim.ericssonnsds.REFRESH_DEVICE_CONFIG"

    invoke-static {v2, p1, v5, v3, v4}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;J)V

    .line 96
    :cond_4
    return-void
.end method
