.class public Lcom/sec/internal/ims/config/ConfigModule;
.super Landroid/os/Handler;
.source "ConfigModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/config/IConfigModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;
    }
.end annotation


# static fields
.field private static final AUTOCONF_TAG:Ljava/lang/String; = "Autoconf"

.field private static final AUTO_CONFIG_IMS_PDN:I = 0x1

.field private static final ERROR_WORKFLOW_IS_NULL:I = 0x2c4

.field private static final LOCAL_CONFIG_VERS:I = 0x3b

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private m403ForbiddenCounter:I

.field private mCallState:I

.field private mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

.field private mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

.field private final mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsRcsEnabled:Z

.field private mIsReceivedSimRefresh:Z

.field private mIsRemoteConfigNeeded:Z

.field private mListener:Lcom/sec/ims/IAutoConfigurationListener;

.field private mMobileNetwork:Z

.field private mMsisdnNumber:Ljava/lang/String;

.field private mNeedRetryOverWifi:Z

.field private mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/ConnectivityManager$NetworkCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/Network;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOnCompleteList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAutoComplete:Z

.field private mPendingAutoConfig:Z

.field private mPendingDeregi:Z

.field private mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mVerificationCode:Ljava/lang/String;

.field private mWifiNetwork:Z

.field private mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

