.class public Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;
.super Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;
.source "DeviceDeactivation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;->LOG_TAG:Ljava/lang/String;

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

    .line 15
    invoke-direct/range {p0 .. p7}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/OperationUsingManageConnectivity;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Landroid/os/Messenger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;->LOG_TAG:Ljava/lang/String;

    const-string v1, "created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    return-void
.end method


# virtual methods
.method public deactivateDevice()V
    .locals 1

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;->mOperation:I

    .line 21
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/DeviceDeactivation;->executeOperationWithChallenge()V

    .line 22
    return-void
.end method
