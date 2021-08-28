.class public Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;
.super Ljava/lang/Object;
.source "MnoStrategyCreator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MnoStrategyCreator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 5
    .param p0, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 17
    invoke-static {p2, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 18
    .local v0, "rcsAs":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "rcsProfile":Ljava/lang/String;
    sget-object v2, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 22
    .local v2, "policyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    invoke-static {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyTypeByRcsAs(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v2

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 25
    invoke-static {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyTypeByRcsProfile(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v2

    .line 28
    :cond_1
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    if-ne v2, v3, :cond_2

    .line 29
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyTypeByMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v2

    .line 32
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPolicyType: phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MnoStrategyCreator"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-object v2
.end method

.method private static getPolicyTypeByMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 5
    .param p0, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 85
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    goto/16 :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 91
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_3

    .line 92
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ATT:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 93
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_4

    .line 94
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOUS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 95
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_5

    .line 96
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 97
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_6

    .line 98
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->USCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 99
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_7

    .line 100
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 101
    :cond_7
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_8

    .line 102
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 103
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_9

    .line 104
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 105
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_a

    .line 106
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SINGTEL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 107
    :cond_a
    sget-object v0, Lcom/sec/internal/constants/Mno;->TCE:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_b

    .line 108
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TCE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 109
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_c

    .line 110
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELSTRA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 111
    :cond_c
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 112
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELENOR:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 113
    :cond_d
    new-array v0, v0, [Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_NORWAY:Lcom/sec/internal/constants/Mno;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELIA_SWE:Lcom/sec/internal/constants/Mno;

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 114
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TELIA:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 115
    :cond_e
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_f

    .line 116
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 119
    :cond_f
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 86
    :cond_10
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method

.method private static getPolicyTypeByRcsAs(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1
    .param p0, "rcsAs"    # Ljava/lang/String;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 38
    const-string v0, "jibe"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_ROMANIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_BELGIUM:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->JIBE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 42
    :cond_2
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODAFONE_IN_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 40
    :cond_3
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ORANGE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 46
    :cond_4
    const-string/jumbo v0, "sec"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 47
    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_5

    .line 48
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->KT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 50
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SEC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 53
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method

.method private static getPolicyTypeByRcsProfile(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    .locals 1
    .param p0, "rcsProfile"    # Ljava/lang/String;
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 59
    const-string v0, "UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 60
    sget-object v0, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    .line 61
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->BMC_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 62
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    .line 63
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SPR_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 64
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_2

    .line 65
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VZW_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 67
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->VODA_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 70
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_5

    .line 71
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->SWISSCOM_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 72
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_6

    .line 73
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->CMCC:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 74
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 75
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->RJIL_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 77
    :cond_7
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 69
    :cond_8
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->TMOBILE_UP:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0

    .line 80
    :cond_9
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    return-object v0
.end method

.method public static makeInstance(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 4
    .param p0, "mno"    # Lcom/sec/internal/constants/Mno;
    .param p1, "phoneId"    # I
    .param p2, "context"    # Landroid/content/Context;

    .line 124
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator;->getPolicyType(Lcom/sec/internal/constants/Mno;ILandroid/content/Context;)Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    move-result-object v0

    .line 125
    .local v0, "policyType":Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;
    const/4 v1, 0x0

    .line 126
    .local v1, "strategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/MnoStrategyCreator$1;->$SwitchMap$com$sec$internal$ims$settings$RcsPolicySettings$RcsPolicyType:[I

    invoke-virtual {v0}, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 209
    sget-object v0, Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;->DEFAULT_RCS:Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;

    .line 210
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    goto/16 :goto_0

    .line 205
    :pswitch_0
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/SwisscomUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 206
    goto/16 :goto_0

    .line 202
    :pswitch_1
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/KtUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 203
    goto/16 :goto_0

    .line 199
    :pswitch_2
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/SecUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 200
    goto/16 :goto_0

    .line 196
    :pswitch_3
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/JibeUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 197
    goto/16 :goto_0

    .line 187
    :pswitch_4
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VodaUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VodaUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 188
    goto/16 :goto_0

    .line 184
    :pswitch_5
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 185
    goto/16 :goto_0

    .line 181
    :pswitch_6
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultUPMnoStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 182
    goto/16 :goto_0

    .line 175
    :pswitch_7
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/TceStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/TceStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 176
    goto/16 :goto_0

    .line 172
    :pswitch_8
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 173
    goto/16 :goto_0

    .line 169
    :pswitch_9
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/BmcStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 170
    goto :goto_0

    .line 166
    :pswitch_a
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/SprStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/SprStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 167
    goto :goto_0

    .line 163
    :pswitch_b
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/VzwStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 164
    goto :goto_0

    .line 160
    :pswitch_c
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/TmoStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 161
    goto :goto_0

    .line 157
    :pswitch_d
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 158
    goto :goto_0

    .line 154
    :pswitch_e
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/EmeiaStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 155
    goto :goto_0

    .line 149
    :pswitch_f
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DTStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DTStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 150
    goto :goto_0

    .line 146
    :pswitch_10
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilUPStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilUPStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 147
    goto :goto_0

    .line 143
    :pswitch_11
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/RjilStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 144
    goto :goto_0

    .line 140
    :pswitch_12
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 141
    goto :goto_0

    .line 137
    :pswitch_13
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/UsccStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/UsccStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 138
    goto :goto_0

    .line 134
    :pswitch_14
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    invoke-direct {v2, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    move-object v1, v2

    .line 135
    nop

    .line 214
    :goto_0
    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->setPolicyType(Lcom/sec/internal/ims/settings/RcsPolicySettings$RcsPolicyType;)V

    .line 215
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