.field private mWorkflowThreadList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-class v0, Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V
    .locals 3
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 132
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Lcom/sec/ims/IAutoConfigurationListener;

    .line 105
    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 108
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    .line 112
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 113
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 114
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    .line 116
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 117
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 118
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 120
    iput v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    .line 124
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 125
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    .line 126
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    .line 127
    iput v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    .line 133
    iput-object p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 134
    iput-object p3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 135
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Autoconfig"

    const/16 v2, 0x64

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/config/ConfigModule;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigModule;

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/config/ConfigModule;)Lcom/sec/internal/ims/config/WorkFlowController;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigModule;

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/internal/ims/config/ConfigModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/ConfigModule;
    .param p1, "x1"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkChatPolicyforSMSAppChange(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .line 1275
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1276
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1277
    .local v1, "rcsAs":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->CHANGE_MSG_APP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1279
    const-string/jumbo v2, "support_chat_on_default_mms_app"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v2

    .line 1280
    .local v2, "supportchatpolicy":I
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-static {v4, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v4

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .line 1283
    .local v3, "isRcsUserSettingNotSet":Z
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "jibe"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1284
    const/4 v2, 0x0

    .line 1286
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyDefaultSmsChanged - SupportChat Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1287
    return v2
.end method

.method private checkMsisdnSkipCount(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 1246
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1247
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "rcsAs":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_2

    const-string v2, "jibe"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1254
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getMsisdnSkipCount(I)I

    move-result v2

    .line 1255
    .local v2, "skipcount":I
    sget-object v4, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MsisdnSkipCount : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", MobileNetwork : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1256
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 1250
    .end local v2    # "skipcount":I
    :cond_2
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "no need to check MsisdnSkipCount"

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1251
    return v3
.end method

.method private clearWorkFlow(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v0

    .line 998
    .local v0, "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    .line 999
    .local v1, "workThread":Landroid/os/HandlerThread;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->isConfigOngoing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1000
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clearWorkFlow started"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1001
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->stopWorkFlow()V

    .line 1002
    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    .line 1003
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 1004
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clearWorkFlow done"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1006
    :cond_0
    return-void
.end method

.method private clearWorkFlowThread(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1009
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    .line 1010
    .local v0, "workflowThread":Landroid/os/HandlerThread;
    if-nez v0, :cond_0

    .line 1011
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "clearWorkFlowThread: workflowThread is null"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    return-void

    .line 1014
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "clearWorkFlowThread: started"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 1017
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1022
    goto :goto_1

    .line 1021
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 1018
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 1023
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "clearWorkFlowThread: done"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1024
    return-void

    .line 1021
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1022
    throw v1
.end method

.method private createNetworkListener(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .line 1453
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createNetworkListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule$1;-><init>(Lcom/sec/internal/ims/config/ConfigModule;II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    return-void
.end method

.method private deregisterNetworkCallback(I)V
    .locals 3
    .param p1, "phoneId"    # I

    .line 1546
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deregisterNetworkCallback"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1548
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1549
    .local v2, "listener":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1550
    .end local v2    # "listener":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_0

    .line 1551
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1552
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1553
    return-void
.end method

.method private dumpAutoConfDb(Landroid/net/Uri;)V
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .line 1228
    const-string v0, "Autoconf"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 1230
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1231
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1231
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1234
    .end local v3    # "i":I
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 1235
    const-string v3, "  DB is empty"

    invoke-static {v0, v3, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 1228
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 1238
    :cond_1
    const-string v3, "  DB is not available"

    invoke-static {v0, v3, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1240
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1242
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_3
    goto :goto_4

    .line 1228
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v2, :cond_4

    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v4

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/sec/internal/ims/config/ConfigModule;
    .end local p1    # "uri":Landroid/net/Uri;
    :cond_4
    :goto_3
    throw v3
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1240
    .end local v2    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/ConfigModule;
    .restart local p1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 1241
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "  Skip dump auto conf db"

    invoke-static {v0, v3, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1243
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_4
    return-void
.end method

.method private init(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 908
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 909
    return-void
.end method

.method private isGcEnabledChange(I)Z
    .locals 5
    .param p1, "phoneId"    # I

    .line 1604
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "imsswitch"

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1606
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "isGcEnabledChange"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1607
    .local v1, "isGcEnabledChange":Z
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGcEnabledChange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return v1
.end method

.method private isMobileDataOn()Z
    .locals 3

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isRoamingMobileDataOn(I)Z
    .locals 8
    .param p1, "phoneId"    # I

    .line 1032
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1033
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1034
    return v1

    .line 1036
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSubscriptionId()I

    move-result v2

    .line 1037
    .local v2, "subId":I
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result v3

    .line 1038
    .local v3, "isNetworkRoaming":Z
    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 1039
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "is in Home Network"

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1040
    return v4

    .line 1042
    :cond_1
    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 1043
    invoke-virtual {v5, v6, v7, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getbySubId(Landroid/content/Context;II)I

    move-result v5

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    sget v7, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->DATA_ROAMING_UNKNOWN:I

    .line 1044
    invoke-virtual {v5, v6, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v5

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->ROAMING_DATA_ENABLED:I

    if-ne v5, v6, :cond_3

    :cond_2
    move v1, v4

    .line 1047
    .local v1, "isDataRoamingOn":Z
    :cond_3
    sget-object v4, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Roaming && isDataRoamingOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1048
    return v1
.end method

.method private isWifiSwitchOn()Z
    .locals 2

    .line 1052
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1053
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private onSimReady(I)V
    .locals 13
    .param p1, "phoneId"    # I

    .line 912
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimReady:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 914
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallback(I)V

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v0

    .line 916
    .local v0, "isChanged":Z
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result v1

    .line 917
    .local v1, "isRcsAvailable":Z
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v2

    .line 918
    .local v2, "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    .line 919
    .local v3, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 920
    .local v4, "mno":Lcom/sec/internal/constants/Mno;
    const-string/jumbo v5, "rcs_default_enabled"

    const/4 v6, -0x1

    invoke-static {p1, v5, v6}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v5

    .line 922
    .local v5, "rcsDefaultEnabled":I
    sget-object v7, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRcsAvailable: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isChanged: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " mIsRemoteConfigNeeded: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " mIsReceivedSimRefresh: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " rcsDefaultEnabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 924
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",RCSE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",SIM:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v8, 0x13000008

    invoke-static {v8, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 925
    iget-object v7, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRcsEnabled: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 927
    const/4 v7, 0x1

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v8, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    if-eqz v8, :cond_0

    .line 928
    sget-object v6, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v8, "sim info is refreshed and reset acsSettings"

    invoke-static {v6, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 929
    const v6, 0x13000013

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",SIMINFO:REF,RACS"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 931
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 932
    sget-object v6, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p1, v6}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 933
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 934
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 935
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 936
    return-void

    .line 938
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    .line 939
    if-eqz v0, :cond_1

    .line 940
    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->SIM_SWAP:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {p0, p1, v9}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 941
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 942
    sget-object v9, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v10, "changed sim info, reset to MSISDN_FROM_PAU"

    invoke-static {v9, p1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 943
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    .line 947
    :cond_1
    const/4 v9, 0x0

    if-nez v2, :cond_5

    .line 948
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v6

    if-nez v6, :cond_3

    .line 949
    sget-object v6, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v7, "init workflow"

    invoke-static {v6, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 950
    const v6, 0x13000014

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",WF:INIT"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 951
    invoke-virtual {p0, v8, p1, v8, v9}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 953
    :cond_3
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 954
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->updateDualRcsNetwork(I)V

    .line 956
    :cond_4
    return-void

    .line 958
    :cond_5
    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    .line 959
    sget-object v10, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "reinit workflow"

    invoke-static {v10, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    const v10, 0x13000015

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",WF:REINIT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 961
    iget-object v10, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 963
    .local v10, "rcsAs":Ljava/lang/String;
    sget-object v11, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v4, v11, :cond_8

    sget-object v11, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v4, v11, :cond_8

    sget-object v11, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v4, v11, :cond_8

    const-string v11, "jibe"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    .line 967
    :cond_6
    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_7

    .line 968
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsCompleteStatus(Z)V

    goto :goto_1

    .line 969
    :cond_7
    iget-boolean v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    if-eqz v6, :cond_9

    .line 970
    sget-object v6, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "sim info is changed and reset acsSettings"

    invoke-static {v6, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 971
    const v6, 0x13000016

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ",SIMINFO:CHA,RACS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 973
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v6, v5, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 974
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 975
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 976
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    goto :goto_1

    .line 964
    :cond_8
    :goto_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage()V

    .line 965
    sget-object v7, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v11, "setting for starting auto config by Message app is clear"

    invoke-static {v7, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 966
    iget-object v7, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v7, v6, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 978
    :cond_9
    :goto_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->cleanup()V

    .line 979
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v6, p1, v8}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 980
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 981
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 982
    sget-object v6, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v7, "clear WorkFlow/WorkFlowThread and send init msg"

    invoke-static {v6, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 983
    invoke-virtual {p0, v8, p1, v8, v9}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 985
    .end local v10    # "rcsAs":Ljava/lang/String;
    :cond_a
    return-void
.end method

.method private processChatPolicyforSMSAppChange(IILjava/util/List;)V
    .locals 11
    .param p1, "supportchatpolicy"    # I
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation

    .line 1291
    .local p3, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "defaultmsgappinuse"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1292
    .local v0, "isSmsDefault":Z
    :goto_0
    const v3, 0x1300000a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1293
    if-eq p1, v2, :cond_d

    const-string v3, "MsgApp is changed"

    const/16 v4, 0x24

    const/4 v5, 0x2

    if-eq p1, v5, :cond_9

    const/4 v6, 0x3

    const/16 v7, 0xf

    if-eq p1, v6, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    goto/16 :goto_6

    .line 1341
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1342
    .local v3, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1343
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1344
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 1345
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)Z

    .line 1347
    .end local v3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_2
    goto :goto_1

    .line 1336
    :cond_3
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/ConfigModule;->removeMessages(I)V

    .line 1337
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    .line 1338
    goto/16 :goto_6

    .line 1317
    :cond_4
    iget v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz v6, :cond_5

    .line 1318
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 1319
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Pending deregistration on active call when MsgApp is changed"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1320
    goto/16 :goto_6

    .line 1323
    :cond_5
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1324
    .local v8, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    new-array v9, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v10, v9, v1

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v10, v9, v2

    invoke-interface {v8, v9}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v9

    if-eq v9, v7, :cond_6

    .line 1325
    invoke-interface {v8, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1326
    iget-object v9, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v9, v8, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_3

    .line 1328
    :cond_6
    if-eqz v0, :cond_7

    .line 1329
    iget-object v9, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v10

    invoke-interface {v9, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    .line 1332
    .end local v8    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_7
    :goto_3
    goto :goto_2

    .line 1333
    :cond_8
    goto :goto_6

    .line 1299
    :cond_9
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1300
    .local v7, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1301
    if-eqz v0, :cond_a

    .line 1302
    sget-object v8, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v9, "notifyDefaultSmsChanged - setStateforACS"

    invoke-static {v8, p2, v9}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1303
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 1304
    iget-object v8, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v8, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 1305
    invoke-virtual {p0, v1, p2, p3}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)Z

    goto :goto_5

    .line 1307
    :cond_a
    new-array v8, v5, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v9, v8, v1

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v9, v8, v2

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1308
    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1309
    iget-object v8, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v8, v7, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    .line 1313
    .end local v7    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_b
    :goto_5
    goto :goto_4

    .line 1314
    :cond_c
    goto :goto_6

    .line 1295
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateChatService(I)V

    .line 1296
    nop

    .line 1352
    :cond_e
    :goto_6
    return-void
.end method

.method private processConnectionChange(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1556
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1557
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No Available network"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1558
    return-void

    .line 1560
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdListIndexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 1561
    return-void

    .line 1563
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->checkMsisdnSkipCount(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1564
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "network is ready for phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1565
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1566
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "resend HANDLE_AUTO_CONFIG_RESTART"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v3, 0x13

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/config/ConfigModule;->removeMessages(ILjava/lang/Object;)V

    .line 1568
    invoke-virtual {p0, v3, p1, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1570
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "resend HANDLE_AUTO_CONFIG_START"

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1571
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1574
    :cond_4
    :goto_0
    return-void
.end method

.method private rcsProfileInit(I)Z
    .locals 7
    .param p1, "phoneId"    # I

    .line 872
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 873
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 878
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    .line 879
    .local v2, "ConfigDBVer":Ljava/lang/Integer;
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rcsProfileInit: ConfigDBVer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 880
    if-eqz v2, :cond_1

    .line 881
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsVersion(I)V

    .line 884
    :cond_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, "mnoName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v4

    if-nez v4, :cond_2

    .line 886
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v5, "rcsProfileInit: mnoName is not valid"

    invoke-virtual {v4, p1, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 887
    const v4, 0x13000011

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",INVMNO"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 888
    return v1

    .line 891
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "rcsProfile":Ljava/lang/String;
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, p1, v1}, Lcom/sec/internal/ims/config/WorkFlowController;->putRcsProfile(ILjava/lang/String;)V

    .line 893
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Autoconfig init: mnoName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", rcsProfile = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 894
    const/high16 v4, 0x13000000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 895
    const/4 v4, 0x1

    return v4

    .line 874
    .end local v1    # "rcsProfile":Ljava/lang/String;
    .end local v2    # "ConfigDBVer":Ljava/lang/Integer;
    .end local v3    # "mnoName":Ljava/lang/String;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "rcsProfileInit: no SIM loaded"

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 875
    const v2, 0x13000010

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",NOSL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 876
    return v1
.end method

.method private registerNetworkCallback(I)V
    .locals 16
    .param p1, "phoneId"    # I

    .line 1482
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerNetworkCallback"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1483
    iget-object v2, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 1484
    .local v2, "rcsNetworkType":Ljava/lang/String;
    iget-object v3, v0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 1486
    .local v3, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v4

    .line 1487
    .local v4, "subId":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 1488
    return-void

    .line 1490
    :cond_0
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_b

    aget-object v10, v6, v9

    .line 1491
    .local v10, "networkType":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x1

    if-eqz v11, :cond_2

    .line 1492
    if-nez v1, :cond_1

    move v11, v12

    goto :goto_1

    :cond_1
    move v11, v8

    :goto_1
    invoke-direct {v0, v11, v12}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallbackForNetwork(II)V

    .line 1493
    goto/16 :goto_5

    .line 1495
    :cond_2
    const/4 v11, 0x0

    .line 1496
    .local v11, "networkTypeCode":I
    new-instance v13, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v13}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1497
    .local v13, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, 0x197cf

    const/4 v5, 0x2

    if-eq v14, v15, :cond_6

    const v15, 0x37af15

    if-eq v14, v15, :cond_5

    const v15, 0x21ffc741

    if-eq v14, v15, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    const-string v14, "internet"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move v14, v8

    goto :goto_3

    :cond_5
    const-string/jumbo v14, "wifi"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move v14, v12

    goto :goto_3

    :cond_6
    const-string v14, "ims"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    move v14, v5

    goto :goto_3

    :goto_2
    const/4 v14, -0x1

    :goto_3
    const/16 v15, 0xc

    if-eqz v14, :cond_9

    if-eq v14, v12, :cond_8

    if-eq v14, v5, :cond_7

    goto :goto_4

    .line 1510
    :cond_7
    const/4 v11, 0x2

    .line 1511
    invoke-virtual {v13, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    const/4 v14, 0x4

    .line 1512
    invoke-virtual {v5, v14}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    .line 1513
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    goto :goto_4

    .line 1505
    :cond_8
    const/4 v11, 0x3

    .line 1506
    invoke-virtual {v13, v12}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    .line 1507
    invoke-virtual {v5, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1508
    goto :goto_4

    .line 1499
    :cond_9
    const/4 v11, 0x1

    .line 1500
    invoke-virtual {v13, v8}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    .line 1501
    invoke-virtual {v5, v15}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    .line 1502
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 1503
    nop

    .line 1516
    :goto_4
    iget-object v5, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1517
    invoke-direct {v0, v1, v11}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1518
    invoke-virtual {v13}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v5

    iget-object v14, v0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v14, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v3, v5, v14}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1520
    :cond_a
    invoke-direct {v0, v1, v12}, Lcom/sec/internal/ims/config/ConfigModule;->registerNetworkCallbackForNetwork(II)V

    .line 1490
    .end local v10    # "networkType":Ljava/lang/String;
    .end local v11    # "networkTypeCode":I
    .end local v13    # "builder":Landroid/net/NetworkRequest$Builder;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    const/4 v5, -0x1

    goto/16 :goto_0

    .line 1522
    :cond_b
    return-void
.end method

.method private registerNetworkCallbackForNetwork(II)V
    .locals 7
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .line 1525
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1526
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1528
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1529
    .local v1, "counterPhoneId":I
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v3

    .line 1530
    .local v3, "counterSubId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1531
    return-void

    .line 1533
    :cond_1
    const-string v4, "dual_rcs_policy"

    invoke-static {p1, v4, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1534
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1535
    .local v4, "builder":Landroid/net/NetworkRequest$Builder;
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v5, 0xc

    .line 1536
    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    .line 1537
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;

    .line 1538
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->createNetworkListener(II)V

    .line 1539
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1540
    invoke-virtual {v5, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1539
    invoke-virtual {v0, v2, v5}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1543
    .end local v0    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .end local v1    # "counterPhoneId":I
    .end local v3    # "counterSubId":I
    .end local v4    # "builder":Landroid/net/NetworkRequest$Builder;
    :cond_2
    return-void
.end method

.method private resetMsisdnFromPau(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "RES_SP_PAU"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000018

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "reset to MSISDN_FROM_PAU"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMSI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1444
    .local v0, "imsi":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v2, "msisdn_from_pau"

    const-string v3, ""

    invoke-static {p1, v1, v2, v0, v3}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    return-void
.end method

.method private startAcsWithDelay(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 1118
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1119
    .local v0, "version":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1120
    return-void

    .line 1122
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    if-lez v1, :cond_1

    .line 1123
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRetryCount:I

    .line 1124
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SSL Handshake failed. delay 5 minutes"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1125
    const/16 v1, 0xf

    const/4 v2, -0x1

    invoke-virtual {p0, v1, p1, v2}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    :cond_1
    return-void
.end method

.method private updateDualRcsNetwork(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 988
    const/4 v0, 0x1

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 989
    .local v1, "counterPhoneId":I
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetworkForNetworkType(II)Landroid/net/Network;

    move-result-object v2

    .line 990
    .local v2, "availableNetwork":Landroid/net/Network;
    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 991
    const/16 v3, 0x18

    invoke-virtual {p0, v3, p1, v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 992
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateDualRcsNetwork : "

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 994
    :cond_1
    return-void
.end method

.method private updateMsisdn(Lcom/sec/ims/ImsRegistration;)V
    .locals 3
    .param p1, "registration"    # Lcom/sec/ims/ImsRegistration;

    .line 1130
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1133
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const-string v2, "MSISDN is null, SP needs to be set to PAU"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1135
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V

    .line 1139
    :cond_0
    return-void
.end method


# virtual methods
.method public changeOpMode(ZII)V
    .locals 8
    .param p1, "isRcsEnabled"    # Z
    .param p2, "phoneId"    # I
    .param p3, "tcPopupUserAccept"    # I

    .line 781
    iput-boolean p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    .line 782
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeOpMode: mIsRcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",RCSE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x13000004

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 785
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 786
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, "rcsAs":Ljava/lang/String;
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 788
    .local v2, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v3, :cond_4

    const-string v3, "jibe"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    if-eqz v2, :cond_1

    .line 789
    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 794
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 795
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 796
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 797
    if-nez p1, :cond_2

    .line 798
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "force autoconfig for supporting up profile"

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 799
    invoke-virtual {p0, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 802
    :cond_2
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tcPopupUserAccept: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 803
    if-nez p3, :cond_3

    if-eqz p1, :cond_3

    .line 804
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 805
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "force autoconfig in case tcPopupUserAccept is zero"

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 806
    invoke-virtual {p0, v4, v5, p2}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 808
    :cond_3
    return-void

    .line 790
    :cond_4
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "changeOpMode: it is not supported"

    invoke-static {v3, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 791
    return-void
.end method

.method public dump()V
    .locals 4

    .line 1199
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1201
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Autoconfig History:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1203
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "Dump of configuration db:"

    const/4 v2, 0x1

    const-string v3, "Autoconf"

    if-eqz v0, :cond_1

    .line 1205
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1207
    const-string v0, "Dump of configuration db for simslot0:"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "*#simslot0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    .line 1210
    const-string v0, "Dump of configuration db for simslot1:"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "*#simslot1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    goto :goto_0

    .line 1214
    :cond_0
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->dumpAutoConfDb(Landroid/net/Uri;)V

    goto :goto_0

    .line 1218
    :cond_1
    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1219
    const-string v0, "  mContext is null!"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1222
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/WorkFlowController;->dump()V

    .line 1225
    return-void
.end method

.method public getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
    .locals 1
    .param p1, "phoneId"    # I

    .line 696
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
    .locals 1
    .param p1, "phoneId"    # I

    .line 1063
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetwork(I)Landroid/util/Pair;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/net/Network;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1579
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1580
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v2, 0x1

    .line 1581
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1580
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1581
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1582
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1583
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1585
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1586
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 1587
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1589
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1590
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    .line 1591
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    .line 1593
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1594
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAvailableNetworkForNetworkType(II)Landroid/net/Network;
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "networkType"    # I

    .line 1600
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getRcsConfVersion(I)Ljava/lang/Integer;
    .locals 3
    .param p1, "phoneId"    # I

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "version"

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getRcsConfigMark(I)Ljava/lang/String;
    .locals 7
    .param p1, "phoneId"    # I

    .line 817
    const-string v0, ""

    .line 818
    .local v0, "rcsConfigMark":Ljava/lang/String;
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 819
    .local v1, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_0

    .line 820
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getRcsConfigMark: no SIM loaded"

    invoke-static {v2, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 821
    return-object v0

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 824
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 825
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 826
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 827
    .local v4, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getRcsConfigMark()Ljava/lang/String;

    move-result-object v0

    .line 828
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 829
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRcsConfigMark: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 830
    goto :goto_1

    .line 832
    .end local v4    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_1
    goto :goto_0

    .line 834
    :cond_2
    :goto_1
    return-object v0
.end method

.method public getRcsProfile(I)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .line 174
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 177
    iget v0, v7, Landroid/os/Message;->arg1:I

    .line 178
    .local v0, "phoneId":I
    iget v1, v7, Landroid/os/Message;->what:I

    const/4 v8, 0x3

    if-eq v1, v8, :cond_1

    iget v1, v7, Landroid/os/Message;->what:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v9, v0

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    iget-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v9, v0

    .line 182
    .end local v0    # "phoneId":I
    .local v9, "phoneId":I
    :goto_1
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v10

    .line 183
    .local v10, "workflow":Lcom/sec/internal/interfaces/ims/config/IWorkflow;
    invoke-static {v9}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v11

    .line 184
    .local v11, "mno":Lcom/sec/internal/constants/Mno;
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getNetworkType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    .line 185
    .local v12, "rcsNetworkType":Ljava/lang/String;
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 186
    .local v13, "rcsAs":Ljava/lang/String;
    invoke-static {v9}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v14

    .line 187
    .local v14, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    const/4 v0, 0x1

    const/4 v15, 0x0

    if-eqz v14, :cond_2

    invoke-interface {v14, v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRemoteConfigNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v15

    :goto_2
    iput-boolean v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    .line 189
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 190
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rcsNetworkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " rcsAs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mIsRemoteConfigNeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 192
    iget v1, v7, Landroid/os/Message;->what:I

    const/16 v2, 0x320

    const-string/jumbo v3, "phoneId"

    const-string v4, "lastError"

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    .line 649
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown message"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_16

    .line 640
    :pswitch_0
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v1, v7, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    if-eqz v14, :cond_3

    const-string v0, "dual_simhandling"

    invoke-interface {v14, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 642
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Clear workflow"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 643
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlow(I)V

    .line 645
    :cond_3
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(I)V

    .line 646
    goto/16 :goto_16

    .line 635
    :pswitch_1
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v1, v7, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/Network;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->processConnectionChange(I)V

    .line 637
    goto/16 :goto_16

    .line 625
    :pswitch_2
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/WorkFlowController;->onBootCompleted()V

    .line 626
    goto/16 :goto_16

    .line 629
    :pswitch_3
    if-eqz v10, :cond_3d

    .line 630
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage()V

    goto/16 :goto_16

    .line 485
    :pswitch_4
    if-eqz v10, :cond_3d

    .line 486
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendMsisdnNumber(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 336
    :pswitch_5
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "HANDLE_AUTO_CONFIG_RESTART:"

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 337
    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v9, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 338
    if-nez v10, :cond_4

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "version":I
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "workflow is null. skip autoconfig"

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 341
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v8, v0, v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 342
    goto/16 :goto_16

    .line 344
    .end local v0    # "version":I
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReadyNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Start command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 347
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    invoke-virtual {v1, v9, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v1

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_16

    .line 618
    :pswitch_6
    if-eqz v10, :cond_5

    .line 619
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->onDefaultSmsPackageChanged()V

    .line 621
    :cond_5
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->notifyDefaultSmsChanged(I)V

    .line 622
    goto/16 :goto_16

    .line 354
    :pswitch_7
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "HANDLE_AUTO_CONFIG_START_WITH_SUITABLE_NETWORK retrigger ACS with best network"

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v1, v9, v0}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 356
    goto/16 :goto_16

    .line 611
    :pswitch_8
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->init(I)V

    .line 612
    if-eqz v10, :cond_3d

    .line 613
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->handleMSISDNDialog()V

    goto/16 :goto_16

    .line 592
    :pswitch_9
    iget v9, v7, Landroid/os/Message;->arg1:I

    .line 593
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 595
    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    .line 596
    .local v1, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->isRcsDormantMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 597
    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 598
    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 599
    invoke-virtual {v6, v0, v9, v1}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)Z

    goto/16 :goto_16

    .line 600
    :cond_6
    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_PARAGUAY:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->PERSONAL_ARGENTINA:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_7

    .line 602
    const-string v2, "jibe"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v9, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 604
    :cond_7
    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/config/ConfigTrigger;->setStateforTriggeringACS(I)V

    .line 605
    invoke-virtual {v6, v0, v9, v1}, Lcom/sec/internal/ims/config/ConfigModule;->triggerAutoConfig(ZILjava/util/List;)Z

    goto/16 :goto_16

    .line 588
    .end local v1    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :pswitch_a
    iget v0, v7, Landroid/os/Message;->arg1:I

    iget v1, v7, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onTelephonyCallStatusChanged(II)V

    .line 589
    goto/16 :goto_16

    .line 541
    :pswitch_b
    const/4 v1, -0x1

    .line 542
    .local v1, "lastErrorCode":I
    iget-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_8

    .line 543
    iget-object v5, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 544
    iget-object v4, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v9, v3

    .end local v9    # "phoneId":I
    .local v3, "phoneId":I
    goto :goto_3

    .line 546
    .end local v3    # "phoneId":I
    .restart local v9    # "phoneId":I
    :cond_8
    const/4 v3, 0x0

    move v9, v3

    .line 548
    :goto_3
    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v11, v3, :cond_9

    iget v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-eqz v3, :cond_9

    .line 549
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Pending Autoconfig comlete event on active call"

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 550
    iput-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 551
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/params/ACSConfig;->setAcsLastError(I)V

    goto/16 :goto_16

    .line 553
    :cond_9
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    .line 554
    .local v0, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 555
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget v4, v6, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    invoke-virtual {v3, v1, v9, v0, v4}, Lcom/sec/internal/ims/config/ConfigComplete;->setStateforACSComplete(IILjava/util/List;I)V

    .line 556
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v4, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v4, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->getWorkflow(I)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v4

    invoke-virtual {v3, v9, v0, v1, v4}, Lcom/sec/internal/ims/config/ConfigComplete;->handleAutoconfigurationComplete(ILjava/util/List;ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 558
    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v11, v3, :cond_f

    .line 559
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mNeedRetryOverWifi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mWifiNetwork = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", lastErrorCode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v9, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    iget-boolean v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    if-eqz v3, :cond_f

    .line 562
    if-eqz v1, :cond_b

    if-eq v1, v2, :cond_b

    const/16 v2, 0x321

    if-eq v1, v2, :cond_b

    const/16 v2, 0x322

    if-eq v1, v2, :cond_b

    const/16 v2, 0x323

    if-eq v1, v2, :cond_b

    const/16 v2, 0x324

    if-eq v1, v2, :cond_b

    const/16 v2, 0x325

    if-ne v1, v2, :cond_a

    goto :goto_4

    .line 570
    :cond_a
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "clear mNeedRetryOverWifi to false"

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 571
    iput-boolean v15, v6, Lcom/sec/internal/ims/config/ConfigModule;->mNeedRetryOverWifi:Z

    goto :goto_6

    .line 565
    :cond_b
    :goto_4
    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWifiNetwork:Z

    if-eqz v2, :cond_f

    .line 566
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "reset AcsSettings for KT over Wifi"

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 567
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    goto :goto_6

    .line 576
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 577
    .local v3, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_d

    .line 578
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 580
    .end local v3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_d
    goto :goto_5

    .line 581
    :cond_e
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "DDS set to other SIM"

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 584
    .end local v0    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :cond_f
    :goto_6
    goto/16 :goto_16

    .line 532
    .end local v1    # "lastErrorCode":I
    :pswitch_c
    iget-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 533
    .local v0, "ar":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onSimRefresh(I)V

    .line 534
    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 535
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sim state changed, reset to MSISDN_FROM_PAU"

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 536
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->resetMsisdnFromPau(I)V

    goto/16 :goto_16

    .line 513
    .end local v0    # "ar":Lcom/sec/internal/helper/AsyncResult;
    :pswitch_d
    iget-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/helper/AsyncResult;

    .line 514
    .local v0, "r":Lcom/sec/internal/helper/AsyncResult;
    iget-object v1, v0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 515
    .local v1, "simslot":I
    invoke-direct {v6, v1}, Lcom/sec/internal/ims/config/ConfigModule;->onSimReady(I)V

    .line 516
    goto/16 :goto_16

    .line 519
    .end local v0    # "r":Lcom/sec/internal/helper/AsyncResult;
    .end local v1    # "simslot":I
    :pswitch_e
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    .line 520
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v9, v15}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 521
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 522
    .local v1, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_10

    .line 523
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "task is set as IDLE because of dds change."

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 524
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 526
    .end local v1    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_10
    goto :goto_7

    .line 528
    :cond_11
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Network configs are reset"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    goto/16 :goto_16

    .line 508
    :pswitch_f
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/config/ConfigModule;->setDualSimRcsAutoConfig(Z)V

    .line 509
    const/4 v0, 0x0

    invoke-virtual {v6, v5, v9, v15, v0}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 510
    goto/16 :goto_16

    .line 491
    :pswitch_10
    if-eqz v10, :cond_3d

    .line 492
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsProfile(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 493
    iget-boolean v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-nez v1, :cond_13

    .line 494
    iget-boolean v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-nez v1, :cond_12

    .line 495
    iput-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 497
    :cond_12
    iget-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-interface {v10, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_16

    .line 499
    :cond_13
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending AutoConfig mIsRcsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_16

    .line 502
    :cond_14
    iget-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    invoke-interface {v10, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->changeOpMode(Z)V

    goto/16 :goto_16

    .line 479
    :pswitch_11
    if-eqz v10, :cond_3d

    .line 480
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    invoke-interface {v10, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->sendVerificationCode(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 473
    :pswitch_12
    if-eqz v10, :cond_3d

    .line 474
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v10, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_16

    .line 467
    :pswitch_13
    if-eqz v10, :cond_3d

    .line 468
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Lcom/sec/ims/IAutoConfigurationListener;

    invoke-interface {v10, v0}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;)V

    goto/16 :goto_16

    .line 233
    :pswitch_14
    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    sget-object v2, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-eq v11, v2, :cond_15

    move v2, v0

    goto :goto_8

    :cond_15
    move v2, v15

    :goto_8
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setNeedResetConfig(Z)V

    .line 234
    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    .line 235
    .local v1, "rtlst":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 236
    .restart local v3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 237
    iget-object v4, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/16 v8, 0x8f

    invoke-interface {v4, v8, v9}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    .line 239
    .end local v3    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_16
    const/4 v8, 0x3

    goto :goto_9

    .line 240
    :cond_17
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->setIsTriggeredByNrcr(Z)V

    .line 243
    .end local v1    # "rtlst":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :pswitch_15
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->PUSH_SMS:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-virtual {v6, v9, v1}, Lcom/sec/internal/ims/config/ConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    goto/16 :goto_f

    .line 359
    :pswitch_16
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v8, "HANDLE_AUTO_CONFIG_COMPLETE:"

    invoke-static {v1, v9, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    iget v1, v7, Landroid/os/Message;->arg1:I

    .line 361
    .local v1, "oldVersion":I
    iget v8, v7, Landroid/os/Message;->arg2:I

    .line 362
    .local v8, "newVersion":I
    if-nez v10, :cond_18

    const/16 v16, 0x2c4

    goto :goto_a

    :cond_18
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->getLastErrorCode()I

    move-result v16

    :goto_a
    move/from16 v17, v16

    .line 364
    .local v17, "lastErrorCode":I
    invoke-static {v9}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v16

    .line 366
    .local v16, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v16, :cond_19

    invoke-interface/range {v16 .. v16}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v18

    if-eqz v18, :cond_19

    iget-object v15, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v15, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->isGcForEur(Landroid/content/Context;I)Z

    move-result v15

    if-eqz v15, :cond_19

    if-nez v8, :cond_19

    .line 367
    sget-object v15, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "it needs to perform again Auto-configuration process"

    invoke-static {v15, v9, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 369
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const/4 v15, -0x1

    invoke-static {v5, v15, v9}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    .line 373
    :cond_19
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Autoconfig complete: old version = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new version = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", last errorcode = "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    .end local v17    # "lastErrorCode":I
    .local v2, "lastErrorCode":I
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v9, v15}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 376
    const v5, 0x13000006

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",OV:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",NV:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",LEC:"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 379
    iget-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    if-eqz v0, :cond_1b

    if-lez v8, :cond_1b

    const/16 v0, 0x3b

    if-ne v8, v0, :cond_1a

    goto :goto_b

    :cond_1a
    const/4 v0, 0x0

    goto :goto_c

    :cond_1b
    :goto_b
    const/4 v0, 0x1

    .line 380
    .local v0, "localConfigUsedState":Z
    :goto_c
    sget-object v5, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "localConfigUsedState: "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v9, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    const v5, 0x1300000c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ",LCUS:"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 382
    if-eqz v14, :cond_1c

    .line 383
    invoke-interface {v14, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateLocalConfigUsedState(Z)V

    .line 386
    :cond_1c
    sget-object v5, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AcsTryReason: "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v9, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    const/16 v5, 0x3db

    if-eq v2, v5, :cond_20

    .line 389
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->getIsAcsFirstTry(I)Z

    move-result v5

    const/16 v7, 0xc8

    if-nez v5, :cond_1d

    if-ne v2, v7, :cond_1d

    if-gez v8, :cond_1e

    .line 390
    :cond_1d
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    invoke-virtual {v5, v8, v2, v9}, Lcom/sec/internal/ims/config/ConfigComplete;->sendRCSAInfoToHQM(III)Z

    .line 391
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v5, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->removeIsAcsFirstTry(I)V

    .line 394
    :cond_1e
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 395
    .local v5, "cv":Landroid/content/ContentValues;
    if-ne v2, v7, :cond_1f

    .line 396
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v7, "RACC"

    invoke-virtual {v5, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d

    .line 398
    :cond_1f
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v7, "RACF"

    invoke-virtual {v5, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    :goto_d
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v15, "overwrite_mode"

    invoke-virtual {v5, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget-object v7, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v15, "DRCS"

    invoke-static {v9, v7, v15, v5}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 404
    .end local v5    # "cv":Landroid/content/ContentValues;
    :cond_20
    const/16 v5, 0x320

    if-ne v2, v5, :cond_21

    .line 405
    sget-object v5, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v7, "SSL Handshake failed"

    invoke-static {v5, v9, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 406
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->startAcsWithDelay(I)V

    .line 407
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 408
    .local v5, "onComplete":Landroid/os/Message;
    if-eqz v5, :cond_3d

    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v11, v7, :cond_3d

    .line 409
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 410
    .local v7, "bundle":Landroid/os/Bundle;
    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 411
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 412
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 413
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 414
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 415
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_16

    .line 419
    .end local v5    # "onComplete":Landroid/os/Message;
    :cond_21
    if-eqz v16, :cond_22

    invoke-interface/range {v16 .. v16}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v5

    if-nez v5, :cond_22

    const/16 v5, 0x2c4

    if-ne v2, v5, :cond_22

    .line 420
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "autoconfiguration failed because sim is unavailable."

    invoke-static {v3, v9, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 421
    goto/16 :goto_16

    .line 424
    :cond_22
    iget-object v5, v6, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 425
    .restart local v5    # "onComplete":Landroid/os/Message;
    if-eqz v5, :cond_24

    .line 426
    sget-object v7, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v15, "send complete message"

    invoke-static {v7, v9, v15}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    if-eqz v8, :cond_23

    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v11, v7, :cond_23

    .line 428
    iget-object v7, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v15, 0x0

    invoke-virtual {v7, v9, v15}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 430
    :cond_23
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 431
    .restart local v7    # "bundle":Landroid/os/Bundle;
    invoke-virtual {v7, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 432
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 433
    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 434
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 435
    const/4 v5, 0x0

    .line 436
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 437
    .end local v7    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_e

    :cond_24
    iget-boolean v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    if-eqz v3, :cond_25

    .line 438
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "complete autoconfiguration and send EVENT_AUTOCONFIGURATION_COMPLETE msg"

    invoke-static {v3, v9, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 439
    const v3, 0x1300000d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",CONINFO:CHA"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 440
    invoke-virtual {v6, v9, v2}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    goto :goto_e

    .line 442
    :cond_25
    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_26

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v11, v3, :cond_26

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v11, v3, :cond_26

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v11, v3, :cond_26

    if-ne v1, v8, :cond_26

    .line 445
    const v3, 0x1300000e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",CONINFO:NONCHA"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 446
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v4, "same version. no event"

    invoke-virtual {v3, v9, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_e

    .line 448
    :cond_26
    const v3, 0x1300000f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",NEEDRECON"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 449
    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "no exist complete message. send EVENT_RECONFIGURATION"

    invoke-virtual {v3, v9, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 450
    invoke-virtual {v6, v9, v2}, Lcom/sec/internal/ims/config/ConfigModule;->onNewRcsConfigurationAvailable(II)V

    .line 453
    :goto_e
    iget-boolean v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    if-eqz v3, :cond_3d

    .line 454
    const/4 v3, 0x0

    iput-boolean v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoConfig:Z

    .line 455
    iget-boolean v4, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRcsEnabled:Z

    if-eqz v4, :cond_3d

    .line 456
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/params/ACSConfig;->resetAcsSettings()V

    .line 457
    const/16 v4, 0x8

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/config/ConfigModule;->removeMessages(I)V

    .line 458
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v9, v3, v7}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 459
    const/4 v4, 0x2

    invoke-virtual {v6, v4}, Lcom/sec/internal/ims/config/ConfigModule;->removeMessages(I)V

    .line 460
    invoke-virtual {v6, v4, v9, v3, v7}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 192
    .end local v0    # "localConfigUsedState":Z
    .end local v1    # "oldVersion":I
    .end local v2    # "lastErrorCode":I
    .end local v5    # "onComplete":Landroid/os/Message;
    .end local v8    # "newVersion":I
    .end local v16    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :pswitch_17
    const/4 v1, 0x1

    goto :goto_10

    .line 246
    :goto_f
    :pswitch_18
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartForceCmd(Z)V

    .line 249
    :goto_10
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 250
    if-nez v10, :cond_29

    .line 251
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "workflow is null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {v9}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 253
    .local v0, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v1

    if-nez v1, :cond_27

    goto :goto_11

    .line 256
    :cond_27
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "try init workflow and start again"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v2, v9, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 258
    const/4 v3, 0x2

    invoke-virtual {v6, v3, v9, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 260
    goto/16 :goto_16

    .line 254
    :cond_28
    :goto_11
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "sim is not ready, start config finished"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    .line 262
    .end local v0    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_29
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HANDLE_AUTO_CONFIG_START:"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 264
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->isGcEnabledChange(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 265
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearToken()V

    .line 268
    :cond_2a
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->checkNetworkConnectivity()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 269
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    invoke-virtual {v1, v9, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v1

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    .line 271
    goto/16 :goto_16

    .line 274
    :cond_2b
    iget-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    if-eqz v0, :cond_2c

    .line 275
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need CurrConfig"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 276
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->startCurrConfig()V

    .line 277
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 278
    goto/16 :goto_16

    .line 281
    :cond_2c
    const/4 v1, 0x0

    const-string/jumbo v0, "rcs_auto_config_pdn"

    invoke-static {v9, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ps_only_network"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2d

    .line 282
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 283
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto/16 :goto_14

    .line 287
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->isRoamingMobileDataOn(I)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_13

    .line 312
    :cond_2e
    if-eqz v14, :cond_2f

    invoke-interface {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isMobileDataOn()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 314
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Mobile Data ON & WIFI ON case for PS only network."

    invoke-static {v0, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v0

    .line 316
    .local v0, "version":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v6, v3, v0, v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_14

    .line 312
    .end local v0    # "version":I
    :cond_2f
    :goto_12
    goto :goto_14

    .line 288
    :cond_30
    :goto_13
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Mobile Data is off or roaming data off in roaming area"

    invoke-static {v0, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->getCurrentRcsConfigVersion(I)I

    move-result v0

    .line 290
    .restart local v0    # "version":I
    const-string/jumbo v2, "wifi"

    invoke-virtual {v12, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/config/ConfigModule;->isWifiSwitchOn()Z

    move-result v2

    if-nez v2, :cond_31

    goto/16 :goto_15

    .line 296
    :cond_31
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Mobile Data is off but WiFi is on"

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 297
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v11, v2, :cond_32

    .line 298
    const/4 v2, 0x0

    iput-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 301
    :cond_32
    if-eqz v14, :cond_33

    invoke-interface {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 302
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "WiFi is on. Register to VOLTE to receive OTP message for PS only network"

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    nop

    .line 304
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 303
    const/4 v3, 0x3

    invoke-virtual {v6, v3, v0, v0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    goto :goto_12

    .line 306
    :cond_33
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Mobile Data is off but WiFi is on. So wait 20 seconds."

    invoke-static {v2, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 307
    const/4 v2, 0x3

    invoke-virtual {v6, v2}, Lcom/sec/internal/ims/config/ConfigModule;->removeMessages(I)V

    .line 308
    nop

    .line 309
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 308
    invoke-virtual {v6, v2, v0, v0, v3}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v6, v3, v4, v5}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_12

    .line 321
    .end local v0    # "version":I
    :cond_34
    :goto_14
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto Config Start: ReadyNetwork = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Start command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    .line 322
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/config/ConfigTrigger;->getReadyStartCmdList(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 321
    invoke-static {v0, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 323
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 324
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v1, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    invoke-virtual {v1, v9, v2}, Lcom/sec/internal/ims/config/WorkFlowController;->isSimInfochanged(IZ)Z

    move-result v1

    iget-boolean v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoConfig(Lcom/sec/internal/interfaces/ims/config/IWorkflow;IZZ)V

    goto/16 :goto_16

    .line 327
    :cond_35
    if-eqz v14, :cond_36

    invoke-interface {v14, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_37

    :cond_36
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v11, v0, :cond_3d

    .line 328
    invoke-virtual {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->getAvailableNetwork(I)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3d

    .line 329
    :cond_37
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "No conditions satisfied to start Auto Config, proceed to VOLTE REG"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 330
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2, v2, v0}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_16

    .line 291
    .restart local v0    # "version":I
    :cond_38
    :goto_15
    sget-object v1, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Both Mobile Data and WiFi are off, skip autoconfig"

    invoke-static {v1, v9, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 292
    nop

    .line 293
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 292
    const/4 v2, 0x3

    invoke-virtual {v6, v2, v0, v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 294
    goto/16 :goto_16

    .line 194
    .end local v0    # "version":I
    :pswitch_19
    if-nez v10, :cond_3c

    .line 195
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "HANDLE_AUTO_CONFIG_INIT:"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->rcsProfileInit(I)Z

    move-result v0

    if-nez v0, :cond_39

    .line 198
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SIM is not ready. skip init workflow"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    goto/16 :goto_16

    .line 202
    :cond_39
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "workflowThread_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 203
    .local v7, "workflowThread":Landroid/os/HandlerThread;
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 204
    new-instance v0, Lcom/sec/internal/ims/config/CustomizationManager;

    invoke-direct {v0}, Lcom/sec/internal/ims/config/CustomizationManager;-><init>()V

    .line 205
    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, v6, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v9, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v5

    .line 204
    move-object/from16 v3, p0

    move v4, v9

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/config/CustomizationManager;->getConfigManager(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;IZ)Lcom/sec/internal/interfaces/ims/config/IWorkflow;

    move-result-object v10

    .line 207
    invoke-direct {v6, v9}, Lcom/sec/internal/ims/config/ConfigModule;->clearWorkFlowThread(I)V

    .line 208
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkflowThreadList:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    if-nez v10, :cond_3a

    .line 211
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "workflow is null. skip init workflow, regard old version and new version as 0"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/config/WorkFlowController;->removeWorkFlow(I)V

    .line 213
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2, v2, v0}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 214
    goto :goto_16

    .line 216
    :cond_3a
    iget-object v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, v9, v10}, Lcom/sec/internal/ims/config/WorkFlowController;->initWorkflow(ILcom/sec/internal/interfaces/ims/config/IWorkflow;)V

    .line 217
    const v0, 0x1300000b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",WF:CR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 219
    iget-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsRemoteConfigNeeded:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    if-eqz v0, :cond_3b

    .line 220
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "clear config info because of sim refresh"

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->clearAutoConfigStorage()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    .line 224
    .end local v7    # "workflowThread":Landroid/os/HandlerThread;
    :cond_3b
    goto :goto_16

    .line 225
    :cond_3c
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "re-init Workflow if needed."

    invoke-static {v0, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/config/IWorkflow;->reInitIfNeeded()V

    .line 229
    nop

    .line 651
    :cond_3d
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSequentially()V
    .locals 6

    .line 140
    new-instance v0, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    .line 142
    .local v0, "receiver":Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 143
    .local v2, "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_0

    .line 144
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->addActionAirplaneMode()V

    .line 146
    :cond_0
    const/16 v4, 0xc

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 147
    invoke-interface {v2, p0, v4, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimRemoved(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 148
    const/16 v4, 0xb

    invoke-interface {v2, p0, v4, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 149
    .end local v2    # "sm":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    goto :goto_0

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/ConfigModule$IntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    .line 153
    .local v1, "phoneCount":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 154
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, " Registering for DDS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v2, 0xa

    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForDDSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 158
    :cond_2
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 159
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 160
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 161
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkLists:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 162
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mNetworkListeners:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 160
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 166
    new-instance v2, Lcom/sec/internal/ims/config/WorkFlowController;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/WorkFlowController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    .line 168
    new-instance v2, Lcom/sec/internal/ims/config/ConfigTrigger;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/sec/internal/ims/config/ConfigTrigger;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    .line 169
    new-instance v2, Lcom/sec/internal/ims/config/ConfigComplete;

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {v2, v3, v4, p0, v5}, Lcom/sec/internal/ims/config/ConfigComplete;-><init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/config/IConfigModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigComplete:Lcom/sec/internal/ims/config/ConfigComplete;

    .line 170
    return-void
.end method

.method public isRcsEnabled(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 1366
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->isImsSwitchEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isSimMoActivatedAndRcsEurSupported(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "sm"    # Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .param p3, "rm"    # Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 724
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->checkSupportSimMobilityForRcsEur(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidAcsVersion(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isValidAcsVersion(I)Z

    move-result v0

    return v0
.end method

.method public isValidConfigDb(I)Z
    .locals 10
    .param p1, "phoneId"    # I

    .line 849
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_1

    .line 853
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 854
    .local v0, "current":Ljava/util/Date;
    const-wide/16 v2, 0x0

    .line 855
    .local v2, "nextAutoConfigTime":J
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    .line 856
    const-string v5, "info/next_autoconfig_time"

    invoke-static {v5, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 855
    invoke-static {v4, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 858
    .local v4, "time":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 860
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v2, v5

    .line 863
    goto :goto_0

    .line 861
    :catch_0
    move-exception v5

    .line 862
    .local v5, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid next autoconfig time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 866
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v5, v2, v5

    .line 867
    .local v5, "remainingValidity":J
    sget-object v7, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remainingValidity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 868
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    .line 850
    .end local v0    # "current":Ljava/util/Date;
    .end local v2    # "nextAutoConfigTime":J
    .end local v4    # "time":Ljava/lang/String;
    .end local v5    # "remainingValidity":J
    :cond_3
    :goto_1
    return v1
.end method

.method public isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    return v0
.end method

.method public notifyDefaultSmsChanged(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1265
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyDefaultSmsChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    .line 1267
    .local v0, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    if-nez v0, :cond_0

    .line 1268
    return-void

    .line 1270
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->checkChatPolicyforSMSAppChange(I)I

    move-result v1

    .line 1271
    .local v1, "supportChatPolicy":I
    invoke-direct {p0, v1, p1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->processChatPolicyforSMSAppChange(IILjava/util/List;)V

    .line 1272
    return-void
.end method

.method public obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;
    .locals 1
    .param p1, "what"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 734
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 4

    .line 1370
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1373
    const/16 v1, 0x12

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1375
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onNewRcsConfigurationAvailable(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "lastErrorCode"    # I

    .line 711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 712
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 713
    const-string v1, "lastError"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 714
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 715
    return-void
.end method

.method public onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "ownIdentity"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 1094
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    invoke-static {p2}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    invoke-static {p3}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 1100
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1102
    .local v1, "ua":Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    :goto_0
    if-eqz v1, :cond_1

    .line 1103
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getPhoneId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    .line 1104
    const/4 v2, 0x1

    iput v2, p3, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 1106
    :cond_1
    const/4 v2, 0x0

    iput v2, p3, Landroid/os/Message;->arg1:I

    .line 1109
    :goto_1
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1110
    return-void
.end method

.method public onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p1, "registered"    # Z
    .param p2, "errorCode"    # I
    .param p3, "regiInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 1143
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 1145
    .local v0, "phoneId":I
    if-eqz p1, :cond_0

    .line 1146
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/config/ConfigModule;->updateMsisdn(Lcom/sec/ims/ImsRegistration;)V

    .line 1149
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1150
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    sget-object v2, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRegistrationStatusChanged: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] registered["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], response ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1152
    const v2, 0x13000009

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",EC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1154
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1155
    .local v2, "mno":Lcom/sec/internal/constants/Mno;
    const/4 v3, 0x0

    if-nez p1, :cond_6

    .line 1156
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 1157
    .local v4, "rcsAs":Ljava/lang/String;
    const-string v5, "jibe"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-static {v0, v5}, Lcom/sec/internal/ims/util/ConfigUtil;->hasChatbotService(ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1158
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-virtual {v5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v5

    if-ne p2, v5, :cond_5

    .line 1159
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isTeliaCo()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1160
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/config/WorkFlowController;->deleteConfiguration(I)V

    .line 1162
    :cond_2
    iget v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    .line 1163
    const/4 v6, 0x2

    if-lt v5, v6, :cond_3

    .line 1164
    sget-object v5, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v6, "Two consecutive 403 errors. Permanently prohibited."

    invoke-static {v5, v0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1165
    iput v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    goto :goto_0

    .line 1167
    :cond_3
    sget-object v3, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "403 error. Restart initial ACS"

    invoke-static {v3, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1168
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/WorkFlowController;->clearToken(I)V

    .line 1169
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAcs(I)V

    goto :goto_0

    .line 1172
    :cond_4
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    if-ne p2, v3, :cond_5

    .line 1182
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/config/WorkFlowController;->deleteConfiguration(I)V

    .line 1184
    .end local v4    # "rcsAs":Ljava/lang/String;
    :cond_5
    :goto_0
    goto :goto_2

    .line 1185
    :cond_6
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1186
    sget-object v4, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v5, "VoLTE regi. is done. It\'s time for RCS registration!"

    invoke-static {v4, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1187
    iget-object v4, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v4

    .line 1188
    .local v4, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1189
    .local v6, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/ConfigModule;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    .line 1190
    .end local v6    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    goto :goto_1

    .line 1192
    .end local v4    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :cond_7
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1193
    iput v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->m403ForbiddenCounter:I

    .line 1196
    :cond_8
    :goto_2
    return-void
.end method

.method protected onSimRefresh(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 654
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSimRefresh:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 656
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/params/ACSConfig;->clear()V

    .line 657
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mReadyNetwork:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 658
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->deregisterNetworkCallback(I)V

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mIsReceivedSimRefresh:Z

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mWorkFlowController:Lcom/sec/internal/ims/config/WorkFlowController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/WorkFlowController;->onSimRefresh(I)V

    .line 661
    return-void
.end method

.method protected onTelephonyCallStatusChanged(II)V
    .locals 8
    .param p1, "phoneId"    # I
    .param p2, "callState"    # I

    .line 664
    iput p2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    .line 665
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onTelephonyCallStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 666
    iget v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mCallState:I

    if-nez v0, :cond_5

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v1, "defaultmsgappinuse"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 669
    .local v0, "isSmsDefault":Z
    :goto_0
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    if-eqz v3, :cond_1

    .line 670
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingAutoComplete:Z

    .line 671
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 672
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/params/ACSConfig;->getAcsLastError()I

    move-result v2

    const-string v3, "lastError"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 673
    const/16 v2, 0xd

    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .end local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_3

    .line 674
    :cond_1
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    if-eqz v3, :cond_5

    .line 675
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mPendingDeregi:Z

    .line 676
    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v3

    .line 677
    .local v3, "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    if-nez v3, :cond_2

    .line 678
    return-void

    .line 681
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 682
    .local v5, "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v2

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    aput-object v7, v6, v1

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 683
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v6

    const/16 v7, 0xf

    if-eq v6, v7, :cond_3

    .line 684
    const/16 v6, 0x24

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 685
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const-string v7, "MsgApp is changed"

    invoke-interface {v6, v5, v2, v1, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_2

    .line 686
    :cond_3
    if-eqz v0, :cond_4

    .line 687
    iget-object v6, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    .line 689
    .end local v5    # "task":Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    :cond_4
    :goto_2
    goto :goto_1

    .line 692
    .end local v0    # "isSmsDefault":Z
    .end local v3    # "rtl":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    :cond_5
    :goto_3
    return-void
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;
    .param p2, "phoneId"    # I

    .line 760
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Lcom/sec/ims/IAutoConfigurationListener;

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 762
    return-void
.end method

.method public resetAcsTryReason(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 1068
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->resetAcsTryReason(I)V

    .line 1069
    return-void
.end method

.method public resetReadyStateCommand(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1449
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setReadyStartCmdList(IZ)V

    .line 1450
    return-void
.end method

.method public sendConfigMessage(II)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "phoneId"    # I

    .line 739
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 740
    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 775
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMsisdnNumber:Ljava/lang/String;

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/16 v1, 0x14

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 777
    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "phoneId"    # I

    .line 770
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mVerificationCode:Ljava/lang/String;

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 772
    return-void
.end method

.method public setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "autoconfigTryReason"    # Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    .line 1058
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 1059
    return-void
.end method

.method public setDualSimRcsAutoConfig(Z)V
    .locals 1
    .param p1, "isDualSimAcs"    # Z

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->setDualSimRcsAutoConfig(Z)V

    .line 1357
    return-void
.end method

.method public setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V
    .locals 7
    .param p1, "reg"    # Lcom/sec/ims/ImsRegistration;

    .line 1425
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    .line 1426
    .local v0, "msisdnFromPAU":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1427
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+82"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1430
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IMSI_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1431
    .local v1, "imsi":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    const-string v4, "msisdn_from_pau"

    const-string v5, ""

    invoke-static {v2, v3, v4, v1, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1432
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMsisdnFromPau: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1433
    const v2, 0x13000017

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "SET_SP_PAU"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1434
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/sec/internal/ims/config/ConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4, v1, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/config/ConfigModule;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegister(I)V

    .line 1438
    .end local v1    # "imsi":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setRegisterFromApp(ZI)V
    .locals 1
    .param p1, "tryregi"    # Z
    .param p2, "phoneId"    # I

    .line 701
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->setRegisterFromApp(ZI)V

    .line 702
    return-void
.end method

.method public showMSIDSNDialog()V
    .locals 1

    .line 1261
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendEmptyMessage(I)Z

    .line 1262
    return-void
.end method

.method public startAcs(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 1114
    const/16 v0, 0xf

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 1115
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;I)V
    .locals 2
    .param p1, "forced"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;
    .param p3, "phoneId"    # I

    .line 744
    if-nez p2, :cond_0

    .line 745
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 746
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 747
    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 749
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p3, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 750
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfig(ZLandroid/os/Message;I)V

    .line 751
    return-void
.end method

.method public startAutoConfigDualsim(ILandroid/os/Message;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .line 755
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mOnCompleteList:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 756
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startAutoConfigDualsim(ILandroid/os/Message;)V

    .line 757
    return-void
.end method

.method public triggerAutoConfig(ZILjava/util/List;)Z
    .locals 1
    .param p1, "forceAutoconfig"    # Z
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)Z"
        }
    .end annotation

    .line 729
    .local p3, "regiTaskList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/internal/interfaces/ims/core/IRegisterTask;>;"
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/config/ConfigTrigger;->triggerAutoConfig(ZILjava/util/List;)Z

    move-result v0

    return v0
.end method

.method public tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 1
    .param p1, "task"    # Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1361
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/config/ConfigTrigger;->tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    return v0
.end method

.method public unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V
    .locals 3
    .param p1, "listener"    # Lcom/sec/ims/IAutoConfigurationListener;
    .param p2, "phoneId"    # I

    .line 765
    iput-object p1, p0, Lcom/sec/internal/ims/config/ConfigModule;->mListener:Lcom/sec/ims/IAutoConfigurationListener;

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mConfigTrigger:Lcom/sec/internal/ims/config/ConfigTrigger;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sec/internal/ims/config/ConfigTrigger;->startConfig(ILandroid/os/Message;I)V

    .line 767
    return-void
.end method

.method public updateMobileNetworkforDualRcs(I)Z
    .locals 2
    .param p1, "phoneId"    # I

    .line 900
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 901
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "tryAutoConfig: getDefaultPhoneId() != phoneId ->mobileNetwork = false"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    .line 904
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/ConfigModule;->mMobileNetwork:Z

    return v0
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "callStatus"    # I

    .line 706
    sget-object v0, Lcom/sec/internal/ims/config/ConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateTelephonyCallStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 707
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/sec/internal/ims/config/ConfigModule;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/ConfigModule;->sendMessage(Landroid/os/Message;)Z

    .line 708
    return-void
.end method
