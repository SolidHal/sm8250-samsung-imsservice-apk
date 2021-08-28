.class public Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;
.super Ljava/lang/Object;
.source "SmsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_ID_BASE:I = 0x3e8

.field private static mIncommingMagId:I

.field private static mRPMsgRef:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    .line 45
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static broadcastDcnNumber(Landroid/content/Context;I)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "defaultPhoneId"    # I

    .line 233
    const-string v0, "omadm/./3GPP_IMS/DCN_NUMBER"

    const-string v1, ""

    invoke-static {p0, v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "dcn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    const-string v1, "DCN_NUMBER"

    .line 237
    .local v1, "item":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastDcnNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.ims.dm.DM_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "item"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string/jumbo v3, "phoneId"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 245
    .end local v1    # "item":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected static broadcastSCBMState(Landroid/content/Context;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneInSCBMState"    # Z
    .param p2, "phoneId"    # I

    .line 248
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastSCBMState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    const-string/jumbo v1, "phoneInSCBMState"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 252
    const-string/jumbo v1, "phoneId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 254
    return-void
.end method

.method protected static disallowReregistration(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 162
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 163
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    .line 170
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 173
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected static getIncommingMagId()I
    .locals 1

    .line 158
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    return v0
.end method

.method protected static getIncreasedRPRef()I
    .locals 2

    .line 104
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    .line 105
    const/16 v1, 0xfe

    if-lt v0, v1, :cond_0

    .line 106
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    .line 108
    :cond_0
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return v0
.end method

.method protected static getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;
    .locals 8
    .param p0, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 85
    const-string v0, ""

    if-nez p0, :cond_0

    .line 86
    return-object v0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v1

    .line 90
    .local v1, "pImpu":Lcom/sec/ims/util/NameAddr;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 92
    .local v2, "impu":Lcom/sec/ims/util/ImsUri;
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 93
    .local v3, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/NameAddr;

    .line 95
    .local v5, "addr":Lcom/sec/ims/util/NameAddr;
    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 96
    invoke-virtual {v5}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 98
    .end local v5    # "addr":Lcom/sec/ims/util/NameAddr;
    :cond_2
    goto :goto_1

    .line 100
    :cond_3
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method protected static getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .line 116
    .local p0, "pendingQueue":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 119
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 120
    .local v2, "key":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 121
    .local v3, "value":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    return v2

    .line 124
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    .end local v2    # "key":I
    .end local v3    # "value":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :cond_0
    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected static getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I
    .locals 7
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;[B)I"
        }
    .end annotation

    .line 129
    .local p0, "pendingQueue":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    const/4 v0, -0x1

    .line 130
    .local v0, "rpRef":I
    const/4 v1, -0x1

    if-eqz p1, :cond_3

    array-length v2, p1

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    goto :goto_1

    .line 133
    :cond_0
    aget-byte v2, p1, v3

    and-int/lit16 v0, v2, 0xff

    .line 135
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 138
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 139
    .local v4, "key":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 140
    .local v5, "value":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v6

    if-ne v0, v6, :cond_1

    .line 141
    return v4

    .line 143
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;"
    .end local v4    # "key":I
    .end local v5    # "value":Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    :cond_1
    goto :goto_0

    .line 144
    :cond_2
    return v1

    .line 131
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;>;>;"
    :cond_3
    :goto_1
    return v1
.end method

.method protected static getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isTel"    # Z

    .line 49
    const/4 v0, 0x0

    .line 50
    .local v0, "scaUri":Lcom/sec/ims/util/ImsUri;
    const-string/jumbo v1, "sip:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 52
    :cond_0
    const/4 v2, 0x0

    if-nez p0, :cond_1

    .line 53
    return-object v2

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 56
    .local v3, "impu":Lcom/sec/ims/util/ImsUri;
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    .line 57
    .local v4, "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 58
    .local v5, "mno":Lcom/sec/internal/constants/Mno;
    if-eqz p2, :cond_5

    .line 60
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v2, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getDomain()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "domain":Ljava/lang/String;
    const-string v6, "+"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";phone-context="

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_1

    .line 64
    :cond_3
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 69
    .end local v2    # "domain":Ljava/lang/String;
    :goto_1
    goto :goto_4

    .line 71
    :cond_4
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_4

    .line 74
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v5, v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTN_SOUTHAFRICA:Lcom/sec/internal/constants/Mno;

    if-ne v5, v1, :cond_6

    goto :goto_2

    .line 77
    :cond_6
    check-cast v2, Lcom/sec/ims/util/ImsUri$UriType;

    invoke-virtual {v4, v2, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_4

    .line 75
    :cond_7
    :goto_2
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_4

    .line 51
    .end local v3    # "impu":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "uriGenerator":Lcom/sec/internal/ims/util/UriGenerator;
    .end local v5    # "mno":Lcom/sec/internal/constants/Mno;
    :cond_8
    :goto_3
    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 81
    :goto_4
    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getNewMsgId()I
    .locals 2

    .line 149
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    const v1, 0xffff

    if-ne v0, v1, :cond_0

    .line 150
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    goto :goto_0

    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    .line 154
    :goto_0
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mIncommingMagId:I

    return v0
.end method

.method protected static getRPMsgRef()I
    .locals 1

    .line 112
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->mRPMsgRef:I

    return v0
.end method

.method private static isKORMnoName(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 179
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 180
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    sget-object v1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method protected static isProhibited(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5
    .param p0, "regInfo"    # Lcom/sec/ims/ImsRegistration;

    .line 216
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 217
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 218
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationList()Ljava/util/Map;

    move-result-object v2

    .line 219
    .local v2, "mRegistrationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 220
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-nez v3, :cond_0

    .line 221
    return v0

    .line 223
    :cond_0
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ImsRegistration;

    .line 224
    .local v4, "reg":Lcom/sec/ims/ImsRegistration;
    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsRegistration;->setProhibited(Z)V

    .line 226
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v0

    return v0

    .line 229
    .end local v1    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .end local v2    # "mRegistrationList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/sec/ims/ImsRegistration;>;"
    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .end local v4    # "reg":Lcom/sec/ims/ImsRegistration;
    :cond_1
    return v0
.end method

.method protected static isServiceAvailable(Landroid/telephony/TelephonyManager;I)Z
    .locals 7
    .param p0, "tm"    # Landroid/telephony/TelephonyManager;
    .param p1, "phoneId"    # I

    .line 187
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 188
    .local v0, "mno":Lcom/sec/internal/constants/Mno;
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 189
    .local v1, "networkType":I
    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    const/16 v4, 0xd

    const/4 v5, 0x1

    if-eq v0, v2, :cond_3

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->disallowReregistration(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isKORMnoName(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    if-eq v1, v4, :cond_1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    .line 205
    return v3

    .line 207
    :cond_1
    return v5

    .line 211
    :cond_2
    return v5

    .line 191
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v6, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "Softphone"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    return v5

    .line 196
    :cond_4
    if-eq v1, v4, :cond_5

    const/16 v2, 0x12

    if-eq v1, v2, :cond_5

    .line 198
    return v3

    .line 200
    :cond_5
    return v5
.end method

.method protected static onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V
    .locals 4
    .param p0, "regInfo"    # Lcom/sec/ims/ImsRegistration;
    .param p1, "reasonCode"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 258
    .local v0, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    .line 259
    .local v1, "governor":Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    if-eqz v1, :cond_0

    .line 260
    new-instance v2, Lcom/sec/ims/util/SipError;

    invoke-direct {v2, p1, p2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    const-string/jumbo v3, "smsip"

    invoke-interface {v1, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    .line 262
    :cond_0
    return-void
.end method

.method protected static sendDailyReport(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 265
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v0, "cv":Landroid/content/ContentValues;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SMTI"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 267
    const-string/jumbo v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 268
    const-string/jumbo v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    const-string v1, "DRCS"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 270
    return-void
.end method

.method protected static sendHWParamToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "feature"    # Ljava/lang/String;
    .param p4, "hitType"    # Ljava/lang/String;
    .param p5, "ver"    # Ljava/lang/String;
    .param p6, "manufacture"    # Ljava/lang/String;
    .param p7, "dev_custom_dataset"    # Ljava/lang/String;
    .param p8, "custom_dataset"    # Ljava/lang/String;
    .param p9, "pri_custom_dataset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 379
    const-string v0, "HqmManagerService"

    move-object v1, p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    .line 380
    .local v0, "hqm":Landroid/os/SemHqmManager;
    if-nez v0, :cond_0

    .line 381
    const/4 v2, 0x0

    return v2

    .line 383
    :cond_0
    move-object v2, v0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method protected static sendISMOInfoToHQM(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZI)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Ljava/lang/String;
    .param p2, "SIP"    # I
    .param p3, "RPAck"    # Ljava/lang/String;
    .param p4, "Regi"    # Z
    .param p5, "phoneId"    # I

    .line 279
    const/16 v0, 0x198

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2c4

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    const/16 v0, 0xc8

    if-lt p2, v0, :cond_2

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_2

    .line 282
    const-string p1, "0"

    goto :goto_1

    .line 280
    :cond_1
    :goto_0
    const-string p1, "3"

    .line 285
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 287
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "SOIS"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 289
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "SOIF"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "send_mode"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v1, "DRCS"

    invoke-static {p5, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 296
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "\"ORST\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    if-eqz p2, :cond_4

    .line 299
    const-string v2, "\",\"OSIP\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 301
    :cond_4
    if-eqz p3, :cond_5

    .line 302
    const-string v2, "\",\"ORPC\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ISMO"

    invoke-static {p0, v3, v2, p4, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMSInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 307
    return-void
.end method

.method protected static sendSMOTInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "MOMT"    # Ljava/lang/String;
    .param p2, "ITER"    # Ljava/lang/String;
    .param p3, "Regi"    # Z
    .param p4, "phoneId"    # I

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\"MOMT\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const-string v1, "\",\"ITER\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SMOT"

    invoke-static {p0, v2, v1, p3, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSMSInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 322
    return-void
.end method

.method private static sendSMSInfoToHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "customdataset"    # Ljava/lang/String;
    .param p3, "Regi"    # Z
    .param p4, "phoneId"    # I

    .line 330
    const-string v0, "gsm.operator.numeric"

    const-string v1, "00101#"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "numericList":[Ljava/lang/String;
    const-string v0, "00101#"

    .line 332
    .local v0, "numeric":Ljava/lang/String;
    const-string v2, "gsm.operator.isroaming"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 333
    .local v2, "isRoaming":Z
    if-gez p4, :cond_0

    .line 334
    const/4 v4, 0x0

    .end local p4    # "phoneId":I
    .local v4, "phoneId":I
    goto :goto_0

    .line 333
    .end local v4    # "phoneId":I
    .restart local p4    # "phoneId":I
    :cond_0
    move/from16 v4, p4

    .line 337
    .end local p4    # "phoneId":I
    .restart local v4    # "phoneId":I
    :goto_0
    array-length v5, v1

    if-le v5, v4, :cond_3

    .line 338
    aget-object v0, v1, v4

    .line 339
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-le v5, v6, :cond_1

    .line 340
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    .line 342
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_2

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 342
    :cond_2
    move-object v3, v0

    goto :goto_2

    .line 337
    :cond_3
    move-object v3, v0

    .line 348
    .end local v0    # "numeric":Ljava/lang/String;
    .local v3, "numeric":Ljava/lang/String;
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v0

    .line 349
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v0, "\"PLMN\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    const-string v0, "\"RgSt\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    const/4 v0, 0x1

    if-ne v2, v0, :cond_4

    .line 353
    const-string v0, "6\","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    goto :goto_3

    .line 354
    :cond_4
    move/from16 v6, p3

    if-ne v6, v0, :cond_5

    .line 355
    const-string v0, "2\","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 357
    :cond_5
    const-string v0, "1\","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :goto_3
    move-object/from16 v7, p2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    invoke-static/range {p0 .. p0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 361
    .local v8, "CSDA":Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 362
    const-string v0, "\",\"CSDA\":\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_6
    const-string v0, "\""

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, "basic_customDataSet":Ljava/lang/String;
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SMS BigData] sendSMSInfoToHQM : feature- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p1

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", data- "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const/4 v10, 0x0

    :try_start_0
    const-string v11, "Telephony"

    const-string/jumbo v13, "sm"

    const-string v0, "0.0"

    const-string/jumbo v16, "sec"

    const-string v17, ""

    const-string v18, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v9, p0

    move-object/from16 v12, p1

    move-object v14, v0

    move-object/from16 v19, v15

    .end local v15    # "basic_customDataSet":Ljava/lang/String;
    .local v19, "basic_customDataSet":Ljava/lang/String;
    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    :try_start_1
    invoke-static/range {v9 .. v18}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendHWParamToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 373
    goto :goto_4

    .line 372
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v19    # "basic_customDataSet":Ljava/lang/String;
    .restart local v15    # "basic_customDataSet":Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object/from16 v19, v15

    .line 374
    .end local v15    # "basic_customDataSet":Ljava/lang/String;
    .restart local v19    # "basic_customDataSet":Ljava/lang/String;
    :goto_4
    return-void
.end method
