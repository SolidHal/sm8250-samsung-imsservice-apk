.class public Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;
.super Ljava/lang/Object;
.source "CloudMessageStrategyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStrategy(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 24
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 25
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz v1, :cond_0

    .line 26
    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Carrier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    invoke-static {}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getEnableATTCloudService()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    new-instance v2, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/strategy/ATTCmStrategy;-><init>()V

    sput-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 31
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->initVersionName()V

    goto :goto_0

    .line 33
    :cond_1
    new-instance v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>()V

    sput-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_0

    .line 35
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    new-instance v2, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/cmstore/strategy/TMOCmStrategy;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    goto :goto_0

    .line 38
    :cond_3
    new-instance v2, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    invoke-direct {v2}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>()V

    sput-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 42
    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    const-string v3, "Unsupported Carrier"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v1    # "mno":Lcom/sec/internal/constants/Mno;
    :goto_0
    monitor-exit v0

    .line 46
    return-void

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getEnableATTCloudService()Z
    .locals 4

    .line 59
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    .line 60
    .local v0, "cscFeature":Lcom/samsung/android/feature/SemCscFeature;
    const-string v1, "CscFeature_Message_ConfigOpBackupSync"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "sConfigOpBackupSyncVersion":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->PHASE_AMBS_SERVICE:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const/4 v2, 0x1

    return v2

    .line 65
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->TAG:Ljava/lang/String;

    const-string v3, "Temp sim swap or CSC not enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/4 v2, 0x0

    return v2
.end method

.method public static getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;
    .locals 2

    .line 49
    sget-object v0, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/strategy/DefaultCloudMessageStrategy;-><init>()V

    sput-object v1, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    .line 53
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->mCloudMessageStrategy:Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    monitor-exit v0

    return-object v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
