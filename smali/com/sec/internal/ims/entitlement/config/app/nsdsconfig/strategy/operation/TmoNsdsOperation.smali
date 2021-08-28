.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;
.super Ljava/lang/Object;
.source "TmoNsdsOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;->LOG_TAG:Ljava/lang/String;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperation(II)I
    .locals 3
    .param p0, "deviceEventType"    # I
    .param p1, "prevNsdsBaseOperation"    # I

    .line 14
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/operation/TmoNsdsOperation;->LOG_TAG:Ljava/lang/String;

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

    .line 16
    const/4 v0, -0x1

    .line 17
    .local v0, "operation":I
    const/4 v1, -0x1

    if-ne p1, v1, :cond_3

    .line 18
    const/16 v1, 0xe

    if-eq p0, v1, :cond_2

    const/16 v1, 0xf

    if-eq p0, v1, :cond_1

    const/16 v1, 0x12

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    const/16 v0, 0xe

    .line 27
    goto :goto_0

    .line 23
    :cond_1
    const/16 v0, 0xb

    .line 24
    goto :goto_0

    .line 20
    :cond_2
    const/16 v0, 0xa

    .line 32
    :cond_3
    :goto_0
    return v0
.end method
