.class public Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;
.super Ljava/lang/Object;
.source "ImBigDataProcessor.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 27
    return-void
.end method

.method private getCause(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Ljava/lang/String;
    .locals 3
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 291
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 298
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getMsrpResponse()Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/MsrpResponse;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    return-object v2

    .line 293
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private getChatBotTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)Ljava/lang/String;
    .locals 2
    .param p1, "trafficType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 256
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$ChatbotTrafficType:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 268
    const-string v0, ""

    return-object v0

    .line 266
    :cond_0
    const-string v0, "MPPR"

    return-object v0

    .line 264
    :cond_1
    const-string v0, "MPSU"

    return-object v0

    .line 262
    :cond_2
    const-string v0, "MPPA"

    return-object v0

    .line 260
    :cond_3
    const-string v0, "MPAD"

    return-object v0

    .line 258
    :cond_4
    const-string v0, "MPNO"

    return-object v0
.end method

.method private getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;
    .locals 2
    .param p1, "resultType"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p2, "isChatBot"    # Z

    .line 242
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    if-eqz p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 251
    if-eqz p2, :cond_2

    const-string v0, "MOFT"

    goto :goto_2

    .line 249
    :pswitch_0
    if-eqz p2, :cond_1

    const-string v0, "MOFN"

    goto :goto_1

    :cond_1
    const-string v0, "ROFN"

    :goto_1
    return-object v0

    .line 251
    :cond_2
    const-string v0, "ROFT"

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFileExtention(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)Ljava/lang/String;
    .locals 3
    .param p1, "ftMsg"    # Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 216
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "fileName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 218
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 219
    .local v1, "i":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 220
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 223
    .end local v1    # "i":I
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private getMessageDirection(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 160
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    .line 161
    const-string v0, "0"

    return-object v0

    .line 163
    :cond_0
    const-string v0, "1"

    return-object v0
.end method

.method private getMessageSize(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 190
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_0

    .line 191
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFileSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "0"

    return-object v1
.end method

.method private getMessageType(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Z)Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "isChatBot"    # Z

    .line 168
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImConstants$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 176
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "SLM"

    .local v0, "msgType":Ljava/lang/String;
    goto :goto_0

    .line 179
    .end local v0    # "msgType":Ljava/lang/String;
    :cond_0
    const-string v0, "IM"

    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 173
    .end local v0    # "msgType":Ljava/lang/String;
    :cond_1
    const-string v0, "GLS"

    .line 174
    .restart local v0    # "msgType":Ljava/lang/String;
    goto :goto_0

    .line 170
    .end local v0    # "msgType":Ljava/lang/String;
    :cond_2
    const-string v0, "FT"

    .line 171
    .restart local v0    # "msgType":Ljava/lang/String;
    nop

    .line 183
    :goto_0
    if-eqz p2, :cond_3

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_CHATBOT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    :cond_3
    return-object v0
.end method

.method private getMessageTypeForILA(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "isChatBot"    # Z

    .line 227
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x8ce

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0x924

    if-eq v0, v1, :cond_3

    const v1, 0x1140e

    if-eq v0, v1, :cond_2

    const v1, 0x14114

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "SLM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "GLS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "IM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v0, "FT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_b

    if-eq v0, v4, :cond_9

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_5

    .line 237
    const-string v0, ""

    return-object v0

    .line 235
    :cond_5
    if-eqz p2, :cond_6

    const-string v0, "MGOS"

    goto :goto_2

    :cond_6
    const-string v0, "RGOS"

    :goto_2
    return-object v0

    .line 233
    :cond_7
    if-eqz p2, :cond_8

    const-string v0, "MSOS"

    goto :goto_3

    :cond_8
    const-string v0, "RSOS"

    :goto_3
    return-object v0

    .line 231
    :cond_9
    if-eqz p2, :cond_a

    const-string v0, "MFOS"

    goto :goto_4

    :cond_a
    const-string v0, "RFOS"

    :goto_4
    return-object v0

    .line 229
    :cond_b
    if-eqz p2, :cond_c

    const-string v0, "MIOS"

    goto :goto_5

    :cond_c
    const-string v0, "RIOS"

    :goto_5
    return-object v0
.end method

.method private getOrst(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    .line 278
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$result$Result$Type:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 286
    const-string v0, "5"

    return-object v0

    .line 284
    :cond_0
    const-string v0, "3"

    return-object v0

    .line 282
    :cond_1
    const-string v0, "2"

    return-object v0

    .line 280
    :cond_2
    const-string v0, "1"

    return-object v0
.end method

.method private getRegiRat(I)Ljava/lang/String;
    .locals 3
    .param p1, "phoneId"    # I

    .line 202
    const-string v0, "-1"

    .line 204
    .local v0, "regiRat":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_1
    return-object v0
.end method


# virtual methods
.method public onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 7
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .param p3, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 273
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->getOrst(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->getCause(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    move-result-object v5

    .line 274
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v6, v0

    .line 273
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z

    .line 275
    return-void
.end method

.method public sendRCSMInfoToHQM(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)Z
    .locals 1
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "orst"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/String;
    .param p4, "resultType"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p5, "statusCode"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    const v0, true
    return v0
.end method

.method public storeDRCSInfoToImsLogAgent(ILcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZLjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)V
    .locals 18
    .param p1, "phoneId"    # I
    .param p2, "imDirection"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "isChatBot"    # Z
    .param p4, "orst"    # Ljava/lang/String;
    .param p5, "msgType"    # Ljava/lang/String;
    .param p6, "resultType"    # Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;
    .param p7, "statusCode"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .param p8, "trafficType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 88
    .local v5, "values":Landroid/content/ContentValues;
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string/jumbo v8, "send_mode"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string/jumbo v8, "overwrite_mode"

    invoke-virtual {v5, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v8, :cond_e

    .line 91
    move-object/from16 v8, p5

    invoke-direct {v0, v8, v2}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->getMessageTypeForILA(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 92
    .local v9, "msgTypeForILA":Ljava/lang/String;
    const-string v11, "5"

    const-string v12, "4"

    const-string v13, "3"

    const-string v14, "2"

    const-string v15, "1"

    const-string v10, "0"

    const/16 v16, -0x1

    const/4 v6, 0x2

    if-nez v2, :cond_6

    .line 93
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    :cond_0
    goto :goto_0

    :pswitch_0
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x5

    goto :goto_1

    :pswitch_1
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    goto :goto_1

    :pswitch_2
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x4

    goto :goto_1

    :pswitch_3
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move v10, v6

    goto :goto_1

    :pswitch_4
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :pswitch_5
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    goto :goto_1

    :goto_0
    move/from16 v10, v16

    :goto_1
    if-eqz v10, :cond_4

    const-string v11, "RCOF"

    const/4 v12, 0x1

    if-eq v10, v12, :cond_3

    if-eq v10, v6, :cond_3

    const/4 v6, 0x3

    if-eq v10, v6, :cond_3

    const/4 v6, 0x4

    if-eq v10, v6, :cond_2

    const/4 v6, 0x5

    if-eq v10, v6, :cond_1

    goto :goto_2

    .line 111
    :cond_1
    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    invoke-direct {v0, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    goto :goto_2

    .line 107
    :cond_2
    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v6, "ROFT"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    goto :goto_2

    .line 103
    :cond_3
    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v6, "ROFN"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    goto :goto_2

    .line 95
    :cond_4
    const-string v6, "RCOS"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 97
    invoke-virtual {v5, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    :cond_5
    :goto_2
    goto/16 :goto_5

    .line 118
    :cond_6
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->hashCode()I

    move-result v17

    packed-switch v17, :pswitch_data_1

    :cond_7
    goto :goto_3

    :pswitch_6
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x5

    goto :goto_4

    :pswitch_7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x3

    goto :goto_4

    :pswitch_8
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x4

    goto :goto_4

    :pswitch_9
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    move v10, v6

    goto :goto_4

    :pswitch_a
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :pswitch_b
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_4

    :goto_3
    move/from16 v10, v16

    :goto_4
    if-eqz v10, :cond_b

    const-string v11, "MPOF"

    const/4 v12, 0x1

    if-eq v10, v12, :cond_a

    if-eq v10, v6, :cond_a

    const/4 v6, 0x3

    if-eq v10, v6, :cond_a

    const/4 v6, 0x4

    if-eq v10, v6, :cond_9

    const/4 v6, 0x5

    if-eq v10, v6, :cond_8

    goto :goto_5

    .line 136
    :cond_8
    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    invoke-direct {v0, v4, v2}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->getFailTypeForILA(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 132
    :cond_9
    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v6, "MOFT"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    goto :goto_5

    .line 128
    :cond_a
    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v6, "MOFN"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    goto :goto_5

    .line 120
    :cond_b
    const-string v6, "MPOS"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_c

    .line 122
    invoke-virtual {v5, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    :cond_c
    :goto_5
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-object/from16 v10, p7

    if-ne v10, v6, :cond_d

    .line 143
    const-string v6, "SMFB"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    .end local v9    # "msgTypeForILA":Ljava/lang/String;
    :cond_d
    move-object/from16 v6, p8

    goto :goto_6

    :cond_e
    move-object/from16 v8, p5

    move-object/from16 v10, p7

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v6, :cond_11

    .line 146
    if-nez v2, :cond_f

    .line 147
    const-string v6, "RCMT"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v6, p8

    goto :goto_6

    .line 149
    :cond_f
    move-object/from16 v6, p8

    invoke-direct {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->getChatBotTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotTrafficType;)Ljava/lang/String;

    move-result-object v9

    .line 150
    .local v9, "trafficTypeForILA":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    .line 151
    invoke-virtual {v5, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    :cond_10
    const-string v11, "MPMT"

    invoke-virtual {v5, v11, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_6

    .line 145
    .end local v9    # "trafficTypeForILA":Ljava/lang/String;
    :cond_11
    move-object/from16 v6, p8

    .line 156
    :goto_6
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/ImBigDataProcessor;->mContext:Landroid/content/Context;

    const-string v9, "DRCS"

    move/from16 v11, p1

    invoke-static {v11, v7, v9, v5}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 157
    return-void

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x30
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
