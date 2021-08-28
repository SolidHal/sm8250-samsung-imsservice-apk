.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "SIMDeviceDeactivationFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISIMDeviceDeactivation;


# static fields
.field private static final DEACTIVATE_DEVICE:I

.field private static final LOG_TAG:Ljava/lang/String;

.field private static mDeactivateCause:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mDeactivateCause:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 41
    return-void
.end method

.method private handleResponseDeactivation(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundleNSDSResponses"    # Landroid/os/Bundle;

    .line 59
    const/4 v0, -0x1

    .line 60
    .local v0, "nsdsErrorCode":I
    const/4 v1, 0x0

    .line 61
    .local v1, "flowSuccess":Z
    const-string v2, "manageConnectivity"

    if-nez p1, :cond_0

    .line 62
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    const-string v4, "handleRefreshDeviceResponse. response is null"

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;

    .line 65
    .local v3, "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    if-eqz v3, :cond_2

    .line 66
    iget v4, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_1

    .line 67
    sget-object v4, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResponseManageConnectivity content : messageId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->messageId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", responseCode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget v0, v3, Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;->responseCode:I

    .line 75
    .end local v3    # "responseManageConnectivity":Lcom/sec/internal/constants/ims/entitilement/data/ResponseManageConnectivity;
    :cond_2
    :goto_0
    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 78
    return-void
.end method

.method private performDeactivation(I)V
    .locals 10
    .param p1, "deactivationCause"    # I

    .line 81
    sput p1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mDeactivateCause:I

    .line 83
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deactivateDevice: deactivationCause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    new-instance v6, Landroid/os/Messenger;

    invoke-direct {v6, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iget-object v8, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mUserAgent:Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mImeiForUA:Ljava/lang/String;

    const-string v7, "1.0"

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v0, "deviceDeactivation":Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;
    sget v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mDeactivateCause:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;->deactivateDevice()V

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public deactivateDevice(I)V
    .locals 3
    .param p1, "deactivationCause"    # I

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isDeviceActivated(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestSimDeviceDeactivation: not activated"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 48
    return-void

    .line 51
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 52
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 53
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 55
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->sendMessage(Landroid/os/Message;)Z

    .line 56
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 95
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/16 v1, 0x6f

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->handleResponseDeactivation(Landroid/os/Bundle;)V

    .line 102
    goto :goto_0

    .line 98
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->performDeactivation(I)V

    .line 99
    nop

    .line 106
    :goto_0
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 110
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errorcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mNSDSDatabaseHelper:Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    .line 113
    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v3}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    .line 112
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->resetDeviceStatus(Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 117
    if-ne p4, v1, :cond_1

    sget v1, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mDeactivateCause:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 118
    const/16 v1, 0x519

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_0
    if-eqz p2, :cond_1

    if-eq p4, v1, :cond_1

    .line 123
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v1

    .line 124
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v1    # "errorCode":I
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.SIM_DEVICE_DEACTIVATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v2}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    const-string v3, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const-string/jumbo v2, "request_status"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 130
    const-string v2, "error_codes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 131
    sget v2, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mDeactivateCause:I

    const-string/jumbo v3, "sim_deactivation_cause"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SIMDeviceDeactivationFlow;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 133
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 137
    return-void
.end method
