.class public Lcom/sec/internal/ims/config/workflow/WorkflowTmo;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase;
.source "WorkflowTmo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;,
        Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Parse;,
        Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Fetch;,
        Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;
    }
.end annotation


# static fields
.field private static final CONFIG_PARAMS_URI:Landroid/net/Uri;

.field private static final DEVICE_CONFIG:Ljava/lang/String; = "device_config"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_AUTOCONFIG_HEAD:Ljava/lang/String; = "<RCSConfig>"

.field private static final TAG_AUTOCONFIG_TAIL:Ljava/lang/String; = "</RCSConfig>"

.field private static final TAG_NEW_XML_HEADER:Ljava/lang/String; = "<?xml version=\"1.0\"?>"


# instance fields
.field protected isNoInitialData:Z

.field protected isObserverRegisted:Z

.field private mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

.field protected mConfigurationParams:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    .line 63
    nop

    .line 64
    const-string v0, "content://com.samsung.ims.entitlementconfig.provider/config"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->CONFIG_PARAMS_URI:Landroid/net/Uri;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 73
    invoke-direct/range {p0 .. p5}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isObserverRegisted:Z

    .line 59
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isNoInitialData:Z

    .line 74
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    .line 75
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->registerContentObserver()V

    .line 76
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    .line 53
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->CONFIG_PARAMS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private registerContentObserver()V
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isObserverRegisted:Z

    if-nez v0, :cond_0

    .line 252
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "ConfigurationParamObserver is registed."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->registerObserver()V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isObserverRegisted:Z

    .line 256
    :cond_0
    return-void
.end method

.method private unregisterContentObserver()V
    .locals 3

    .line 259
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "ConfigurationParamObserver is unregisted."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->unregisterObserver()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isObserverRegisted:Z

    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public checkNetworkConnectivity()Z
    .locals 3

    .line 246
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "checkNetworkConnectivity is false because device config is used"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public cleanup()V
    .locals 3

    .line 268
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "cleanup workflow"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->unregisterContentObserver()V

    .line 270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isNoInitialData:Z

    .line 271
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->cleanup()V

    .line 272
    return-void
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 80
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkflowTmo message :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    .line 110
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 83
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v3, "forced startAutoConfig"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mStartForce:Z

    .line 87
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->sIsConfigOngoing:Z

    if-eqz v0, :cond_2

    .line 88
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "AutoConfig:Already started"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    goto :goto_0

    .line 91
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->sIsConfigOngoing:Z

    .line 92
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getVersion()I

    move-result v0

    .line 93
    .local v0, "oldVersion":I
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutoConfig:START, oldVersion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 95
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->work()V

    .line 96
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getVersion()I

    move-result v2

    .line 97
    .local v2, "newVersion":I
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoConfig:FINISH, newVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setCompleted(Z)V

    .line 99
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mLastErrorCodeNonRemote:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setLastErrorCode(I)V

    .line 101
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mModuleHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    .line 103
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 102
    invoke-virtual {p0, v3, v0, v2, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mStartForce:Z

    .line 105
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 106
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->sIsConfigOngoing:Z

    .line 107
    nop

    .line 112
    .end local v0    # "oldVersion":I
    .end local v2    # "newVersion":I
    :goto_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 3

    .line 276
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "onBootCompleted"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 277
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isNoInitialData:Z

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isNoInitialData:Z

    .line 279
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->sendEmptyMessage(I)Z

    .line 281
    :cond_0
    return-void
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 4
    .param p1, "mode"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 213
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new operation mode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 214
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getVersion()I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setVersionBackup(I)V

    .line 239
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setVersion(I)V

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->clearStorage()V

    .line 231
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setVersion(I)V

    .line 232
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setValidity(I)V

    .line 233
    goto :goto_0

    .line 216
    :cond_3
    if-eqz p2, :cond_5

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getVersion()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-lt v0, v1, :cond_4

    .line 219
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string/jumbo v2, "the same or lower version. update the data"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->writeDataToStorage(Ljava/util/Map;)V

    goto :goto_0

    .line 223
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    const-string v2, "null data. remain previous mode & data"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 225
    nop

    .line 242
    :goto_0
    return-void
.end method

.method work()V
    .locals 6

    .line 116
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V

    .line 118
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 134
    :goto_1
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown exception occur:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 133
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 121
    :catch_1
    move-exception v1

    .line 122
    .local v1, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NoInitialDataException occur:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "No valid device config params, skip autoconfig"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->addEventLog(Ljava/lang/String;)V

    .line 124
    const v2, 0x13020200

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",NODC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 125
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->isNoInitialData:Z

    .line 126
    const/4 v0, 0x0

    .line 127
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v1    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto :goto_1

    .line 136
    :cond_1
    return-void
.end method
