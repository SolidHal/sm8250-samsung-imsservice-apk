.class public Lcom/sec/internal/ims/aec/util/CalcEapAka;
.super Landroid/os/Handler;
.source "CalcEapAka.java"


# instance fields
.field private final HANDLE_REQUEST_SIM_AUTHENTICATION:I

.field private final HANDLE_RESPONSE_SIM_AUTHENTICATION:I

.field private final mImsi:Ljava/lang/String;

.field private final mPhoneId:I

.field private mReplyTo:Landroid/os/Message;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "imsi"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->HANDLE_REQUEST_SIM_AUTHENTICATION:I

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->HANDLE_RESPONSE_SIM_AUTHENTICATION:I

    .line 22
    iput p1, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mPhoneId:I

    .line 23
    iput-object p2, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mImsi:Ljava/lang/String;

    .line 24
    return-void
.end method

.method private processSimAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "akaChallenge"    # Ljava/lang/String;
    .param p2, "simResponse"    # Ljava/lang/String;
    .param p3, "imsiEap"    # Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mReplyTo:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 74
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->generateChallengeResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mReplyTo:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 77
    :cond_0
    return-void
.end method

.method private requestSimAuthentication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "akaChallenge"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 58
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 59
    .local v1, "dataMap":Landroid/os/Bundle;
    const-string v2, "akaChallenge"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v2, "imsiEap"

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->getImsiEap()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 63
    iget v2, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    .line 64
    .local v2, "simMgr":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v2, :cond_0

    .line 65
    invoke-interface {v2, p1, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "dataMap":Landroid/os/Bundle;
    .end local v2    # "simMgr":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :cond_0
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 70
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public decodeChallenge(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "akaChallenge"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->decodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsiEap()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 83
    .local v0, "simMgr":Lcom/sec/internal/interfaces/ims/core/ISimManager;
    if-eqz v0, :cond_2

    .line 86
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "operator":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "0"

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-ne v2, v5, :cond_0

    .line 88
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "mcc":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "mnc":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x6

    if-ne v2, v5, :cond_1

    .line 91
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "mcc":Ljava/lang/String;
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4    # "mnc":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mImsi:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "@nai.epc.mnc"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".mcc"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".3gppnetwork.org"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 94
    .end local v2    # "mcc":Ljava/lang/String;
    .end local v4    # "mnc":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "getImsiEap: invalid operator"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 84
    .end local v1    # "operator":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "getImsiEap: sim manager not ready"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "akaChallenge"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "imsiEap"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->processSimAuthResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "nonce"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->requestSimAuthentication(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    nop

    .line 36
    :goto_0
    return-void
.end method

.method public requestEapChallengeResp(Landroid/os/Message;Ljava/lang/String;)V
    .locals 4
    .param p1, "replyTo"    # Landroid/os/Message;
    .param p2, "akaChallenge"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/CalcEapAka;->mReplyTo:Landroid/os/Message;

    .line 40
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 41
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    invoke-static {p2}, Lcom/sec/internal/ims/config/util/AKAEapAuthHelper;->getNonce(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nonce"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "akaChallenge"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 48
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->sendMessage(Landroid/os/Message;)Z

    .line 49
    return-void
.end method
