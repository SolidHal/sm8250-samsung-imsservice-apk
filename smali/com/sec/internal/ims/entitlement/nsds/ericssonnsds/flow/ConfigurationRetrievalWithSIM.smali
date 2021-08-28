.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;
.source "ConfigurationRetrievalWithSIM.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;

    .line 19
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->LOG_TAG:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "version"    # Ljava/lang/String;
    .param p6, "userAgent"    # Ljava/lang/String;
    .param p7, "imei"    # Ljava/lang/String;

    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method


# virtual methods
.method public retriveDeviceConfiguration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "deviceGroup"    # Ljava/lang/String;
    .param p3, "vimsiEap"    # Ljava/lang/String;

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->mOperation:I

    .line 36
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->mVIMSI:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->mDeviceGroup:Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->mBaseFlowImpl:Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;

    invoke-virtual {v0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;->getNSDSClient()Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/NSDSClient;->setRequestUrl(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;->executeOperationWithChallenge()V

    .line 42
    return-void
.end method
