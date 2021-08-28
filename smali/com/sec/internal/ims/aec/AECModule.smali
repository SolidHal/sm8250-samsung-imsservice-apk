.class public Lcom/sec/internal/ims/aec/AECModule;
.super Landroid/os/Handler;
.source "AECModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/aec/IAECModule;


# static fields
.field private static final CONFIG_MDMNTYPE:Ljava/lang/String; = "CscFeature_IMS_ConfigMdmnType"

.field private static final DISABLE_TS43:Ljava/lang/String; = "disable_ts43"

.field private static final PROPERTY_ICC_TYPE:Ljava/lang/String; = "ril.ICC_TYPE"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mAECResult:Lcom/sec/internal/ims/aec/AECResult;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

.field private mIsPsDataRoaming:Z

.field private final mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .line 56
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    const-class v0, Lcom/sec/internal/ims/aec/AECModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mIsPsDataRoaming:Z

    .line 57
    iput-object p2, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    .line 58
    new-instance v1, Lcom/sec/internal/ims/aec/AECResult;

    invoke-direct {v1, p2}, Lcom/sec/internal/ims/aec/AECResult;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    .line 59
    new-instance v1, Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    .line 60
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflowFactory(Landroid/content/Context;)Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    .line 61
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/AECModule;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/aec/AECModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/AECModule;

    .line 37
    iget-boolean v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mIsPsDataRoaming:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/internal/ims/aec/AECModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/AECModule;
    .param p1, "x1"    # Z

    .line 37
    iput-boolean p1, p0, Lcom/sec/internal/ims/aec/AECModule;->mIsPsDataRoaming:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/aec/AECModule;Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/AECModule;
    .param p1, "x1"    # Landroid/telephony/ServiceState;

    .line 37
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getDataRoaming(Landroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/aec/AECModule;)Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/aec/AECModule;

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    return-object v0
.end method

