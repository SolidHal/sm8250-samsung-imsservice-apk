.class public Lcom/sec/internal/ims/servicemodules/options/OptionsModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "OptionsModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/IOptionsModule;
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;


# static fields
.field private static final EVT_CAPABILITIES_UPDATE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "OptionsModule"


# instance fields
.field mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

.field private mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 57
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 58
    new-instance v0, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 59
    return-void
.end method

.method private convertOptionsError(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .locals 1
    .param p1, "reason"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    .line 199
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_0

    .line 200
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 201
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_1

    .line 202
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 203
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REACHABLE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 206
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_3

    .line 207
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FORBIDDEN_403:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 208
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_4

    .line 209
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->REQUEST_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 210
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_5

    .line 211
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->INVALID_DATA:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 212
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-eq p1, v0, :cond_7

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;->AUTOMATA_PRESENT:Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    if-ne p1, v0, :cond_6

    goto :goto_0

    .line 216
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->UNCLASSIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 214
    :cond_7
    :goto_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0

    .line 205
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    return-object v0
.end method

.method private onCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCapabilitiesUpdate: success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OptionsModule"

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 175
    .local v0, "result":Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 177
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_1

    .line 178
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReason()Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->convertOptionsError(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent$OptionsFailureReason;)Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    move-result-object v0

    .line 179
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->USER_AVAILABLE_OFFLINE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq v0, v4, :cond_0

    .line 180
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    goto :goto_0

    .line 182
    :cond_0
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TEL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 185
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 186
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-virtual {p1, v4, v5}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->setFeatures(J)V

    .line 190
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v4, :cond_4

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isSuccess()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " txID "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v4, v0, v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    .line 196
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_4
    return-void
.end method


# virtual methods
.method public deRegisterService(Ljava/util/List;I)V
    .locals 0
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 250
    .local p1, "serviceId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 1

    .line 72
    const-string/jumbo v0, "options"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 237
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 222
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 224
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->onCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V

    .line 227
    nop

    .line 231
    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    .line 79
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 80
    const-string v0, "OptionsModule"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    .line 83
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsModule$ciF1fQnzbXVrabQFjW_CJjrl-sQ;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/options/-$$Lambda$OptionsModule$ciF1fQnzbXVrabQFjW_CJjrl-sQ;-><init>(Lcom/sec/internal/ims/servicemodules/options/OptionsModule;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->registerOptionsEvent(Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController$IOptionsEventListener;)V

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->init()V

    .line 85
    return-void
.end method

.method public isReadyToRequest(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$init$0$OptionsModule(Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 1
    .param p1, "event"    # Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 4
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;
    .param p2, "error"    # I

    .line 99
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 100
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->setImsDeRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 103
    const-string v0, "OptionsModule"

    const-string v1, "onDeregistered: Options service is disabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v2, v2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    .line 107
    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 89
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 94
    const-string v0, "OptionsModule"

    const-string v1, "onRegistered: Options service is enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method

.method public readConfig(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 242
    return-void
.end method

.method public registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    .line 62
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    .line 63
    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 246
    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;I)I
    .locals 2
    .param p2, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p3, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "I)I"
        }
    .end annotation

    .line 128
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    const-string v0, "OptionsModule"

    const-string/jumbo v1, "requestCapabilityExchange: OPTIONS doesn\'t support list."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;)Z
    .locals 11
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "callback"    # Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;
    .param p3, "type"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;
    .param p4, "isAlwaysForce"    # Z
    .param p5, "myFeatures"    # J
    .param p7, "phoneId"    # I
    .param p8, "extFeature"    # Ljava/lang/String;

    .line 136
    move-object v0, p0

    move-object v1, p2

    move/from16 v8, p7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->isRunning()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 137
    return v3

    .line 140
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCapabilityExchange: uri "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " iari "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OptionsModule"

    invoke-static {v4, v8, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    invoke-static/range {p7 .. p7}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 143
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    .line 144
    .local v2, "mUriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    sget-object v5, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    .line 145
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v6

    .line 144
    invoke-virtual {v2, v5, v6, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    move-object v10, v5

    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v5, "uri":Lcom/sec/ims/util/ImsUri;
    goto :goto_0

    .line 148
    .end local v2    # "mUriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v5    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    :cond_1
    move-object v10, p1

    .end local p1    # "uri":Lcom/sec/ims/util/ImsUri;
    .local v10, "uri":Lcom/sec/ims/util/ImsUri;
    :goto_0
    if-eqz v1, :cond_2

    .line 150
    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;->onComplete(Lcom/sec/ims/options/Capabilities;)V

    .line 153
    :cond_2
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v8}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    move-object v3, v10

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Z

    move-result v2

    return v2

    .line 156
    :cond_3
    return v3
.end method

.method public reset(I)V
    .locals 0
    .param p1, "phoneId"    # I

    .line 254
    return-void
.end method

.method public sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z
    .locals 9
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "myFeatures"    # J
    .param p4, "txId"    # Ljava/lang/String;
    .param p5, "lastSeen"    # I
    .param p6, "phoneId"    # I
    .param p7, "extFeature"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    return v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCapexResponse: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OptionsModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    move-object v0, p0

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->sendCapexResponse(Lcom/sec/ims/util/ImsUri;JLjava/lang/String;IILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setOwnCapabilities(JI)V
    .locals 3
    .param p1, "features"    # J
    .param p3, "phoneId"    # I

    .line 115
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mController:Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/OptionsRequestController;->setOwnCapabilities(JI)V

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mIsOptionsEnabled:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    .line 124
    :cond_1
    return-void
.end method
