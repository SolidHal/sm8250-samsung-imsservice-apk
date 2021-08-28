.class Lcom/sec/internal/ims/core/sim/SimManagerUtils;
.super Ljava/lang/Object;
.source "SimManagerUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimManager-Utils"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static convertMnoInfoToString(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 6
    .param p0, "mnoInfo"    # Landroid/content/ContentValues;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v0, "summary":Ljava/lang/StringBuilder;
    const-string v1, "NetworkName"

    const-string v2, "?"

    invoke-static {p0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, "EnableIMS"

    const/4 v3, 0x0

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "T"

    const-string v5, "F"

    if-eqz v1, :cond_0

    move-object v1, v4

    goto :goto_0

    :cond_0
    move-object v1, v5

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, "EnableVoLTE"

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v4

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, "EnableVoiceoverWIFI"

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    move-object v1, v5

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, "EnableSMSoverIP"

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v4

    goto :goto_3

    :cond_3
    move-object v1, v5

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, "SS_CSFBwithIMSerror"

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v4

    goto :goto_4

    :cond_4
    move-object v1, v5

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, "EnableRCS"

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v1, v4

    goto :goto_5

    :cond_5
    move-object v1, v5

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string v1, "EnableRCSchat"

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    move-object v4, v5

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    sget-object v1, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAIN_VOICE_EUTRAN:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$8F3wP2ckYHZLMvgib9msBmmRnWk;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$8F3wP2ckYHZLMvgib9msBmmRnWk;-><init>(Landroid/content/ContentValues;)V

    .line 253
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/ims/core/sim/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;->INSTANCE:Lcom/sec/internal/ims/core/sim/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;

    .line 254
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "Emregencycall_Domain"

    const-string v3, ""

    invoke-static {p0, v1, v3}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "eDomain":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 259
    const-string v4, "Emergencycall_Domain"

    invoke-static {p0, v4, v3}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    :cond_7
    sget-object v4, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAIN_EMERGENCY_CALL:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    sget-object v4, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAINS_PSCS:Ljava/util/Map;

    const-string v5, "SS_Domain_Preference"

    invoke-static {p0, v5, v3}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    sget-object v4, Lcom/sec/internal/constants/ims/util/CscParserConstants$CustomerSettingTable$VoLTE;->MAP_DOMAINS_PSCS:Ljava/util/Map;

    const-string v5, "USSD_Domain_Preference"

    invoke-static {p0, v5, v3}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static extractImsiFromImpi(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "impi"    # Ljava/lang/String;
    .param p1, "imsiFromTm"    # Ljava/lang/String;

    .line 97
    const-string v0, "SimManager-Utils"

    if-nez p0, :cond_0

    .line 98
    const-string v1, "IMPI is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-object p1

    .line 102
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const-string v1, "IMPI is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-object p1

    .line 107
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 109
    .local v1, "end":I
    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "imsi":Ljava/lang/String;
    return-object v0

    .line 113
    .end local v0    # "imsi":Ljava/lang/String;
    :cond_2
    const-string v2, "@ not found, IMPI is invalid"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object p1
.end method

.method static extractMnoFromImpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "impi"    # Ljava/lang/String;

    .line 55
    const-string v0, "\\d+@ims\\.mnc\\d+\\.mcc\\d+\\.3gppnetwork\\.org"

    .line 59
    .local v0, "impiPattern":Ljava/lang/String;
    const-string v1, "SimManager-Utils"

    if-nez p0, :cond_0

    .line 60
    const-string v2, "IMPI is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    return-object v1

    .line 64
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 65
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 67
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string v4, "IMPI is empty"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v1, ""

    return-object v1

    .line 72
    :cond_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 74
    const-string v1, "mcc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    .line 75
    .local v1, "start":I
    const-string v4, "."

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 76
    .local v5, "end":I
    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "mccMnc":Ljava/lang/String;
    const-string v7, "mnc"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x3

    .line 79
    .end local v1    # "start":I
    .local v7, "start":I
    invoke-virtual {p0, v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .end local v5    # "end":I
    .local v1, "end":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v6    # "mccMnc":Ljava/lang/String;
    .local v4, "mccMnc":Ljava/lang/String;
    goto :goto_0

    .line 82
    .end local v1    # "end":I
    .end local v4    # "mccMnc":Ljava/lang/String;
    .end local v7    # "start":I
    :cond_2
    const/4 v7, 0x0

    .line 83
    .restart local v7    # "start":I
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    .restart local v1    # "end":I
    const/16 v4, 0xe

    if-ne v1, v4, :cond_3

    .line 85
    const/4 v4, 0x5

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "mccMnc":Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v4    # "mccMnc":Ljava/lang/String;
    :cond_3
    const/4 v4, 0x6

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 90
    .restart local v4    # "mccMnc":Ljava/lang/String;
    :goto_0
    return-object v4
.end method

.method static getEhplmn(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .line 184
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getEhplmns()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 185
    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;->INSTANCE:Lcom/sec/internal/ims/core/sim/-$$Lambda$SimManagerUtils$CfbNCm4plA8nnLFICz58e_nFfy8;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    return-object v1

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/NoSuchMethodError;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEhplmn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SimManager-Utils"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v1    # "e":Ljava/lang/NoSuchMethodError;
    return-object v0
.end method

.method static getMvnoName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 194
    const-string v0, ""

    .line 195
    .local v0, "mvnoname":Ljava/lang/String;
    sget-char v1, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 196
    .local v1, "delimiterPos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 197
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 199
    :cond_0
    return-object v0
.end method

.method static getOmcNetworkCode(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "phoneId"    # I
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 175
    const-string/jumbo v0, "ro.csc.omcnw_code"

    .line 176
    .local v0, "targetProperty":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->getOmcVersion()D

    move-result-wide v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 177
    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p0, v1, :cond_0

    const-string/jumbo v1, "ro.csc.omcnw_code"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "ro.csc.omcnw_code2"

    :goto_0
    move-object v0, v1

    .line 179
    :cond_1
    invoke-static {v0, p1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getSimEmergencyDomain(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 2
    .param p0, "mnoInfo"    # Landroid/content/ContentValues;

    .line 229
    const-string v0, "imsSwitchType"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 230
    .local v0, "imsSwitchType":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    const-string v1, "Emregencycall_Domain"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 231
    :cond_1
    :goto_0
    const-string v1, ""

    return-object v1
.end method

.method static getSimMobilityRcsSettings(ILjava/util/List;)Landroid/content/ContentValues;
    .locals 7
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .line 203
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v0, "rcsSettings":Landroid/content/ContentValues;
    const/4 v1, 0x0

    .line 205
    .local v1, "isEnableRcs":Z
    const/4 v2, 0x0

    .line 207
    .local v2, "isEnableRcsChat":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 208
    .local v4, "p":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcs()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    const/4 v1, 0x1

    .line 210
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getEnableRcsChat()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const/4 v2, 0x1

    goto :goto_1

    .line 215
    .end local v4    # "p":Lcom/sec/ims/settings/ImsProfile;
    :cond_0
    goto :goto_0

    .line 216
    :cond_1
    :goto_1
    const/4 v3, 0x1

    const-string v4, "SimManager-Utils"

    if-eqz v1, :cond_2

    .line 217
    const-string v5, "getSimMobilityRcsSettings: isEnableRcs true"

    invoke-static {v4, p0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 218
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "enableServiceRcs"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 220
    :cond_2
    if-eqz v2, :cond_3

    .line 221
    const-string v5, "getSimMobilityRcsSettings: isEnableRcsChat true"

    invoke-static {v4, p0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 222
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "enableServiceRcschat"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 225
    :cond_3
    return-object v0
.end method

.method static isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 142
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 143
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAidForAppType(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "aid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 146
    .end local v0    # "aid":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "ril.hasisim"

    const-string v1, "0"

    invoke-interface {p1, p0, v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static isValidSimOperator(ILjava/lang/String;)Z
    .locals 3
    .param p0, "phoneId"    # I
    .param p1, "operator"    # Ljava/lang/String;

    .line 133
    const/4 v0, 0x1

    .line 134
    .local v0, "simOpValid":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 135
    :cond_0
    const-string v1, "SimManager-Utils"

    const-string v2, "isValidSimOperator: operator is invalid"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    const/4 v0, 0x0

    .line 138
    :cond_1
    return v0
.end method

.method static synthetic lambda$convertMnoInfoToString$1(Landroid/content/ContentValues;Ljava/util/Map$Entry;)Z
    .locals 3
    .param p0, "mnoInfo"    # Landroid/content/ContentValues;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 253
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Voice_Domain_Preference_EUTRAN"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getStringValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$getEhplmn$0(Ljava/lang/String;)Z
    .locals 2
    .param p0, "e"    # Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static needImsUpOnUnknownState(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 49
    const-string/jumbo v0, "phone1_on"

    const-string/jumbo v1, "phone2_on"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "PHONE_ON_KEY":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    aget-object v2, v0, p1

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 51
    const-string/jumbo v1, "ro.boot.hardware"

    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "qcom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    return v3
.end method

.method static parseMccMnc(ILjava/lang/String;)[I
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "mccMnc"    # Ljava/lang/String;

    .line 119
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isValidSimOperator(ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SimManager-Utils"

    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "parseMccMnc: mccMnc is invalid"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 121
    return-object v1

    .line 125
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [I

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v0, v4

    const/4 v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "parseMccMnc: operator is invalid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 128
    return-object v1
.end method

.method static readSimStateProperty(ILcom/sec/internal/helper/os/ITelephonyManager;)Ljava/lang/String;
    .locals 10
    .param p0, "phoneId"    # I
    .param p1, "tm"    # Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 151
    const-string v0, "UNKNOWN"

    if-nez p1, :cond_0

    .line 152
    return-object v0

    .line 155
    :cond_0
    const-string v1, "gsm.sim.state"

    invoke-interface {p1, p0, v1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "state":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x79d7dbfb

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eq v3, v4, :cond_7

    if-eqz v3, :cond_6

    const v4, 0x4a3e183

    if-eq v3, v4, :cond_5

    const v4, 0x19d1382a

    if-eq v3, v4, :cond_4

    const v4, 0x3da260f7

    if-eq v3, v4, :cond_3

    const v4, 0x72b3d739

    if-eq v3, v4, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v3, "ABSENT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v3, "NOT_READY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v8

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v5

    goto :goto_0

    :cond_5
    const-string v3, "READY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v9

    goto :goto_0

    :cond_6
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v6

    goto :goto_0

    :cond_7
    const-string v3, "LOADED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v7

    :goto_0
    if-eqz v2, :cond_9

    if-eq v2, v9, :cond_9

    if-eq v2, v8, :cond_9

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_8

    .line 170
    const-string v0, "LOCKED"

    return-object v0

    .line 164
    :cond_8
    return-object v0

    .line 161
    :cond_9
    return-object v1
.end method
