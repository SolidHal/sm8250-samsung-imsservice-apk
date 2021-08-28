.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "O2UEntitlementCheckFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/IEntitlementCheck;


# static fields
.field private static final DEFAULT_POLL_INTERVAL:I = 0x18

.field private static final INIT_ENTITLEMENT_CHECK:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_ENTITLEMENT_CHECK:I = 0x1


# instance fields
.field private mIsDeviceInEntitlementProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsVolteEntitled:Z

.field private mIsVowifiEntitled:Z

.field private mPollInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVowifiEntitled:Z

    .line 46
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVolteEntitled:Z

    .line 48
    const/16 v1, 0x18

    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mPollInterval:I

    .line 59
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsDeviceInEntitlementProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    return-void
.end method

.method private checkServiceEntitlement()V
    .locals 9

    .line 152
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v0

    .line 153
    .local v0, "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    if-nez v0, :cond_0

    .line 154
    return-void

    .line 157
    :cond_0
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mDeviceEventType:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 158
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mRetryCount:I

    .line 161
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getNSDSServices()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 162
    .local v1, "serviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v8, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 163
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getNSDSApiVersion()Ljava/lang/String;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;)V

    .line 164
    .local v2, "bulkEntitlementCheck":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;
    invoke-interface {v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->needGetMSISDNForEntitlement()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BulkEntitlementCheck;->checkBulkEntitlement(Ljava/util/List;Z)V

    .line 165
    return-void
.end method

.method private handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 3
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 63
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 65
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-nez p1, :cond_0

    .line 66
    return-object v0

    .line 69
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 72
    .local v1, "entitlementStatus":Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->handleResponseEntitlementStatus(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v0

    .line 73
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->setEntitlementInfo(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)V

    .line 74
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->setPollIntervalInfo(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)V

    .line 76
    return-object v0
.end method

.method private handleResponseEntitlementStatus(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    .locals 7
    .param p1, "response"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 80
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/4 v1, -0x1

    const-string/jumbo v2, "serviceEntitlementStatus"

    invoke-direct {v0, p0, v1, v2, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    .line 82
    .local v0, "nsdsResponseStatus":Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;
    if-eqz p1, :cond_4

    .line 83
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 84
    iget-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    .line 85
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;>;"
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "serviceEntitlementList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 88
    .local v4, "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    iget v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    if-ne v5, v2, :cond_0

    .line 89
    iput v2, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    goto :goto_1

    .line 90
    :cond_0
    iget v5, v4, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    const/16 v6, 0x418

    if-ne v5, v6, :cond_1

    .line 91
    iput v6, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 93
    .end local v4    # "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    :cond_1
    :goto_1
    goto :goto_0

    .line 94
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;>;"
    :cond_2
    goto :goto_2

    .line 95
    :cond_3
    iget v1, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    iput v1, v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;->responseCode:I

    .line 98
    :cond_4
    :goto_2
    return-object v0
.end method

.method private isDeviceInEntitlementProgress()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsDeviceInEntitlementProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private performNextOperation(II)V
    .locals 4
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsDeviceInEntitlementProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    iput p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mDeviceEventType:I

    .line 145
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mRetryCount:I

    .line 147
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    const/16 v1, 0x3e8

    const-string/jumbo v2, "serviceEntitlementStatus"

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;ILjava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v3, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method private resetEntitlementStatus()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsDeviceInEntitlementProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string v2, "imsi_eap"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->removePrefForSlot(Landroid/content/Context;ILjava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->clearDeferredMessage()V

    .line 197
    return-void
.end method

.method private setEntitlementInfo(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)V
    .locals 9
    .param p1, "entitlementStatus"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVowifiEntitled:Z

    .line 109
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVolteEntitled:Z

    .line 111
    if-eqz p1, :cond_5

    .line 112
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->getMnoNsdsStrategy()Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;

    move-result-object v1

    .line 113
    .local v1, "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    iget v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->responseCode:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_5

    .line 114
    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->serviceEntitlementList:Ljava/util/ArrayList;

    .line 115
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;>;"
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;

    .line 116
    .local v5, "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    const/4 v6, -0x1

    .line 117
    .local v6, "serviceId":I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementServicesMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 118
    invoke-interface {v1}, Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;->getEntitlementServicesMap()Ljava/util/Map;

    move-result-object v7

    iget-object v8, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->serviceName:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 120
    :cond_0
    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v8, 0x2

    if-eq v6, v8, :cond_1

    goto :goto_3

    .line 125
    :cond_1
    iget v8, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    if-ne v8, v3, :cond_2

    goto :goto_1

    :cond_2
    move v7, v0

    :goto_1
    iput-boolean v7, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVolteEntitled:Z

    goto :goto_3

    .line 122
    :cond_3
    iget v8, v5, Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;->entitlementStatus:I

    if-ne v8, v3, :cond_4

    goto :goto_2

    :cond_4
    move v7, v0

    :goto_2
    iput-boolean v7, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVowifiEntitled:Z

    .line 123
    nop

    .line 128
    .end local v5    # "se":Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;
    .end local v6    # "serviceId":I
    :goto_3
    goto :goto_0

    .line 131
    .end local v1    # "mnoStrategy":Lcom/sec/internal/ims/entitlement/nsds/strategy/IMnoNsdsStrategy;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/internal/constants/ims/entitilement/data/ServiceEntitlement;>;"
    :cond_5
    return-void
.end method

.method private setPollIntervalInfo(Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;)V
    .locals 1
    .param p1, "entitlementStatus"    # Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;

    .line 102
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->pollInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/data/ResponseServiceEntitlementStatus;->pollInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mPollInterval:I

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    const/4 v0, 0x2

    .line 187
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->handleEntitlementCheckResponse(Landroid/os/Bundle;)Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;

    move-result-object v1

    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->performNextOperationIf(ILcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase$NSDSResponseStatus;Landroid/os/Bundle;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->checkServiceEntitlement()V

    .line 184
    goto :goto_0

    .line 180
    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->performNextOperation(II)V

    .line 181
    nop

    .line 190
    :goto_0
    return-void
.end method

.method public synthetic lambda$notifyNSDSFlowResponse$0$O2UEntitlementCheckFlow(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v0, p1, v1}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 217
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "code"    # I

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.nsds.action.ENTITLEMENT_CHECK_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "request_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mDeviceEventType:I

    const-string v2, "device_event_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    iget-boolean v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVowifiEntitled:Z

    const-string/jumbo v3, "service_vowifi"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    iget-boolean v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVolteEntitled:Z

    const-string/jumbo v4, "service_volte"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mPollInterval:I

    const-string/jumbo v5, "poll_interval"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 207
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mDeviceEventType:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mRetryCount:I

    const-string/jumbo v2, "retry_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    const-string/jumbo v1, "req_toggle_off_op"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const-string/jumbo v1, "orig_error_code"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string v2, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const-string/jumbo v2, "phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    new-instance v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;

    .local v1, "mRunnable":Ljava/lang/Runnable;
    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/-$$Lambda$O2UEntitlementCheckFlow$8OBJ6UXbRbXkAidu0SOZiY5WLf0;-><init>(Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;Landroid/content/Intent;)V

    .line 218
    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v1, v5, v6}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 220
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyNSDSFlowResponse: isSuccess: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isVowifiEntitled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVowifiEntitled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isVolteEntitled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVolteEntitled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pollInterval: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mPollInterval:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRetryCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", ErrorCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVowifiEntitled:Z

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 225
    invoke-virtual {v6}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 224
    invoke-static {v2, v3, v5, v6}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->setEntitlementCompleted(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mIsVolteEntitled:Z

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 227
    invoke-virtual {v5}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 226
    invoke-static {v2, v4, v3, v5}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->setEntitlementCompleted(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 228
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->resetEntitlementStatus()V

    .line 229
    return-void
.end method

.method public performE911AddressUpdate(I)V
    .locals 0
    .param p1, "deviceEventType"    # I

    .line 234
    return-void
.end method

.method public performEntitlementCheck(II)V
    .locals 2
    .param p1, "deviceEventType"    # I
    .param p2, "retryCount"    # I

    .line 134
    iput p2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->mRetryCount:I

    .line 135
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->isDeviceInEntitlementProgress()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1, p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 140
    :goto_0
    return-void
.end method

.method public performRemovePushToken(I)V
    .locals 0
    .param p1, "deviceEventType"    # I

    .line 239
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 169
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 171
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/o2uentitlement/O2UEntitlementCheckFlow;->sendMessage(Landroid/os/Message;)Z

    .line 174
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
