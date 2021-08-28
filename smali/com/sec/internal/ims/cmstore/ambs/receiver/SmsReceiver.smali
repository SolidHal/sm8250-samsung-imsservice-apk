.class public Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 1
    .param p1, "callListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    const-class v0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    .line 24
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 25
    return-void
.end method

.method private checkAndHandleZCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "smsBody"    # Ljava/lang/String;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 62
    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->isSmsZCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    new-instance v1, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/ReqZCode;->handleSmsZCode(Ljava/lang/String;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    .line 65
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 29
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string v1, ">>>>>>>onReceive start"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v1, "body":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v2, "number":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "pdus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 41
    .local v3, "_pdus":[Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 42
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string v5, "invalid pdus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 45
    :cond_0
    array-length v4, v3

    new-array v4, v4, [Landroid/telephony/SmsMessage;

    .line 46
    .local v4, "message":[Landroid/telephony/SmsMessage;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_1

    .line 47
    aget-object v6, v3, v5

    check-cast v6, [B

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v4, v5

    .line 46
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    .end local v5    # "i":I
    :cond_1
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 50
    .local v7, "currentMessage":Landroid/telephony/SmsMessage;
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .end local v7    # "currentMessage":Landroid/telephony/SmsMessage;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 53
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, "smsBody":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, "num":Ljava/lang/String;
    invoke-direct {p0, v5, v6}, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->checkAndHandleZCode(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v1    # "body":Ljava/lang/StringBuilder;
    .end local v2    # "number":Ljava/lang/StringBuilder;
    .end local v3    # "_pdus":[Ljava/lang/Object;
    .end local v4    # "message":[Landroid/telephony/SmsMessage;
    .end local v5    # "smsBody":Ljava/lang/String;
    .end local v6    # "num":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/SmsReceiver;->TAG:Ljava/lang/String;

    const-string v2, ">>>>>>>onReceive end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method
