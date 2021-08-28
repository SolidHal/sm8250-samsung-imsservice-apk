.class public Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
.super Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;
.source "WorkflowVzw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ParseForEapAka;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttpsForEapAka;,
        Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;
    }
.end annotation


# static fields
.field protected static final BACKOFF_MAX_RETRY:I = 0x5

.field protected static final LOCAL_CONFIG_BASE:Ljava/lang/String; = "base"

.field protected static final LOCAL_CONFIG_FILE:Ljava/lang/String; = "localconfig"

.field protected static final LOCAL_CONFIG_MAX_COUNT:I = 0x5

.field protected static final LOCAL_CONFIG_TARGET:Ljava/lang/String; = "vzw_up"

.field protected static final LOCAL_CONFIG_VERS:I = 0x3b

.field protected static final LOG_TAG:Ljava/lang/String;

.field private static final STANDARD_IMSI_NAI_TEMPLATE:Ljava/lang/String; = "0<imsi>@nai.epc.mnc<mnc>.mcc<mcc>.3gppnetwork.org"

.field protected static final WORKFLOW_MAX_COUNT:I = 0x32

.field protected static final backOffRetryTime:[J


# instance fields
.field protected m511BackOffRetryCount:I

.field protected mAkaResponse:Ljava/lang/String;

.field protected mBackOffRetryCount:I

.field protected mBackupVersion:I

.field protected mHttpResponse:I

.field protected mIsClearedConfigInfo:Z

.field protected mIsCurConfigOngoing:Z

.field protected mIsMobileConfigCompleted:Z

.field protected mIsMobileConnected:Z

.field protected mIsMobileRequested:Z

.field protected mIsReceived403Err:Z

.field protected mIsReceived500Err:Z

.field protected mIsReceivedMinusVerison:Z

.field protected mIsSmsDefaultApp:Z

.field protected mMinusVersion:I

.field private final mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mNewVersion:I

.field protected mOldVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    const-class v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->backOffRetryTime:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x7d0
        0xfa0
        0x1770
        0x1f40
        0x2710
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;I)V
    .locals 15
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p5, "phoneId"    # I

    .line 98
    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    new-instance v5, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;

    invoke-direct {v5, v12, v13, v14}, Lcom/sec/internal/ims/config/adapters/TelephonyAdapterPrimaryDeviceVzw;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    new-instance v6, Lcom/sec/internal/ims/config/adapters/StorageAdapter;

    invoke-direct {v6}, Lcom/sec/internal/ims/config/adapters/StorageAdapter;-><init>()V

    new-instance v7, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;

    invoke-direct {v7, v14}, Lcom/sec/internal/ims/config/adapters/HttpAdapterVzw;-><init>(I)V

    new-instance v8, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;

    invoke-direct {v8}, Lcom/sec/internal/ims/config/adapters/XmlParserAdapter;-><init>()V

    new-instance v9, Lcom/sec/internal/ims/config/adapters/DialogAdapter;

    invoke-direct {v9, v12, v13}, Lcom/sec/internal/ims/config/adapters/DialogAdapter;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v10, p5

    invoke-direct/range {v0 .. v10}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;Lcom/sec/internal/interfaces/ims/config/IXmlParserAdapter;Lcom/sec/internal/interfaces/ims/config/IDialogAdapter;I)V

    .line 78
    const/4 v0, 0x0

    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    .line 79
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    .line 80
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 81
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMinusVersion:I

    .line 82
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileRequested:Z

    .line 83
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnected:Z

    .line 84
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConfigCompleted:Z

    .line 85
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    .line 86
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsCurConfigOngoing:Z

    .line 87
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 88
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived403Err:Z

    .line 89
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived500Err:Z

    .line 90
    iput-boolean v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    .line 91
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    .line 92
    const/4 v1, 0x0

    iput-object v1, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAkaResponse:Ljava/lang/String;

    .line 93
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    .line 94
    iput v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    .line 217
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 100
    iget-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, v11, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 101
    return-void
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    .line 67
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getAkaResponse()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    .line 67
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getStandardImsiNai()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setAkaResponse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->generateChallengeResponse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private generateChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "encodedval"    # Ljava/lang/String;

    .line 857
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 858
    .local v0, "challenge":[B
    invoke-static {v0}, Lcom/sec/internal/helper/StrUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "akaChallenge":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSm:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-static {v1}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getIsimAuthentication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 860
    .local v2, "isimResponse":Ljava/lang/String;
    :goto_0
    nop

    .line 861
    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getStandardImsiNai()Ljava/lang/String;

    move-result-object v3

    .line 860
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->generateChallengeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized getAkaResponse()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 675
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAkaResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 675
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getStandardImsiNai()Ljava/lang/String;
    .locals 4

    .line 844
    const-string v0, "0<imsi>@nai.epc.mnc<mnc>.mcc<mcc>.3gppnetwork.org"

    .line 845
    .local v0, "imsi":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getStandardImsiNai"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMcc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 847
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMnc()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getImsi()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<imsi>"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 849
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMcc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<mcc>"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mTelephony:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    .line 850
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMnc()Ljava/lang/String;

    move-result-object v2

    const-string v3, "<mnc>"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 851
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "imsi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_0
    return-object v0
.end method

.method private declared-synchronized setAkaResponse(Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    monitor-enter p0

    .line 679
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mAkaResponse:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    monitor-exit p0

    return-void

    .line 678
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    .end local p1    # "response":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected checkAndKeepData(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 541
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 542
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_0

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "curToken":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getValidity()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "curValidity":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndKeepData: curToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " curValidity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 553
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkAndKeepData: keep the token from the network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string/jumbo v2, "root/token/token"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 558
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "checkAndKeepData: keep the validity from the network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string/jumbo v2, "root/vers/validity"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgUrl()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "curSpgUrl":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "curSpgParamsUrl":Ljava/lang/String;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndKeepData: curSpgUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " curSpgParamsUrl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 567
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkAndKeepData: keep the spgUrl from the network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const-string/jumbo v4, "root/serviceproviderext/spgurl"

    invoke-interface {p1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 572
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v5, "checkAndKeepData: keep the spgParamsUrl from the network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const-string/jumbo v4, "root/serviceproviderext/params-url"

    invoke-interface {p1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 576
    return-void

    .line 543
    .end local v0    # "curToken":Ljava/lang/String;
    .end local v1    # "curValidity":Ljava/lang/String;
    .end local v2    # "curSpgUrl":Ljava/lang/String;
    .end local v3    # "curSpgParamsUrl":Ljava/lang/String;
    :cond_5
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkAndKeepData: use local config data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 545
    return-void
.end method

.method protected checkStorageforVZW(Ljava/lang/String;)V
    .locals 6
    .param p1, "defaultVersion"    # Ljava/lang/String;

    .line 284
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStorageforVZW: default version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, "defaultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/sec/internal/ims/config/ConfigContract;->STORAGE_DEFAULT:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 287
    .local v2, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 288
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "root/vers/version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3, v4, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 291
    goto :goto_0

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    .end local v2    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 297
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 298
    .local v1, "size":I
    if-lez v1, :cond_3

    .line 299
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkStorage: Default set("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3
    return-void
.end method

.method protected clearStorageforVZW(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultVersion"    # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->deleteAll()Z

    .line 280
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkStorageforVZW(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method protected convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 1
    .param p1, "rcsDisabledState"    # Ljava/lang/String;

    .line 694
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    return-object v0

    .line 697
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToOpMode(Ljava/lang/String;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I
    .locals 1
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 702
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    .line 703
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    return v0

    .line 705
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v0

    return v0
.end method

.method protected endAutoConfig()V
    .locals 9

    .line 579
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string v2, "endAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 580
    const/4 v0, 0x1

    .line 581
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    .line 582
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    .line 583
    .local v1, "rcsDisabledState":Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, "rcsstate":Ljava/lang/String;
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curOldVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " curNewVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " rcsState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mIsReceivedMinusVerison: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mMinusVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMinusVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " backupVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    if-eqz v3, :cond_0

    .line 588
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMinusVersion:I

    iput v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    .line 589
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set curNewVersion as mMinusVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_0
    const v3, 0x13020400

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",OV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",RV:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",BV:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",DV:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 591
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 593
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v4

    const/4 v7, 0x0

    if-le v3, v4, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 594
    :cond_1
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v4, "need to use local config info"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(Z)Z

    move-result v0

    .line 596
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_2

    .line 597
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set versionbackup as mNewVersion: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersionBackup(I)V

    .line 600
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v3

    iput v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    .line 601
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set mNewVersion after local config: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_3
    const v3, 0x13020401

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",NV:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 604
    const v3, 0x13020402

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "RDS:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",SU:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",SPU:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 604
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": RcsDisabledState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",SpgUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",SpgParamsUrl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getSpgParamsUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->addEventLog(Ljava/lang/String;)V

    .line 609
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setCompleted(Z)V

    .line 610
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileRequested:Z

    .line 611
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnected:Z

    .line 612
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 613
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    .line 614
    xor-int/lit8 v3, v0, 0x1

    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    .line 615
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sIsConfigOngoing:Z

    .line 616
    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setLastSwVersion(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method protected executeAutoConfig()V
    .locals 2

    .line 418
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "executeAutoConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->work()V

    .line 420
    return-void
.end method

.method protected executeCurConfig()V
    .locals 4

    .line 423
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "executeCurConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    .line 425
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    const-string v2, "maintain cur config info and need to send complete msg"

    if-lt v0, v1, :cond_0

    .line 428
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return-void

    .line 432
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_1

    .line 433
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need force local config info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(Z)Z

    .line 435
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->resetConfigInfo()V

    goto :goto_0

    .line 436
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 437
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "need local config info for rcsDisabledState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    .line 439
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startLocalConfig(Z)Z

    .line 440
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersionBackup(I)V

    goto :goto_0

    .line 442
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    .line 445
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    .line 446
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " backupVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void
.end method

.method protected getFlowCount()I
    .locals 1

    .line 658
    const/16 v0, 0x32

    return v0
.end method

.method protected getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    .locals 2

    .line 663
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getHttpResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setHeaders(Ljava/util/Map;)V

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setParams(Ljava/util/Map;)V

    .line 666
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setContext(Landroid/content/Context;)V

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 668
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->open(Ljava/lang/String;)Z

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 670
    .local v0, "response":Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->close()Z

    .line 671
    return-object v0
.end method

.method protected getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 1
    .param p1, "type"    # I

    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 3

    .line 684
    const-string/jumbo v0, "storage_data"

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;"
        }
    .end annotation

    .line 689
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "parsedxml_data"

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    return-object v0
.end method

.method protected getRcsState()Ljava/lang/String;
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/services/rcsstate"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpgParamsUrl()Ljava/lang/String;
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/serviceproviderext/params-url"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSpgUrl()Ljava/lang/String;
    .locals 2

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/serviceproviderext/spgurl"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->read(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 105
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "AutoConfig: finish"

    const-string v2, " newVersion: "

    const-string v3, "oldVersion: "

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v7, :cond_a

    const/4 v8, 0x2

    if-eq v0, v8, :cond_8

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 213
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 192
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsCurConfigOngoing:Z

    if-eqz v0, :cond_1

    .line 193
    goto/16 :goto_0

    .line 195
    :cond_1
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsCurConfigOngoing:Z

    .line 196
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cur config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 199
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->executeCurConfig()V

    .line 200
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setCompleted(Z)V

    .line 201
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setLastSwVersion(Ljava/lang/String;)V

    .line 202
    iput-boolean v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsCurConfigOngoing:Z

    .line 203
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "end cur config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    iget v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v6, v1, v3, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 205
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "send HANDLE_AUTO_CONFIG_RESTART after cur config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v3, 0x13

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {p0, v3, v1, v4, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 209
    goto/16 :goto_0

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string v3, "defaultmsgappinuse"

    invoke-static {v0, v3, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v7, :cond_3

    .line 182
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string/jumbo v3, "sms default application is changed to samsung"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 183
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 185
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string/jumbo v3, "sms default application is changed to non-samsung"

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 188
    goto/16 :goto_0

    .line 167
    :cond_4
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConfigCompleted:Z

    if-eqz v0, :cond_5

    .line 168
    goto/16 :goto_0

    .line 170
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 172
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endAutoConfig()V

    .line 173
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v6, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 177
    goto/16 :goto_0

    .line 150
    :cond_6
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->removeMessages(I)V

    .line 151
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConfigCompleted:Z

    if-eqz v0, :cond_7

    .line 152
    goto/16 :goto_0

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 155
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->executeAutoConfig()V

    .line 156
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConfigCompleted:Z

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->unregisterMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 158
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endAutoConfig()V

    .line 159
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v6, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 163
    goto/16 :goto_0

    .line 142
    :cond_8
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string v2, "clear storage, force config is needed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->clearStorageforVZW(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->resetConfigInfo()V

    .line 145
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    .line 146
    goto/16 :goto_0

    .line 108
    :cond_9
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    .line 111
    :cond_a
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sIsConfigOngoing:Z

    if-eqz v0, :cond_b

    .line 112
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "AutoConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto/16 :goto_0

    .line 115
    :cond_b
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sIsConfigOngoing:Z

    .line 116
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AutoConfig: start, mStartForce: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v8, v9}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v8, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 119
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->initAutoConfig()V

    .line 120
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->scheduleAutoconfigForVZW()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 121
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "use mobile network with mms type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-boolean v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileRequested:Z

    .line 123
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 124
    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 127
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMobileStateCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->registerMobileNetwork(Landroid/net/ConnectivityManager;Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 128
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->removeMessages(I)V

    .line 129
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 131
    goto :goto_0

    .line 133
    :cond_c
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->endAutoConfig()V

    .line 134
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mModuleHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNewVersion:I

    iget v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v6, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 137
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 138
    nop

    .line 215
    :goto_0
    return-void
.end method

.method protected handleSwVersionChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "lastSwVersion"    # Ljava/lang/String;

    .line 250
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSwVersionChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    sget-object v0, Lcom/sec/internal/constants/ims/config/ConfigConstants$BUILD;->TERMINAL_SW_VERSION:Ljava/lang/String;

    .line 252
    .local v0, "newSwVersion":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldSwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " newSwVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v1

    .line 256
    .local v1, "curVersion":I
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 259
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set curVersion as backupVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 263
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "FOTA upgrade happened: force autoconfig"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->resetConfigInfo()V

    .line 267
    .end local v1    # "curVersion":I
    :cond_1
    return-void
.end method

.method protected initAutoConfig()V
    .locals 4

    .line 370
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string v2, "initAutoConfig"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 371
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNetwork:Landroid/net/Network;

    .line 372
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttp:Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;->setNetwork(Landroid/net/Network;)V

    .line 373
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileRequested:Z

    .line 374
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnected:Z

    .line 375
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConfigCompleted:Z

    .line 376
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackOffRetryCount:I

    .line 377
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->m511BackOffRetryCount:I

    .line 378
    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMinusVersion:I

    .line 379
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 380
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    .line 381
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    .line 382
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string v3, "defaultmsgappinuse"

    invoke-static {v1, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    .line 385
    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "smsApplication":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 388
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "smsApplication is null from Settings, reset rcsState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "smsApplication is non-samsung from Settings, set rcsState as non-samsung"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    .end local v0    # "smsApplication":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 395
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "smsApplication is samsung but rcsState is invalid, reset rcsState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    goto :goto_1

    .line 394
    :cond_3
    :goto_0
    nop

    .line 399
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curOldVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " curBackupVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsReceived403Err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived403Err:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsReceived500Err: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived500Err:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsSmsDefaultApp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " rcsState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_8

    .line 403
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "local config used, use backupversion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 406
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived403Err:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived500Err:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    if-eqz v0, :cond_7

    :cond_5
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 408
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 411
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset config info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->resetConfigInfo()V

    goto :goto_3

    .line 409
    :cond_7
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "maintain config info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_8
    :goto_3
    return-void
.end method

.method protected isActiveVersion(I)Z
    .locals 1
    .param p1, "version"    # I

    .line 723
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z
    .locals 1
    .param p1, "rcsDisabledState"    # Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 715
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->TURNEDOFF_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne p1, v0, :cond_0

    .line 716
    const/4 v0, 0x1

    return v0

    .line 718
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v0

    return v0
.end method

.method protected loadLocalConfig()Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 488
    const/4 v0, 0x0

    .line 489
    .local v0, "baseObject":Lcom/google/gson/JsonObject;
    const/4 v1, 0x0

    .line 491
    .local v1, "targetObject":Lcom/google/gson/JsonObject;
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    .line 492
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "localconfig"

    const-string/jumbo v6, "raw"

    iget-object v7, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 491
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Lcom/google/gson/stream/JsonReader;

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v4, v5}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 494
    .local v4, "reader":Lcom/google/gson/stream/JsonReader;
    :try_start_2
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v6, "loadLocalConfig: open/parse localconfig"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v5, Lcom/google/gson/JsonParser;

    invoke-direct {v5}, Lcom/google/gson/JsonParser;-><init>()V

    .line 496
    .local v5, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v5, v4}, Lcom/google/gson/JsonParser;->parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 498
    .local v6, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "base"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    move-object v0, v7

    .line 499
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 500
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v12, v9, v11

    .line 501
    .local v12, "key":Ljava/lang/String;
    const-string/jumbo v13, "vzw_up"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 502
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/gson/JsonElement;

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v9

    .line 503
    goto :goto_2

    .line 500
    .end local v12    # "key":Ljava/lang/String;
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 506
    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 507
    goto :goto_3

    .line 509
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    :cond_2
    goto :goto_0

    .line 510
    .end local v5    # "parser":Lcom/google/gson/JsonParser;
    .end local v6    # "element":Lcom/google/gson/JsonElement;
    :cond_3
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v4    # "reader":Lcom/google/gson/stream/JsonReader;
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_4 .. :try_end_4} :catch_0

    .line 514
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_4
    nop

    .line 516
    if-eqz v0, :cond_8

    if-nez v1, :cond_5

    goto :goto_6

    .line 521
    :cond_5
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 522
    .local v2, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string/jumbo v5, "root/"

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 523
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->path(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/util/Map;)V

    .line 524
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_4

    .line 525
    :cond_6
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 526
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowLocalFile;->path(Lcom/google/gson/JsonElement;Ljava/lang/String;Ljava/util/Map;)V

    .line 527
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_5

    .line 528
    :cond_7
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v4, "loadLocalConfig: return localconfig data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-object v2

    .line 517
    .end local v2    # "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    :goto_6
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v4, "loadLocalConfig: base/target object is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-object v2

    .line 491
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "reader":Lcom/google/gson/stream/JsonReader;
    :catchall_0
    move-exception v5

    :try_start_5
    invoke-virtual {v4}, Lcom/google/gson/stream/JsonReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v6

    :try_start_6
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .end local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    :goto_7
    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v4    # "reader":Lcom/google/gson/stream/JsonReader;
    .restart local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .restart local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    :catchall_2
    move-exception v4

    if-eqz v3, :cond_9

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v5

    :try_start_8
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .end local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .end local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    :cond_9
    :goto_8
    throw v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_8 .. :try_end_8} :catch_0

    .line 510
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "baseObject":Lcom/google/gson/JsonObject;
    .restart local v1    # "targetObject":Lcom/google/gson/JsonObject;
    .restart local p0    # "this":Lcom/sec/internal/ims/config/workflow/WorkflowVzw;
    :catch_0
    move-exception v3

    .line 511
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v5, "loadLocalConfig: can\'t open/parse localconfig"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 513
    return-object v2
.end method

.method public onMobileConnectionChanged(Landroid/net/Network;Z)V
    .locals 2
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "isAvailable"    # Z

    .line 230
    if-eqz p2, :cond_1

    .line 231
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnected:Z

    if-nez v0, :cond_2

    .line 232
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMobileConnectionChanged: onAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-eqz p1, :cond_0

    .line 234
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mobile connection is successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNetwork:Landroid/net/Network;

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnected:Z

    .line 237
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 239
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mobile connection info is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileRequested:Z

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onMobileConnectionChanged: onLost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsMobileConnected:Z

    .line 246
    :cond_2
    :goto_0
    return-void
.end method

.method protected resetConfigInfo()V
    .locals 4

    .line 354
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string/jumbo v2, "resetConfigInfo"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    const-string v2, "defaultmsgappinuse"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    .line 356
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetConfigInfo: mIsSmsDefaultApp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsSmsDefaultApp:Z

    if-eqz v0, :cond_1

    .line 359
    iput-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    .line 360
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersionBackup(I)V

    .line 361
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 362
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsDisabledState(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setAkaResponse(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->cancelValidityTimer()V

    .line 365
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setNextAutoconfigTime(J)V

    .line 367
    :cond_1
    return-void
.end method

.method protected scheduleAutoconfigForVZW()Z
    .locals 10

    .line 304
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mOldVersion:I

    .line 305
    .local v0, "curVersion":I
    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 306
    iget v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mBackupVersion:I

    .line 308
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleAutoconfigForVZW: curVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->needScheduleAutoconfig(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 310
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v3, "needScheduleAutoconfig: false"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return v2

    .line 313
    :cond_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 314
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->cancelValidityTimer()V

    .line 315
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setAkaResponse(Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v2, "force autoconfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return v3

    .line 319
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    const-string v4, " skip autoconfig"

    if-eq v0, v1, :cond_b

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 320
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_3
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    .line 321
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-ne v0, v1, :cond_4

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 326
    :cond_4
    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived403Err:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived500Err:Z

    if-eqz v1, :cond_5

    goto/16 :goto_0

    .line 331
    :cond_5
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getNextAutoconfigTime()J

    move-result-wide v4

    .line 332
    .local v4, "nextAutoconfigTime":J
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nextAutoconfigTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 335
    .local v1, "current":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v6, v6

    .line 336
    .local v6, "remainValidity":I
    sget-object v7, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "remainValidity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-gtz v6, :cond_8

    .line 339
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v7, "need autoconfig"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-eq v0, v2, :cond_6

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 341
    :cond_6
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "reset config info, curVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->resetConfigInfo()V

    .line 344
    :cond_7
    return v3

    .line 346
    :cond_8
    const-wide/16 v7, 0x0

    cmp-long v3, v4, v7

    if-lez v3, :cond_9

    .line 347
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "autoconfig schedule: after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setValidityTimer(I)V

    .line 350
    :cond_9
    return v2

    .line 327
    .end local v1    # "current":Ljava/util/Date;
    .end local v4    # "nextAutoconfigTime":J
    .end local v6    # "remainValidity":I
    :cond_a
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsReceived403Err: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived403Err:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mIsReceived500Err: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceived500Err:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v2

    .line 322
    :cond_b
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "curVersion: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return v2
.end method

.method protected setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V
    .locals 6
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

    .line 738
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOpMode: mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$2;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string/jumbo v1, "rcsState: "

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3b

    packed-switch v0, :pswitch_data_0

    .line 838
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unknown mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 818
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    goto :goto_1

    .line 820
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v2, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 822
    .local v0, "backupVersion":I
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backupVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 824
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ENABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 828
    .end local v0    # "backupVersion":I
    :goto_0
    goto :goto_1

    .line 829
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 831
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->cancelValidityTimer()V

    .line 833
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setNextAutoconfigTime(J)V

    .line 834
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 835
    goto/16 :goto_5

    .line 807
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    if-eq v0, v4, :cond_3

    .line 808
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersionBackup(I)V

    .line 810
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 811
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->cancelValidityTimer()V

    .line 813
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setNextAutoconfigTime(J)V

    .line 814
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 815
    goto/16 :goto_5

    .line 794
    :pswitch_2
    if-eqz p2, :cond_4

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 797
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 798
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersionBackup(I)V

    .line 800
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setRcsState(Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->cancelValidityTimer()V

    .line 802
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setNextAutoconfigTime(J)V

    .line 803
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 804
    goto/16 :goto_5

    .line 780
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersion(I)V

    .line 781
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMinusVersion:I

    .line 782
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 783
    goto/16 :goto_5

    .line 770
    :pswitch_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->clearStorageforVZW(Ljava/lang/String;)V

    .line 771
    if-eqz p2, :cond_6

    .line 772
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 773
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersion(I)V

    .line 775
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mMinusVersion:I

    .line 776
    iput-boolean v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 777
    goto/16 :goto_5

    .line 742
    :pswitch_5
    if-eqz p2, :cond_9

    .line 743
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion()I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion(Ljava/util/Map;)I

    move-result v1

    if-lt v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStartForce:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_RCS_BY_USER:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_2

    .line 749
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "the same or lower version, remain previous data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndUpdateData(Ljava/util/Map;)V

    goto :goto_3

    .line 745
    :cond_8
    :goto_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion(Ljava/util/Map;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->clearStorageforVZW(Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    .line 747
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersion(Ljava/util/Map;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersionBackup(I)V

    .line 752
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getValidity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setNextAutoconfigTimeFromValidity(I)V

    goto :goto_4

    .line 754
    :cond_9
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getVersionBackup()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 755
    .restart local v0    # "backupVersion":I
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-lt v0, v1, :cond_a

    if-eq v0, v4, :cond_a

    .line 756
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "retreive backup version of configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersion(I)V

    goto :goto_4

    .line 759
    :cond_a
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v2, "data is empty, remain previous data and mode"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    .end local v0    # "backupVersion":I
    :goto_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsReceivedMinusVerison:Z

    .line 763
    nop

    .line 841
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setRcsDisabledState(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsDisabledState"    # Ljava/lang/String;

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/services/rcsdisabledstate"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 711
    return-void
.end method

.method protected setRcsState(Ljava/lang/String;)V
    .locals 2
    .param p1, "rcsState"    # Ljava/lang/String;

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    const-string/jumbo v1, "root/services/rcsstate"

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    .line 734
    return-void
.end method

.method public startCurrConfig()V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsCurConfigOngoing:Z

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCurrConfig: ongoing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void

    .line 275
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sendEmptyMessage(I)Z

    .line 276
    return-void
.end method

.method protected startLocalConfig(Z)Z
    .locals 5
    .param p1, "isForceLocalConfig"    # Z

    .line 450
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startLocalConfig: isForceLocalConfig: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsClearedConfigInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "result":Z
    const/4 v1, 0x5

    .line 453
    .local v1, "count":I
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 455
    .local v2, "parsedXml":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-lez v1, :cond_4

    .line 456
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->loadLocalConfig()Ljava/util/Map;

    move-result-object v2

    .line 457
    if-eqz v2, :cond_3

    .line 458
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v4, "load localconfig data successfully"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/config/SharedInfo;->setParsedXml(Ljava/util/Map;)V

    .line 460
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->setStatusCode(I)V

    .line 463
    :cond_0
    if-eqz p1, :cond_2

    .line 464
    iget-boolean v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mIsClearedConfigInfo:Z

    const/16 v4, 0x3b

    if-eqz v3, :cond_1

    .line 465
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setVersion(I)V

    goto :goto_1

    .line 467
    :cond_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->clearStorageforVZW(Ljava/lang/String;)V

    .line 469
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->writeAll(Ljava/util/Map;)Z

    goto :goto_2

    .line 471
    :cond_2
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->checkAndKeepData(Ljava/util/Map;)V

    .line 473
    :goto_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getValidity()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setNextAutoconfigTimeFromValidity(I)V

    .line 474
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getValidity()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setValidityTimer(I)V

    .line 475
    const/4 v0, 0x1

    .line 476
    goto :goto_3

    .line 478
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 480
    :cond_4
    :goto_3
    if-nez v2, :cond_5

    .line 481
    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string v4, "cannot load localconfig data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->resetConfigInfo()V

    .line 484
    :cond_5
    return v0
.end method

.method work()V
    .locals 8

    .line 621
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    .line 622
    .local v0, "next":Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getFlowCount()I

    move-result v2

    .line 624
    .local v2, "count":I
    :goto_0
    if-eqz v0, :cond_1

    if-lez v2, :cond_1

    .line 626
    :try_start_0
    invoke-interface {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/internal/ims/config/exception/NoInitialDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sec/internal/ims/config/exception/UnknownStatusException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 652
    :goto_1
    goto/16 :goto_2

    .line 644
    :catch_0
    move-exception v3

    .line 645
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 646
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown exception occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_0
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 1 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const-wide/16 v4, 0x3e8

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sleep(J)V

    .line 650
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v4

    .line 651
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 640
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 641
    .local v3, "e":Landroid/database/sqlite/SQLiteFullException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SQLiteFullException occur: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v4

    .line 643
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .end local v3    # "e":Landroid/database/sqlite/SQLiteFullException;
    goto :goto_1

    .line 633
    :catch_2
    move-exception v3

    .line 634
    .local v3, "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->getMessage()Ljava/lang/String;

    move-result-object v4

    .line 635
    .local v4, "message":Ljava/lang/String;
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnknownStatusException: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    sget-object v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "wait 2 sec and retry"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const-wide/16 v5, 0x7d0

    invoke-virtual {p0, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sleep(J)V

    .line 638
    new-instance v5, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v5, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v5

    .line 639
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/UnknownStatusException;
    .end local v4    # "message":Ljava/lang/String;
    goto/16 :goto_1

    .line 627
    :catch_3
    move-exception v3

    .line 628
    .local v3, "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NoInitialDataException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sget-object v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "wait 10 sec and retry"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->sleep(J)V

    .line 631
    new-instance v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v4, p0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;Lcom/sec/internal/ims/config/workflow/WorkflowVzw$1;)V

    move-object v0, v4

    .line 632
    invoke-virtual {v3}, Lcom/sec/internal/ims/config/exception/NoInitialDataException;->printStackTrace()V

    .end local v3    # "e":Lcom/sec/internal/ims/config/exception/NoInitialDataException;
    goto/16 :goto_1

    .line 653
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 655
    :cond_1
    return-void
.end method
