.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;
.super Ljava/lang/Object;
.source "DefaultNsdsOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;->LOG_TAG:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .locals 5
    .param p0, "deviceEventType"    # I
    .param p1, "prevNsdsBaseOperation"    # I
    .param p2, "responseCode"    # I
    .param p3, "dataMap"    # Landroid/os/Bundle;

    .line 18
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;->LOG_TAG:Ljava/lang/String;

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

    .line 21
    const/4 v0, 0x0

    .line 23
    .local v0, "locAndTcStatus":Z
    if-eqz p3, :cond_0

    .line 24
    const-string v1, "loc_and_tc_status"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 27
    :cond_0
    const/4 v1, -0x1

    .line 28
    .local v1, "operation":I
    const/4 v2, -0x1

    const/16 v3, 0x3e8

    const/4 v4, 0x2

    if-ne p1, v2, :cond_5

    .line 29
    if-eq p0, v4, :cond_4

    const/4 v2, 0x7

    if-eq p0, v2, :cond_3

    const/16 v2, 0xb

    if-eq p0, v2, :cond_2

    const/16 v2, 0x13

    if-eq p0, v2, :cond_1

    packed-switch p0, :pswitch_data_0

    .line 54
    goto :goto_0

    .line 40
    :pswitch_0
    const/16 v1, 0xb

    .line 41
    goto :goto_0

    .line 37
    :pswitch_1
    const/16 v1, 0xa

    .line 38
    goto :goto_0

    .line 34
    :pswitch_2
    const/16 v1, 0x9

    .line 35
    goto :goto_0

    .line 51
    :cond_1
    const/16 v1, 0xf

    .line 52
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 46
    :cond_3
    if-ne p2, v3, :cond_8

    .line 47
    const/4 v1, 0x2

    goto :goto_0

    .line 43
    :cond_4
    const/4 v1, 0x2

    .line 44
    goto :goto_0

    .line 57
    :cond_5
    if-eq p1, v4, :cond_7

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    goto :goto_0

    .line 65
    :cond_6
    invoke-static {p0, p2, v0}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;->getOperationAfterLocAndTcCheck(IIZ)I

    move-result v1

    .line 67
    goto :goto_0

    .line 59
    :cond_7
    if-ne p2, v3, :cond_8

    .line 60
    const/4 v1, 0x3

    .line 61
    sget-object v2, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/DefaultNsdsOperation;->LOG_TAG:Ljava/lang/String;

    const-string v3, "getOperation(): BULK_ENTITLEMENT_CHECK"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_8
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZ)I
    .locals 2
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I
    .param p2, "locAndTcStatus"    # Z

    .line 77
    const/4 v0, -0x1

    .line 78
    .local v0, "operation":I
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_1

    .line 81
    if-nez p2, :cond_1

    .line 82
    const/16 v0, 0x8

    .line 89
    :cond_1
    :goto_0
    return v0
.end method
