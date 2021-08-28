.class public Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;
.super Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;
.source "SimSwapFlow.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/entitlement/nsds/ISimSwapFlow;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseFlowImpl"    # Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;
    .param p4, "databaseHelper"    # Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/NSDSAppFlowBase;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/entitlement/nsds/ericssonnsds/flow/BaseFlowImpl;Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;)V

    .line 29
    return-void
.end method


# virtual methods
.method public handleSimSwap(Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;)V
    .locals 3
    .param p1, "simSwapCompletedListener"    # Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    .line 42
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    .line 43
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleSimSwap...."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->notifyNSDSFlowResponse(ZLjava/lang/String;II)V

    .line 46
    return-void
.end method

.method protected notifyNSDSFlowResponse(ZLjava/lang/String;II)V
    .locals 4
    .param p1, "success"    # Z
    .param p2, "nsdsMethodName"    # Ljava/lang/String;
    .param p3, "operation"    # I
    .param p4, "nsdsErrorCode"    # I

    .line 50
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyNSDSFlowResponse: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "translatedErroCodes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    if-eq p4, v1, :cond_0

    .line 54
    invoke-static {p2, p3, p4}, Lcom/sec/internal/constants/ims/entitilement/NSDSErrorTranslator;->translate(Ljava/lang/String;II)I

    move-result v1

    .line 55
    .local v1, "errorCode":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v1    # "errorCode":I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.nsds.action.SIM_SWAP_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "request_status"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 60
    const-string v2, "error_codes"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 61
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v2, v1, v3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 63
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/nsds/app/flow/ericssonnsds/SimSwapFlow;->mSimSwapCompletedListener:Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;

    if-eqz v2, :cond_1

    .line 64
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/entitlement/nsds/SimSwapCompletedListener;->onSimSwapCompleted()V

    .line 67
    :cond_1
    return-void
.end method

.method protected queueOperation(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "nextOperation"    # I
    .param p2, "dataMap"    # Landroid/os/Bundle;

    .line 71
    return-void
.end method
