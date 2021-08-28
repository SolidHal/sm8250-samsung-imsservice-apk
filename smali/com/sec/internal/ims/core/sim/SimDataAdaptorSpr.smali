.class Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;
.super Lcom/sec/internal/ims/core/sim/SimDataAdaptor;
.source "SimDataAdaptor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mLastMsisdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 310
    const-class v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 1
    .param p1, "simManager"    # Lcom/sec/internal/ims/core/sim/SimManager;

    .line 314
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;-><init>(Lcom/sec/internal/ims/core/sim/SimManager;)V

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mLastMsisdn:Ljava/lang/String;

    .line 315
    return-void
.end method

.method private isValidMsisdn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msisdn"    # Ljava/lang/String;

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "000000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public hasValidMsisdn()Z
    .locals 4

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "msisdn":Ljava/lang/String;
    sget-object v1, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasValidMsisdn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iput-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mLastMsisdn:Ljava/lang/String;

    .line 330
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->isValidMsisdn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mSimpleEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "hasValidMsisdn: HFA isn\'t completed for SPR"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 332
    const v1, 0x100000a0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/sim/SimManager;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",NEED HFA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    return v1

    .line 336
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public needHandleLoadedAgain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "operator"    # Ljava/lang/String;

    .line 341
    invoke-super {p0, p1}, Lcom/sec/internal/ims/core/sim/SimDataAdaptor;->needHandleLoadedAgain(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 343
    return v1

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mSimManager:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "msisdn":Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->mLastMsisdn:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/sim/SimDataAdaptorSpr;->isValidMsisdn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
