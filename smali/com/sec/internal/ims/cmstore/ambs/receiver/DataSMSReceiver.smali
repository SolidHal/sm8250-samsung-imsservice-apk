.class public Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataSMSReceiver.java"


# static fields
.field static final TAG:Ljava/lang/String; = "DataSMSReceiver"

.field static final TAG_ACTION:Ljava/lang/String; = "action"

.field static final TAG_SID:Ljava/lang/String; = "serviceId"

.field static final VAL_ACTION:Ljava/lang/String; = "OptIn"

.field static final VAL_SID:Ljava/lang/String; = "msgstoreoem"


# instance fields
.field protected final mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# direct methods
.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V
    .locals 0
    .param p1, "callListener"    # Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 36
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 37
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 39
    .local v1, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .local v2, "dataMessageBuilder":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "pdus"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 41
    .local v3, "pdus":[Ljava/lang/Object;
    const-string v4, "DataSMSReceiver"

    if-nez v3, :cond_1

    .line 42
    const-string v5, "invalid pdus"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void

    .line 45
    :cond_1
    array-length v5, v3

    new-array v1, v5, [Landroid/telephony/SmsMessage;

    .line 46
    const/4 v5, 0x0

    .line 48
    .local v5, "data":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_6

    .line 49
    aget-object v7, v3, v6

    if-nez v7, :cond_2

    .line 50
    return-void

    .line 52
    :cond_2
    aget-object v7, v3, v6

    check-cast v7, [B

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v1, v6

    .line 53
    aget-object v7, v1, v6

    if-nez v7, :cond_3

    .line 54
    return-void

    .line 56
    :cond_3
    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v5

    .line 57
    if-nez v5, :cond_4

    .line 58
    return-void

    .line 61
    :cond_4
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_5

    .line 62
    aget-byte v8, v5, v7

    int-to-char v8, v8

    invoke-static {v8}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 48
    .end local v7    # "index":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 66
    .end local v6    # "i":I
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " messages = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;->parse(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 69
    .local v6, "resp":[Ljava/lang/String;
    if-nez v6, :cond_7

    .line 70
    return-void

    .line 72
    :cond_7
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v8, "msgstoreoem"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    aget-object v7, v6, v7

    const-string v8, "OptIn"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 73
    const-string v7, "binary SMS received to provision!"

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/ambs/receiver/DataSMSReceiver;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    invoke-static {v4}, Lcom/sec/internal/ims/cmstore/ambs/cloudrequest/RequestAccount;->handleExternalUserOptIn(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;)V

    .line 77
    :cond_8
    return-void

    .line 33
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "msgs":[Landroid/telephony/SmsMessage;
    .end local v2    # "dataMessageBuilder":Ljava/lang/StringBuilder;
    .end local v3    # "pdus":[Ljava/lang/Object;
    .end local v5    # "data":[B
    .end local v6    # "resp":[Ljava/lang/String;
    :cond_9
    :goto_2
    return-void
.end method

.method public parse(Ljava/lang/String;)[Ljava/lang/String;
    .locals 16
    .param p1, "input"    # Ljava/lang/String;

    .line 80
    move-object/from16 v0, p1

    const-string/jumbo v1, "serviceId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 81
    .local v2, "begin":I
    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 82
    return-object v3

    .line 85
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "strBegin":Ljava/lang/String;
    const-string v5, "OptIn"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 87
    .local v6, "end":I
    if-gez v6, :cond_1

    .line 88
    return-object v3

    .line 90
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v6

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "newText":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    .line 93
    .local v7, "res":[Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 94
    .local v8, "tmp":[Ljava/lang/String;
    array-length v9, v8

    move v10, v5

    :goto_0
    if-ge v10, v9, :cond_4

    aget-object v11, v8, v10

    .line 95
    .local v11, "value":Ljava/lang/String;
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 96
    .local v12, "val":[Ljava/lang/String;
    aget-object v13, v12, v5

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    const/4 v14, 0x1

    if-eqz v13, :cond_2

    .line 97
    aget-object v13, v12, v14

    aput-object v13, v7, v5

    .line 99
    :cond_2
    aget-object v13, v12, v5

    const-string v15, "action"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 100
    aget-object v13, v12, v14

    aput-object v13, v7, v14

    .line 94
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "val":[Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 104
    :cond_4
    return-object v7
.end method
