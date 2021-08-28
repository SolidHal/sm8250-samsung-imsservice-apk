.class public Lcom/sec/internal/ims/cmstore/CmsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "CmsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/ICmsModule;


# static fields
.field private static final EVENT_GETPROFILE:I = 0x3

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String;

.field private static isCmsServiceActive:Z = false

.field private static final mReadImsProfileValueDelay:I = 0x4b0


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/sec/internal/ims/cmstore/CmsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/CmsModule;->isCmsServiceActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 38
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method private enableCloudMessageService()V
    .locals 4

    .line 198
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/internal/ims/cmstore/CmsModule;->isCmsServiceActive:Z

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->setCmsProfileEnabled(Landroid/content/Context;Z)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    move-result-object v0

    .line 203
    .local v0, "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onRCSDbReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0    # "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    :cond_0
    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRCSDbReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private onProfileReady()V
    .locals 8

    .line 80
    nop

    .line 81
    const/4 v0, 0x0

    const-string/jumbo v1, "services"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "servicesFromGs":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    .line 86
    .local v3, "phoneId":I
    if-eqz v1, :cond_0

    .line 87
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 88
    .local v7, "service":Ljava/lang/String;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v7    # "service":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 92
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onProfileReady ,services: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-static {v3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "AIO"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "cms"

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CmsModule;->enableCloudMessageService()V

    goto :goto_1

    .line 96
    :cond_1
    sget-object v4, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Central message store not enabled."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sput-boolean v0, Lcom/sec/internal/ims/cmstore/CmsModule;->isCmsServiceActive:Z

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    move-result-object v0

    .line 101
    .local v0, "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onDisableCms()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v0    # "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    :cond_2
    goto :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisableRCS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 109
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method private onSimReady(Z)V
    .locals 3
    .param p1, "isAbsent"    # Z

    .line 112
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSimReady: isAbsent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p1, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    const/4 v0, 0x3

    const-wide/16 v1, 0x4b0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/CmsModule;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    return-void
.end method

.method private onSimRefresh()V
    .locals 2

    .line 120
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/CmsModule;->isCmsServiceActive:Z

    if-nez v0, :cond_0

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isSimExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRefresh: SIM is still available"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 127
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRefresh: SIM slot is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    move-result-object v0

    .line 131
    .local v0, "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onSimRemoved()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .end local v0    # "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    :cond_2
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getServicesRequiring()[Ljava/lang/String;
    .locals 5

    .line 43
    const-string v0, "cms"

    const-string v1, "im"

    const-string/jumbo v2, "slm"

    const-string v3, "ft"

    const-string v4, "ft_http"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 54
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 59
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CmsModule;->onProfileReady()V

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CmsModule;->onSimRefresh()V

    .line 71
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/CmsModule;->hasMessages(I)Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 63
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Sim refresh is ongoing. SIM readyretry after"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-wide/16 v0, 0x320

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/internal/ims/cmstore/CmsModule;->sendEmptyMessageDelayed(IJ)Z

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->isSimExist(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/CmsModule;->onSimReady(Z)V

    .line 68
    nop

    .line 77
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 149
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 150
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 152
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 155
    return-void
.end method

.method public onConfigured(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 193
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onConfigured(I)V

    .line 194
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConfigured"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 2
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "errorCode"    # I

    .line 187
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 188
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4
    .param p1, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 165
    sget-boolean v0, Lcom/sec/internal/ims/cmstore/CmsModule;->isCmsServiceActive:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 166
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 172
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "msisdn":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRegistered, msisdn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CmsModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;

    move-result-object v1

    .line 176
    .local v1, "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 177
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;->onImsRegistered(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "msisdn":Ljava/lang/String;
    .end local v1    # "mCldMsgService":Lcom/sec/internal/ims/cmstore/CloudMessageServiceWrapper;
    :cond_1
    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRCSDbReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 167
    :cond_2
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onRegistered, null regiInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method public start()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 143
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CmsModule;->enableCloudMessageService()V

    .line 145
    return-void
.end method

.method public stop()V
    .locals 2

    .line 159
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 160
    sget-object v0, Lcom/sec/internal/ims/cmstore/CmsModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method
