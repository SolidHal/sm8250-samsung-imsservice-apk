.class public Lcom/sec/internal/helper/SimUtil;
.super Ljava/lang/Object;
.source "SimUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SimUtil"

.field private static sDefaultPhoneId:I

.field private static sMnoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/Mno;",
            ">;"
        }
    .end annotation
.end field

.field private static sPhoneCount:I

.field private static sSubMgr:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    .line 28
    sput v0, Lcom/sec/internal/helper/SimUtil;->sDefaultPhoneId:I

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigDualIMS()Ljava/lang/String;
    .locals 5

    .line 88
    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 89
    const-string v0, "DSDS_SI_DDS"

    return-object v0

    .line 91
    :cond_0
    const-string/jumbo v0, "persist.ril.config.dualims"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "configDualImsProp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 93
    return-object v0

    .line 95
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->CONFIG_DUAL_IMS:Ljava/lang/String;

    .line 96
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "configDualIMS":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 98
    const-string v1, "DSDS_SI_DDS"

    .line 101
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "CscFeature_Common_SupportDualIMS"

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 104
    .local v2, "isDualImsCsc":Z
    if-nez v2, :cond_3

    .line 105
    const-string v1, "DSDS_SI_DDS"

    .line 108
    :cond_3
    return-object v1
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 80
    sget v0, Lcom/sec/internal/helper/SimUtil;->sDefaultPhoneId:I

    return v0
.end method

.method public static getMno()Lcom/sec/internal/constants/Mno;
    .locals 2

    .line 183
    sget v0, Lcom/sec/internal/helper/SimUtil;->sDefaultPhoneId:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/SimUtil;->getMno(IZ)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    return-object v0
.end method

.method public static getMno(I)Lcom/sec/internal/constants/Mno;
    .locals 1
    .param p0, "phoneId"    # I

    .line 193
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/internal/helper/SimUtil;->getMno(IZ)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    return-object v0
.end method

.method private static getMno(IZ)Lcom/sec/internal/constants/Mno;
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "referSalesCode"    # Z

    .line 208
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {}, Lcom/sec/internal/constants/Mno;->getMockMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/Mno;

    return-object v0

    .line 214
    :cond_1
    if-eqz p1, :cond_2

    .line 215
    const-string v0, "SimUtil"

    const-string v1, "fail to get mno from map"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 216
    invoke-static {p0}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 217
    .local v0, "salesCode":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "salesCode":Ljava/lang/String;
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    return-object v0
.end method

.method public static getOppositeSimSlot(I)I
    .locals 1
    .param p0, "currentSimSlot"    # I

    .line 224
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    if-ne p0, v0, :cond_0

    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    :goto_0
    return v0
.end method

.method public static getPhoneCount()I
    .locals 1

    .line 72
    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    return v0
.end method

.method public static getSimMno(I)Lcom/sec/internal/constants/Mno;
    .locals 1
    .param p0, "phoneId"    # I

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/internal/helper/SimUtil;->getMno(IZ)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    return-object v0
.end method

.method public static getSimSlotPriority()I
    .locals 6

    .line 33
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    const-string v1, "SimUtil"

    if-nez v0, :cond_0

    .line 34
    const-string v0, "getSimSlotPriority: SubscriptionManager is not created. Return 0.."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_0
    invoke-static {v0}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v0

    .line 40
    .local v0, "simSlot":I
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->isValidSimSlot(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimSlotPriority: Invalid DDS slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", phoneCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v2, 0x0

    .local v2, "slot":I
    :goto_0
    sget v3, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    if-ge v2, v3, :cond_2

    .line 45
    sget-object v3, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 46
    .local v3, "subinfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subInfo is valid on slot#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return v2

    .line 44
    .end local v3    # "subinfo":Landroid/telephony/SubscriptionInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v2    # "slot":I
    :cond_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getDefaultPhoneId()I

    move-result v1

    return v1

    .line 56
    :cond_3
    return v0
.end method

.method public static getSubId(I)I
    .locals 3
    .param p0, "phoneId"    # I

    .line 121
    invoke-static {p0}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 122
    .local v0, "subIdArray":[I
    if-nez v0, :cond_0

    .line 123
    const-string v1, "SimUtil"

    const-string/jumbo v2, "subIdArray is null"

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    const/4 v1, -0x1

    return v1

    .line 126
    :cond_0
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public static isDdsSimSlot(I)Z
    .locals 1
    .param p0, "phoneId"    # I

    .line 117
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    invoke-static {v0}, Lcom/sec/ims/extensions/Extensions$SubscriptionManager;->getDefaultDataPhoneId(Landroid/telephony/SubscriptionManager;)I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isDualIMS()Z
    .locals 2

    .line 112
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getConfigDualIMS()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "config":Ljava/lang/String;
    const-string v1, "DSDS_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "DSDA_DI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isMultiSimSupported()Z
    .locals 2

    .line 131
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "sp":Ljava/lang/String;
    const-string v1, "dsds"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dsda"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isSimMobilityFeatureEnabled()Z
    .locals 4

    .line 140
    const-string/jumbo v0, "persist.ims.simmobility"

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 142
    .local v0, "isSimMoEnabledForTest":I
    const-string v1, "SimUtil"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 143
    const-string v3, "SimMobility Enabled for test"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v2

    .line 145
    :cond_0
    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 146
    const-string v2, "SimMobility disabled by manual"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v3

    .line 152
    :cond_1
    const-string/jumbo v1, "ro.product.first_api_level"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x1c

    if-lt v1, v3, :cond_2

    .line 153
    return v2

    .line 157
    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SecFloatingFeatures;->SIM_MOBILITY_ENABLED:Ljava/lang/String;

    .line 158
    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 157
    return v1
.end method

.method public static isSoftphoneEnabled()Z
    .locals 2

    .line 163
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "mdmnTypes":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Softphone"

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    const/4 v1, 0x1

    return v1

    .line 168
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportCarrierVersion(I)Z
    .locals 2
    .param p0, "phoneId"    # I

    .line 231
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_GMS_SetClientIDBaseMs"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "clientId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isValidSimSlot(I)Z
    .locals 1
    .param p0, "slot"    # I

    .line 64
    if-ltz p0, :cond_0

    sget v0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDefaultPhoneId(I)V
    .locals 0
    .param p0, "phoneId"    # I

    .line 84
    sput p0, Lcom/sec/internal/helper/SimUtil;->sDefaultPhoneId:I

    .line 85
    return-void
.end method

.method public static setPhoneCount(I)V
    .locals 3
    .param p0, "phoneCount"    # I

    .line 76
    sget-object v1, Lcom/sec/internal/helper/SimUtil;->LOG_TAG:Ljava/lang/String;

    const-string v2, "SOLIDHAL setPhoneCount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput p0, Lcom/sec/internal/helper/SimUtil;->sPhoneCount:I

    .line 77
    return-void
.end method

.method public static setSimMno(ILcom/sec/internal/constants/Mno;)V
    .locals 2
    .param p0, "phoneId"    # I
    .param p1, "mno"    # Lcom/sec/internal/constants/Mno;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSimMno : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimUtil"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    sget-object v0, Lcom/sec/internal/helper/SimUtil;->sMnoMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    return-void
.end method

.method public static setSubMgr(Landroid/telephony/SubscriptionManager;)V
    .locals 0
    .param p0, "subMgr"    # Landroid/telephony/SubscriptionManager;

    .line 68
    sput-object p0, Lcom/sec/internal/helper/SimUtil;->sSubMgr:Landroid/telephony/SubscriptionManager;

    .line 69
    return-void
.end method
