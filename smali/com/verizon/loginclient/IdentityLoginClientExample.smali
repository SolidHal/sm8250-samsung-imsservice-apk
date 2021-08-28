.class public Lcom/verizon/loginclient/IdentityLoginClientExample;
.super Ljava/lang/Object;
.source "IdentityLoginClientExample.java"

# interfaces
.implements Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "IdentityExample"


# instance fields
.field private final mLc:Lcom/verizon/loginclient/IdentityLoginClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-direct {v0, p1, p0}, Lcom/verizon/loginclient/IdentityLoginClient;-><init>(Landroid/content/Context;Lcom/verizon/loginclient/IdentityLoginClient$IIdentityResultReceiver;)V

    iput-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    .line 24
    return-void
.end method


# virtual methods
.method public exampleActions()V
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v0}, Lcom/verizon/loginclient/IdentityLoginClient;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "enginePackageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v1}, Lcom/verizon/loginclient/IdentityLoginClient;->isDozeWhitelisted()Z

    move-result v1

    .line 37
    .local v1, "isIgnoringDoze":Z
    :try_start_0
    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/IdentityLoginClient;->invalidateToken()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v2

    :goto_0
    nop

    .line 41
    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/IdentityLoginClient;->queryIdentityAsync()V

    .line 45
    iget-object v2, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v2}, Lcom/verizon/loginclient/IdentityLoginClient;->queryIdentitySynchronous()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v2

    .line 48
    .local v2, "result":Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v3}, Lcom/verizon/loginclient/IdentityLoginClient;->queryIdentityDirect()Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/verizon/loginclient/IdentityLoginClient$IdentityQueryResult;->getResultCode()Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    sget-object v3, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->waitingOnObserver:Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;

    .line 57
    iget-object v3, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v3}, Lcom/verizon/loginclient/IdentityLoginClient;->cancelQuery()V

    .line 59
    return-void
.end method

.method public exampleAdvancedSettings()V
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->setTargetSubscriptionId(Ljava/lang/Integer;)V

    .line 72
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Lcom/verizon/loginclient/IdentityLoginClient;->setTimeout(J)V

    .line 75
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->setInteractiveQuery(Z)V

    .line 78
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->bypassDeviceFeatureCheck(Z)V

    .line 81
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->bypassEnginePackageCheck(Z)V

    .line 85
    iget-object v0, p0, Lcom/verizon/loginclient/IdentityLoginClientExample;->mLc:Lcom/verizon/loginclient/IdentityLoginClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/verizon/loginclient/IdentityLoginClient;->setObserveOnNullResult(Z)V

    .line 86
    return-void
.end method

.method public onErrorResult(Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "status"    # Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 109
    sget-object v0, Lcom/verizon/loginclient/IdentityLoginClientExample$1;->$SwitchMap$com$verizon$loginclient$IdentityLoginClient$ResultCode:[I

    invoke-virtual {p1}, Lcom/verizon/loginclient/IdentityLoginClient$ResultCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "IdentityExample"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    const-string v0, "Timed out waiting for content observer after initial null token result"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :pswitch_1
    const-string v0, "Login Client threw SecurityException, usually b/c your app failed authorization"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    goto :goto_0

    .line 118
    :pswitch_2
    const-string v0, "Token fetch failed!  (somewhat unusual - success or timeout are most common). Exception may be null"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    goto :goto_0

    .line 115
    :pswitch_3
    const-string v0, "Official LoginEngine content provider not found!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    goto :goto_0

    .line 111
    :pswitch_4
    const-string v0, "This device does not have expected system features indicating LTE is supported"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    nop

    .line 128
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onIdentityResult(Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;)V
    .locals 9
    .param p1, "resultData"    # Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;

    .line 92
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->mdn:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->imei:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->imsi:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "Verified User/Device Identites - MDN:%s IMEI:%s IMSI:%s"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "IdentityExample"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-wide v7, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->tid:J

    .line 96
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    iget-wide v7, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->signatureCreateTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v5

    iget-wide v4, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->signatureExpireTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->signature:Ljava/lang/String;

    aput-object v4, v3, v1

    .line 95
    const-string v1, "SPC Signature Info - tid:%s  signatureCreate:%s (epoch-ms) signatureExpire:%d (epoch-ms) signature:%s"

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App Token ready for SPC validation (base64 encoded): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->token:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 100
    .local v0, "plainTextAppToken":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App Token (plain text): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget v1, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->subscriptionId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Subscription Id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/verizon/loginclient/IdentityLoginClient$IdenResultData;->subscriptionId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method
