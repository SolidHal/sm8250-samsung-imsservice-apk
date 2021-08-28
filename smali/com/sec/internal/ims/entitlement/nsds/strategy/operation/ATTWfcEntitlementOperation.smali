.class public Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;
.super Ljava/lang/Object;
.source "ATTWfcEntitlementOperation.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getInitialOperation(II)I
    .locals 2
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I

    .line 39
    const/4 v0, -0x1

    .line 40
    .local v0, "operation":I
    const/4 v1, 0x3

    if-eq p0, v1, :cond_6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_5

    const/4 v1, 0x7

    if-eq p0, v1, :cond_4

    const/16 v1, 0x13

    if-eq p0, v1, :cond_3

    const/16 v1, 0xb

    if-eq p0, v1, :cond_2

    const/16 v1, 0xc

    if-eq p0, v1, :cond_4

    const/16 v1, 0xe

    if-eq p0, v1, :cond_1

    const/16 v1, 0xf

    if-eq p0, v1, :cond_0

    .line 67
    const/4 v0, 0x2

    goto :goto_0

    .line 45
    :cond_0
    const/16 v0, 0xb

    .line 46
    goto :goto_0

    .line 42
    :cond_1
    const/16 v0, 0xa

    .line 43
    goto :goto_0

    .line 54
    :cond_2
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 64
    :cond_3
    const/16 v0, 0xf

    .line 65
    goto :goto_0

    .line 59
    :cond_4
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_7

    .line 60
    const/4 v0, 0x2

    goto :goto_0

    .line 51
    :cond_5
    const/4 v0, 0x3

    .line 52
    goto :goto_0

    .line 48
    :cond_6
    const/4 v0, 0x5

    .line 49
    nop

    .line 70
    :cond_7
    :goto_0
    return v0
.end method

.method protected static getNextOperation(IIIZZLjava/lang/String;)I
    .locals 2
    .param p0, "prevNsdsBaseOperation"    # I
    .param p1, "deviceEventType"    # I
    .param p2, "responseCode"    # I
    .param p3, "locAndTcStatus"    # Z
    .param p4, "onSvcProv"    # Z
    .param p5, "e911AidExp"    # Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    .line 76
    .local v0, "operation":I
    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/16 v1, 0x10

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterLocAndTcCheckforAutoOn(IIZZ)I

    move-result v0

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p1, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterPushTokenRegistration(II)I

    move-result v0

    .line 87
    goto :goto_0

    .line 78
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterLocAndTcCheck(IIZZ)I

    move-result v0

    .line 80
    goto :goto_0

    .line 89
    :cond_3
    invoke-static {p1, p2, p5, p4}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getOperationAfterEntitlementCheck(IILjava/lang/String;Z)I

    move-result v0

    .line 90
    nop

    .line 94
    :goto_0
    return v0
.end method

.method public static getOperation(IIILandroid/os/Bundle;)I
    .locals 10
    .param p0, "deviceEventType"    # I
    .param p1, "prevNsdsBaseOperation"    # I
    .param p2, "responseCode"    # I
    .param p3, "dataMap"    # Landroid/os/Bundle;

    .line 17
    sget-object v0, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

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

    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "locAndTcStatus":Z
    const/4 v1, 0x0

    .line 21
    .local v1, "onSvcProv":Z
    const/4 v2, 0x0

    .line 23
    .local v2, "e911AidExp":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 24
    const-string v3, "loc_and_tc_status"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 25
    const-string/jumbo v3, "svc_prov_status"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 26
    const-string v3, "e911_aid_exp"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    :cond_0
    const/4 v9, -0x1

    .line 30
    .local v9, "operation":I
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 31
    invoke-static {p0, p2}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getInitialOperation(II)I

    move-result v3

    .end local v9    # "operation":I
    .local v3, "operation":I
    goto :goto_0

    .line 33
    .end local v3    # "operation":I
    .restart local v9    # "operation":I
    :cond_1
    move v3, p1

    move v4, p0

    move v5, p2

    move v6, v0

    move v7, v1

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->getNextOperation(IIIZZLjava/lang/String;)I

    move-result v3

    .line 35
    .end local v9    # "operation":I
    .restart local v3    # "operation":I
    :goto_0
    return v3
