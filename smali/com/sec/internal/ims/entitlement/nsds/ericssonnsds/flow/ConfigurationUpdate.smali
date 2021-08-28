.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;
.source "ConfigurationUpdate.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    .line 12
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

    .line 17
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationRetrievalWithSIM;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method


# virtual methods
.method public updateDeviceConfiguration(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "deviceGroup"    # Ljava/lang/String;
    .param p2, "vimsiEap"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->mOperation:I

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->mVIMSI:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->mDeviceGroup:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/ConfigurationUpdate;->executeOperationWithChallenge()V

    .line 33
    return-void
.end method