.method private createWorkflow(I)V
    .locals 8
    .param p1, "phoneId"    # I

    .line 242
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 243
    .local v0, "simManager":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v6

    .line 244
    move v3, p1

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->createWorkflow(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/sec/internal/ims/aec/AECModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/AECModule;->sendMessage(Landroid/os/Message;)Z

    .line 249
    :cond_0
    return-void
.end method

.method private getDataRoaming(Landroid/telephony/ServiceState;)Z
    .locals 4
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 253
    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/telephony/ServiceState;

    const-string v2, "getDataRoaming"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 254
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 255
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 258
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    return v0
.end method

.method private getEntitlementServer(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .line 284
    const-string/jumbo v0, "support_configserver"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isSimAbsent(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 221
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 222
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onChangeConnectivity()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object v0

    .line 165
    .local v0, "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 166
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    .line 167
    .local v2, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v2, :cond_0

    .line 168
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->changeConnectivity()V

    .line 165
    .end local v2    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private onCompletedEntitlement(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 136
    if-eqz p1, :cond_3

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    .line 138
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v0, :cond_3

    .line 139
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoLte()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoLTE(Landroid/os/Message;)V

    .line 142
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementForVoWiFi()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 143
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getEntitlementInitFromApp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isReadyToNotifyApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 146
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/AECResult;->handleCompletedEntitlementVoWIFI(Landroid/os/Message;)V

    .line 152
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    .line 155
    .end local v0    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_3
    return-void
.end method

.method private onInitWorkflow()V
    .locals 2

    .line 122
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    .line 123
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 124
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/aec/AECModule;->resetHttpResponse(I)V

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private onReceivedFcmNotification(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 174
    const-string v0, "from"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "from":Ljava/lang/String;
    const-string v1, "app"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "app":Ljava/lang/String;
    const-string/jumbo v2, "timestamp"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "timeStamp":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 179
    iget-object v3, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object v3

    .line 180
    .local v3, "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 181
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    .line 182
    .local v5, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v5, :cond_0

    .line 183
    invoke-interface {v5, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->receivedFcmNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v5    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 187
    .end local v3    # "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private onReceivedSmsNotification(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    .line 191
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->receivedSmsNotification(Ljava/lang/String;)V

    .line 194
    :cond_0
    return-void
.end method

.method private onSimReady(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 197
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isSimAbsent(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementRequired(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimReady"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    .line 200
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 202
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 204
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->createWorkflow(I)V

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->registerDefaultNetworkCallback()V

    .line 207
    .end local v0    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_1
    return-void
.end method

.method private onSimRemoved(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    .line 211
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "onSimRemoved"

    invoke-static {v1, v2, p1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearResource()V

    .line 214
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->clearWorkflow(I)V

    .line 216
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mDefaultNetwork:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->unregisterNetworkCallback()V

    .line 218
    :cond_0
    return-void
.end method

.method private onStartEntitlement(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 129
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    .line 130
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v0, :cond_0

    .line 131
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 133
    :cond_0
    return-void
.end method

.method private onStopEntitlement(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/aec/AECResult;->updateAkaToken(II)V

    .line 161
    :cond_0
    return-void
.end method

.method private registerListenerForDataRoamingState()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 264
    new-instance v1, Lcom/sec/internal/ims/aec/AECModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/AECModule$1;-><init>(Lcom/sec/internal/ims/aec/AECModule;)V

    .line 279
    .local v1, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 281
    .end local v1    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :cond_0
    return-void
.end method

.method private resetHttpResponse(I)V
    .locals 7
    .param p1, "phoneId"    # I

    .line 226
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "aec_result_%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "spName":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    .local v1, "sp":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 229
    const-string/jumbo v2, "root/response"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 230
    .local v4, "httpResponse":I
    const/16 v5, 0x190

    if-eq v4, v5, :cond_0

    const/16 v5, 0x193

    if-eq v4, v5, :cond_0

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_1

    .line 233
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 234
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 235
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resetHttpResponse: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    .end local v4    # "httpResponse":I
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getAllWorkflow()Landroid/util/SparseArray;

    move-result-object v0

    .line 374
    .local v0, "workflowArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 375
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    .line 376
    .local v2, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v2, :cond_0

    .line 377
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->dump()V

    .line 374
    .end local v2    # "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 380
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public getAkaToken(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I

    .line 349
    const-string v0, "NotProcess"

    .line 350
    .local v0, "akaToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v1

    .line 351
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v1, :cond_3

    .line 352
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getAkaToken()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isEntitlementOngoing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 354
    const-string v0, "InProgress"

    .line 355
    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 356
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    goto :goto_1

    .line 357
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->isSharedAkaToken()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 365
    :cond_1
    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    goto :goto_1

    .line 358
    :cond_2
    :goto_0
    const-string v0, "InProgress"

    .line 359
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->clearAkaToken()V

    .line 360
    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setSharedAkaToken(Z)V

    .line 361
    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setValidEntitlement(Z)V

    .line 362
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 363
    iget-object v2, p0, Lcom/sec/internal/ims/aec/AECModule;->mAECResult:Lcom/sec/internal/ims/aec/AECResult;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/aec/AECResult;->setAkaTokenReady(IZ)V

    .line 368
    :cond_3
    :goto_1
    return-object v0
.end method

.method public getSMSoIpEntitlementStatus(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 319
    const/4 v0, 0x0

    .line 320
    .local v0, "entitlementStatus":Z
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v1

    .line 321
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v1, :cond_0

    .line 322
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getSMSoIpEntitlementStatus()Z

    move-result v0

    .line 324
    :cond_0
    return v0
.end method

.method public getVoLteEntitlementStatus(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "entitlementStatus":Z
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v1

    .line 331
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v1, :cond_0

    .line 332
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoLteEntitlementStatus()Z

    move-result v0

    .line 334
    :cond_0
    return v0
.end method

.method public getVoWiFiEntitlementStatus(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "entitlementStatus":Z
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v1

    .line 341
    .local v1, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v1, :cond_0

    .line 342
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->getVoWiFiEntitlementStatus()Z

    move-result v0

    .line 344
    :cond_0
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 115
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onReceivedSmsNotification(Landroid/os/Message;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/aec/AECModule;->onReceivedFcmNotification(Landroid/os/Bundle;)V

    .line 112
    goto :goto_0

    .line 107
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStopEntitlement(Landroid/os/Message;)V

    .line 108
    goto :goto_0

    .line 103
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onCompletedEntitlement(Landroid/os/Message;)V

    .line 104
    goto :goto_0

    .line 99
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->onStartEntitlement(Landroid/os/Message;)V

    .line 100
    goto :goto_0

    .line 95
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onChangeConnectivity()V

    .line 96
    goto :goto_0

    .line 90
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 91
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/aec/AECModule;->onSimRemoved(I)V

    .line 92
    goto :goto_0

    .line 85
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 86
    .restart local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/aec/AECModule;->onSimReady(I)V

    .line 87
    goto :goto_0

    .line 81
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->onInitWorkflow()V

    .line 82
    nop

    .line 119
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSequentially()V
    .locals 4

    .line 66
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 67
    .local v1, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 68
    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 69
    .end local v1    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/AECModule;->registerListenerForDataRoamingState()V

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getFcmHandler()Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/receiver/fcm/FcmNotification;-><init>(Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmHandler;->registerFcmEventListener(Lcom/sec/internal/ims/entitlement/fcm/interfaces/IFcmEventListener;)V

    .line 73
    new-instance v0, Lcom/sec/internal/ims/aec/receiver/SmsNotification;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 74
    .local v0, "smsReceiver":Lcom/sec/internal/ims/aec/receiver/SmsNotification;
    iget-object v1, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/receiver/SmsNotification;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 75
    return-void
.end method

.method public isEntitlementDisabled(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 289
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "disable_ts43"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEntitlementRequired(I)Z
    .locals 3
    .param p1, "phoneId"    # I

    .line 294
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->isEntitlementDisabled(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disabled by csc feature"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 296
    return v1

    .line 299
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->getEntitlementServer(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ts43"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unsupported entitlement server"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 301
    return v1

    .line 304
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ril.ICC_TYPE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 305
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "unsupported icc type"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 306
    return v1

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mContext:Landroid/content/Context;

    const-string v2, "ims"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "disabled ImsSwitch"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 311
    return v1

    .line 314
    :cond_3
    return v2
.end method

.method public triggerAutoConfigForApp(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 384
    iget-object v0, p0, Lcom/sec/internal/ims/aec/AECModule;->mWorkflowFactory:Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/workflow/WorkflowFactory;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;

    move-result-object v0

    .line 385
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;
    if-eqz v0, :cond_0

    .line 386
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/AECModule;->resetHttpResponse(I)V

    .line 387
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setValidEntitlement(Z)V

    .line 388
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->setReadyToNotifyApp(Z)V

    .line 389
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/aec/IWorkflowImpl;->performEntitlement(Ljava/lang/Object;)V

    .line 391
    :cond_0
    return-void
.end method