.end method

.method protected static getOperationAfterEntitlementCheck(IILjava/lang/String;Z)I
    .locals 6
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I
    .param p2, "e911AidExp"    # Ljava/lang/String;
    .param p3, "onSvcProv"    # Z

    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, "operation":I
    const/16 v1, 0x418

    const/16 v2, 0x3e8

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 138
    :pswitch_1
    if-ne p1, v2, :cond_4

    .line 139
    const/4 v0, 0x3

    goto :goto_0

    .line 117
    :pswitch_2
    if-ne p1, v2, :cond_0

    .line 118
    const/4 v0, 0x4

    goto :goto_0

    .line 120
    :cond_0
    const/4 v0, 0x5

    .line 122
    goto :goto_0

    .line 124
    :pswitch_3
    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_4

    .line 126
    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    .line 102
    :pswitch_4
    sget-object v3, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ATT_AutoOn] getOperationAfterEntitlementCheck responseCode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",onSvcProv:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    if-ne p1, v2, :cond_2

    invoke-static {p2}, Lcom/sec/internal/ims/entitlement/util/E911AidValidator;->validate(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 105
    const/4 v0, 0x3

    goto :goto_0

    .line 106
    :cond_2
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EntFeatureDetector;->checkWFCAutoOnEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    if-ne p1, v1, :cond_3

    .line 108
    if-nez p3, :cond_4

    .line 109
    const/16 v0, 0x13

    goto :goto_0

    .line 111
    :cond_3
    const/16 v1, 0x427

    if-ne p1, v1, :cond_4

    .line 112
    const/16 v0, 0x13

    .line 145
    :cond_4
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected static getOperationAfterLocAndTcCheck(IIZZ)I
    .locals 3
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I
    .param p2, "locAndTcStatus"    # Z
    .param p3, "onSvcProv"    # Z

    .line 157
    const/4 v0, -0x1

    .line 158
    .local v0, "operation":I
    const/4 v1, 0x2

    const/16 v2, 0x3e8

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    if-ne p1, v2, :cond_3

    .line 168
    const/16 v0, 0xd

    goto :goto_0

    .line 160
    :cond_1
    if-ne p1, v2, :cond_3

    .line 161
    if-eqz p2, :cond_2

    if-eqz p3, :cond_3

    .line 162
    :cond_2
    const/16 v0, 0x8

    .line 174
    :cond_3
    :goto_0
    return v0
.end method

.method private static getOperationAfterLocAndTcCheckforAutoOn(IIZZ)I
    .locals 5
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I
    .param p2, "locAndTcStatus"    # Z
    .param p3, "onSvcProv"    # Z

    .line 179
    const/4 v0, -0x1

    .line 180
    .local v0, "operation":I
    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ATT_AutoOn] getOperationAfterLocAndTcCheckforAutoOn responseCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",onSvcProv:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_4

    .line 185
    const/16 v1, 0x418

    if-ne p1, v1, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    const/16 v1, 0x427

    if-ne p1, v1, :cond_3

    .line 187
    :cond_2
    const/16 v0, 0x12

    .line 189
    :cond_3
    const/16 v0, 0x11

    goto :goto_0

    .line 191
    :cond_4
    if-nez p2, :cond_5

    .line 192
    sget-object v1, Lcom/sec/internal/ims/entitlement/nsds/strategy/operation/ATTWfcEntitlementOperation;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",locAndTcStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_5
    :goto_0
    return v0
.end method

.method protected static getOperationAfterPushTokenRegistration(II)I
    .locals 2
    .param p0, "deviceEventType"    # I
    .param p1, "responseCode"    # I

    .line 149
    const/4 v0, -0x1

    .line 150
    .local v0, "operation":I
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    .line 151
    const/4 v0, 0x3

    .line 153
    :cond_0
    return v0
.end method
