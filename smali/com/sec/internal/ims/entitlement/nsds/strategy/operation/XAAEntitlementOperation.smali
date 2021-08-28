.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;
.super Ljava/lang/Object;
.source "XAAEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInitialOperation(II)I
    .locals 2
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I

    .line 33
    const/4 v0, -0x1

    .line 34
    .local v0, "operation":I
    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0x13

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xc

    if-eq p0, v1, :cond_2

    .line 52
    const/4 v0, 0x2

    goto :goto_0

    .line 39
    :cond_0
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 49
    :cond_1
    const/16 v0, 0xf

    .line 50
    goto :goto_0

    .line 44
    :cond_2
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_4

    .line 45
    const/4 v0, 0x2

    goto :goto_0

    .line 36
    :cond_3
    const/4 v0, 0x3

    .line 37
    nop

    .line 55
    :cond_4
    :goto_0
    return v0
.end method

.method protected static getNextOperation(IIIZ)I
    .locals 2
    .param p0, "prevNsdsBaseOperation"    # I
    .param p1, "deviceEventType"    # I
    .param p2, "responseCode"    # I
    .param p3, "locAndTcStatus"    # Z

    .line 59
    const/4 v0, -0x1

    .line 60
    .local v0, "operation":I
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getOperationAfterLocAndTcCheck(IIZ)I

    move-result v0

    .line 63
    goto :goto_0

    .line 65
    :cond_1
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_2

    .line 66
    const/4 v0, 0x3

    .line 72
    :cond_2
    :goto_0
    return v0
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .locals 3
    .param p0, "deviceEventType"    # I
    .param p1, "prevNsdsBaseOperation"    # I
    .param p2, "responseCode"    # I
    .param p3, "dataMap"    # Landroid/os/Bundle;

    .line 16
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOperation: eventType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " prevOp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "locAndTcStatus":Z
    if-eqz p3, :cond_0

    .line 20
    const-string v1, "loc_and_tc_status"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 24
    :cond_0
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 25
    invoke-static {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getInitialOperation(II)I

    move-result v1

    .local v1, "operation":I
    goto :goto_0

    .line 27
    .end local v1    # "operation":I
    :cond_1
    invoke-static {p1, p0, p2, v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/XAAEntitlementOperation;->getNextOperation(IIIZ)I

    move-result v1

    .line 29
    .restart local v1    # "operation":I
    :goto_0
    return v1
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZ)I
    .locals 3
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I
    .param p2, "locAndTcStatus"    # Z

    .line 76
    const/4 v0, -0x1

    .line 77
    .local v0, "operation":I
    const/4 v1, 0x2

    const/16 v2, 0x3e8

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    if-ne p1, v2, :cond_2

    .line 87
    const/16 v0, 0xd

    goto :goto_0

    .line 79
    :cond_1
    if-ne p1, v2, :cond_2

    .line 80
    if-nez p2, :cond_2

    .line 81
    const/16 v0, 0x8

    .line 93
    :cond_2
    :goto_0
    return v0
.end method
