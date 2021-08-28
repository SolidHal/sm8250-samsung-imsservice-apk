.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/O2UEntitlementOperation;
.super Ljava/lang/Object;
.source "O2UEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/O2UEntitlementOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/O2UEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInitialOperation()I
    .locals 1

    .line 23
    const/4 v0, 0x2

    return v0
.end method

.method private static getNextOperation()I
    .locals 1

    .line 27
    const/4 v0, -0x1

    return v0
.end method

.method public static getOperation(II)I
    .locals 3
    .param p0, "deviceEventType"    # I
    .param p1, "prevNsdsBaseOperation"    # I

    .line 11
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/O2UEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 15
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/O2UEntitlementOperation;->getInitialOperation()I

    move-result v0

    .local v0, "operation":I
    goto :goto_0

    .line 17
    .end local v0    # "operation":I
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/O2UEntitlementOperation;->getNextOperation()I

    move-result v0

    .line 19
    .restart local v0    # "operation":I
    :goto_0
    return v0
.end method
