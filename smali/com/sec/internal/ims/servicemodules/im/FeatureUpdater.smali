.class public Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;
.super Ljava/lang/Object;
.source "FeatureUpdater.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private features:J

.field private final mContext:Landroid/content/Context;

.field private mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imModule"    # Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 29
    return-void
.end method

.method private isGlsEnabled(I)Z
    .locals 4
    .param p1, "phoneId"    # I

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 76
    .local v0, "isEnableGls":Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v2, "geolocPushAuth"

    invoke-static {v2, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 79
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableGls: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private updateChatBotFeatures()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "chatbot-communication"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 134
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SESSION_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_1

    .line 135
    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 138
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 139
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SLM_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_3

    .line 140
    :cond_2
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 143
    :cond_3
    return-void
.end method

.method private updateFtFeatures()V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "ft"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtThumb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v3, "ft_http"

    invoke-static {v0, v3, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 115
    :cond_3
    return-void
.end method

.method private updateGlsFeatures()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "gls"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->isGlsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGlsPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 121
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_0

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGlsPullEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 129
    :cond_1
    return-void
.end method

.method private updateImFeatures()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    const-string v2, "im"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 85
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v0, v1, :cond_1

    .line 87
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    goto :goto_0

    .line 89
    :cond_1
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isGroupChatFullStandFwd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFullSFGroupChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 94
    :cond_2
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 96
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isJoynIntegratedMessaging()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 97
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 100
    :cond_4
    return-void
.end method


# virtual methods
.method public updateFeatures(ILcom/sec/internal/ims/servicemodules/im/ImConfig;)J
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 32
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, "isRcsEnabled":Z
    :goto_0
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 39
    :cond_1
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 40
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    .line 41
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 42
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 46
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateImFeatures()V

    .line 47
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateFtFeatures()V

    .line 49
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "slm"

    invoke-static {v2, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-eq v1, v2, :cond_2

    .line 50
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 53
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateGlsFeatures()V

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateChatBotFeatures()V

    .line 56
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v1, :cond_3

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v3, v3

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 59
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v1, :cond_4

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    .line 63
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFeatures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    invoke-static {v3, v4}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->features:J

    return-wide v1

    .line 34
    :cond_5
    :goto_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    const-string v4, "RCS is disabled."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/high16 v1, 0x40000000    # 2.0f

    const-string v4, "none"

    invoke-static {v1, p1, v4}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    .line 36
    return-wide v2
.end method
