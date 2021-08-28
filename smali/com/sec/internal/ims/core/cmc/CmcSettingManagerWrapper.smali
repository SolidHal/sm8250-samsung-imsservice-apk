.class public Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;
.super Ljava/lang/Object;
.source "CmcSettingManagerWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSettingManagerWrapper"


# instance fields
.field private mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cmcAccountManager"    # Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 28
    return-void
.end method


# virtual methods
.method public getActiveSimSlot()I
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineActiveSimSlot()I

    move-result v0

    return v0
.end method

.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getCmcSaAccessToken()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;

    move-result-object v0

    .line 160
    .local v0, "cmcSa":Lcom/samsung/android/cmcsetting/CmcSaInfo;
    if-nez v0, :cond_0

    .line 161
    const-string v1, ""

    return-object v1

    .line 163
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->getSaAccessToken()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCmcSupported()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcSupported()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 3

    .line 80
    const-string v0, ""

    .line 81
    .local v0, "deviceType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v1

    .line 83
    .local v1, "type":Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v1, v2, :cond_0

    .line 84
    const-string/jumbo v0, "pd"

    goto :goto_0

    .line 85
    :cond_0
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v1, v2, :cond_1

    .line 86
    const-string/jumbo v0, "sd"

    .line 88
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 128
    const-string v0, ""

    .line 129
    .local v0, "deviceType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v1

    .line 130
    .local v1, "type":Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v1, v2, :cond_0

    .line 131
    const-string/jumbo v0, "pd"

    goto :goto_0

    .line 132
    :cond_0
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v1, v2, :cond_1

    .line 133
    const-string/jumbo v0, "sd"

    .line 135
    :cond_1
    :goto_0
    return-object v0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineImpu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnCmcActivation()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result v0

    return v0
.end method

.method public getPcscfAddressList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLinePcscfAddrList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getPreferedNetwork()I
    .locals 3

    .line 96
    const/4 v0, 0x1

    .line 97
    .local v0, "networkMode":I
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object v1

    .line 98
    .local v1, "mode":Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    if-ne v1, v2, :cond_0

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v2, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_WIFI_ONLY:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    if-ne v1, v2, :cond_1

    .line 101
    const/4 v0, 0x1

    .line 103
    :cond_1
    :goto_0
    return v0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnServiceVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 8

    .line 31
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance v1, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    .line 33
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    move-result v1

    .line 35
    .local v1, "isInit":Z
    if-eqz v1, :cond_0

    .line 36
    const-string v2, "init listeners"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$pIqMHY75JZlB7r9ysutBKlWQ16w;

    .local v0, "cmcActivationListener":Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;
    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$pIqMHY75JZlB7r9ysutBKlWQ16w;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 41
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v2, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z

    .line 43
    new-instance v2, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$92zDD2YTgZrMWkRUyAoePFShmRI;

    .local v2, "cmcNetworkModeListener":Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;
    invoke-direct {v2, p0}, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$92zDD2YTgZrMWkRUyAoePFShmRI;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 47
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z

    .line 49
    new-instance v3, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$klBmb-e3tMyz4ClHPoPiU9P7EdM;

    .local v3, "cmcLineInfoListener":Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;
    invoke-direct {v3, p0}, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$klBmb-e3tMyz4ClHPoPiU9P7EdM;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 53
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v4, v3}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z

    .line 55
    new-instance v4, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$n6ZvAz-h6g_0wzq4B20QtqPbrJk;

    .local v4, "cmcDeviceInfoListener":Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;
    invoke-direct {v4, p0}, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$n6ZvAz-h6g_0wzq4B20QtqPbrJk;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 59
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z

    .line 61
    new-instance v5, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$sKsfDw04_fn8bda0CP55asFMvps;

    .local v5, "cmcCallActivationListener":Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;
    invoke-direct {v5, p0}, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$sKsfDw04_fn8bda0CP55asFMvps;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 65
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v6, v5}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z

    .line 67
    new-instance v6, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$lvd4yY-PaCKjieX3-IAwY_iGToI;

    .local v6, "cmcSaInfoListener":Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;
    invoke-direct {v6, p0}, Lcom/sec/internal/ims/core/cmc/-$$Lambda$CmcSettingManagerWrapper$lvd4yY-PaCKjieX3-IAwY_iGToI;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 71
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v7, v6}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z

    .line 73
    .end local v0    # "cmcActivationListener":Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;
    .end local v2    # "cmcNetworkModeListener":Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;
    .end local v3    # "cmcLineInfoListener":Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;
    .end local v4    # "cmcDeviceInfoListener":Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;
    .end local v5    # "cmcCallActivationListener":Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;
    .end local v6    # "cmcSaInfoListener":Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;
    :cond_0
    return-void
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 1
    .param p1, "deviceId"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$init$0$CmcSettingManagerWrapper()V
    .locals 2

    .line 38
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedCmcActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 40
    return-void
.end method

.method public synthetic lambda$init$1$CmcSettingManagerWrapper()V
    .locals 2

    .line 44
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedNetworkMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcNwPrefChanged()V

    .line 46
    return-void
.end method

.method public synthetic lambda$init$2$CmcSettingManagerWrapper()V
    .locals 2

    .line 50
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedLineInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 52
    return-void
.end method

.method public synthetic lambda$init$3$CmcSettingManagerWrapper()V
    .locals 2

    .line 56
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 58
    return-void
.end method

.method public synthetic lambda$init$4$CmcSettingManagerWrapper()V
    .locals 2

    .line 62
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedCmcCallActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 64
    return-void
.end method

.method public synthetic lambda$init$5$CmcSettingManagerWrapper()V
    .locals 2

    .line 68
    const-string v0, "CmcSettingManagerWrapper"

    const-string v1, "onChangedSamsungAccountInfo:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSaAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onChangedSamsungAccountInfo(Ljava/lang/String;)V

    .line 70
    return-void
.end method
