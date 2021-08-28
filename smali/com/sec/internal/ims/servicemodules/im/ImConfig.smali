.class public Lcom/sec/internal/ims/servicemodules/im/ImConfig;
.super Ljava/lang/Object;
.source "ImConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImConfig"

.field public static final UNDEFINED_MAX_SIZE_FILE_TR_INCOMING:J = -0x1L

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m1ToManySelectedTech:I

.field private mAutAccept:Z

.field private mAutAcceptGroupChat:Z

.field private mBotPrivacyDisable:Z

.field private mCallComposerTimerIdle:I

.field private mCbftHTTPCSURI:Landroid/net/Uri;

.field private mCfsTrigger:Z

.field private mChatEnabled:Z

.field private mChatRevokeTimer:I

.field private mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

.field private mConfFctyUri:Lcom/sec/ims/util/ImsUri;

.field private mDeferredMsgFuncUri:Lcom/sec/ims/util/ImsUri;

.field private mDisplayNotificationSwitch:I

.field private mEnableFtAutoResumable:Z

.field private mEnableGroupChatListRetrieve:Z

.field private mExploderUri:Lcom/sec/ims/util/ImsUri;

.field protected mExtAttImMSRPFtMaxSize:J

.field protected mExtAttImSlmMaxRecipients:I

.field private mFirstMsgInvite:Z

.field private mFtAutAccept:Z

.field private mFtAutAcceptOriginalConfig:Z

.field private mFtCancelMemoryFull:Z

.field private mFtCapAlwaysOn:Z

.field private mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

.field private mFtEnabled:Z

.field private mFtFallbackAllFail:Z

.field private mFtFbDefault:I

.field private mFtHTTPExtraCSURI:Landroid/net/Uri;

.field private mFtHttpCapAlwaysOn:Z

.field private mFtHttpCsPwd:Ljava/lang/String;

.field private mFtHttpCsUri:Landroid/net/Uri;

.field private mFtHttpCsUser:Ljava/lang/String;

.field private mFtHttpDLUrl:Ljava/lang/String;

.field private mFtHttpEnabled:Z

.field private mFtHttpFallback:I

.field private mFtHttpTrustAllCerts:Z

.field private mFtMax1ToManyRecipients:I

.field private mFtStAndFwEnabled:Z

.field private mFtThumb:Z

.field private mFtWarnSize:J

.field private mGlsPullEnabled:Z

.field private mGlsPushEnabled:Z

.field private mGroupChatEnabled:Z

.field private mGroupChatFullStandFwd:Z

.field private mGroupChatOnlyFStandFwd:Z

.field private mImCapAlwaysOn:Z

.field private mImCapNonRcs:Z

.field private mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

.field private mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field private mImWarnIw:Z

.field private mImWarnSf:Z

.field private mIsAggrImdnSupported:Z

.field private mIsFullSFGroupChat:Z

.field private mJoynIntegratedMessaging:Z

.field private mLegacyLatching:Z

.field private mMax1ToManyRecipients:I

.field private mMaxAdhocGroupSize:I

.field private mMaxConcurrentSession:I

.field private mMaxSize:J

.field private mMaxSize1To1:J

.field private mMaxSize1ToM:J

.field private mMaxSizeExtraFileTr:J

.field private mMaxSizeFileTr:J

.field private mMaxSizeFileTrIncoming:J

.field private mMessagingUX:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

.field private mMsgCapValidityTime:I

.field private mMsgFbDefault:I

.field private mMultiMediaChat:Z

.field private mPagerModeLimit:I

.field private final mPhoneId:I

.field private mPresSrvCap:Z

.field private mPublicAccountAddr:Ljava/lang/String;

.field private mRcsProfile:Ljava/lang/String;

.field private mReconnectGuardTimer:I

.field private mRespondDisplay:Z

.field private mServiceAvailabilityInfoExpiry:I

.field private mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field private mSlmMaxMsgSize:J

.field private mSlmSwitchOverSize:I

.field private mSmsFallbackAuth:Z

.field private mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mTimerIdle:I

.field private mUserAgent:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;

.field private mUserAliasEnabled:Z

.field private mfThttpDefaultPdn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "phoneId"    # I

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    .line 168
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    .line 169
    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 444
    if-eqz p1, :cond_0

    .line 445
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ImConfig"

    const-string v2, "Failed to decrypt the data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    return-object p1

    .line 450
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    nop

    .line 451
    const/4 v0, 0x0

    return-object v0
.end method

.method private getImCapAlwaysOn(Landroid/content/Context;Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    .line 795
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->isUp2NonTransitional(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    return v0

    .line 799
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "imcapalwayson"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 4
    .param p0, "phoneId"    # I

    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    monitor-enter v0

    .line 172
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 173
    .local v1, "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    if-nez v1, :cond_0

    .line 174
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;-><init>(I)V

    move-object v1, v2

    .line 175
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit v0

    return-object v1

    .line 171
    .end local v1    # "config":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .end local p0    # "phoneId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getSipUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 687
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v1, "user_agent"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, "userAgent":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 689
    return-object v0

    .line 692
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "model":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalSwVersion()Ljava/lang/String;

    move-result-object v2

    .line 694
    .local v2, "version":Ljava/lang/String;
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v4, "rcs_client_version"

    const-string v5, "6.0"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 697
    .local v3, "clientVersion":Ljava/lang/String;
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VOD"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    const-string v3, "4.1"

    .line 701
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DTM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DTR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SFR"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TMZ"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 704
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    :goto_0
    move-object v2, v4

    goto :goto_3

    .line 702
    :cond_4
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x8

    if-le v4, v5, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    move-object v4, v2

    :goto_2
    move-object v2, v4

    .line 706
    :goto_3
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-static {v4, v1, v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getFormattedUserAgent(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initRcsConfiguration(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    .line 199
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    goto :goto_0

    .line 201
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const/16 v1, 0xa

    const-string v2, "max_adhoc_group_size"

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    .line 204
    :goto_0
    return-void
.end method

.method private loadGlobalSettings(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 207
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSipUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAgent:Ljava/lang/String;

    .line 208
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "full_sf_group_chat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsFullSFGroupChat:Z

    .line 209
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "aggr_imdn_supported"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsAggrImdnSupported:Z

    .line 210
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "enable_group_chat_list_retrieve"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableGroupChatListRetrieve:Z

    .line 211
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "fthttp_trust_all_certs"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpTrustAllCerts:Z

    .line 212
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "ft_cancel_memory_full"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCancelMemoryFull:Z

    .line 213
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "ft_fallback_all_fail"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFallbackAllFail:Z

    .line 214
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "enable_ft_auto_resumable"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableFtAutoResumable:Z

    .line 215
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v1, "fthttp_over_default_pdn"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mfThttpDefaultPdn:Z

    .line 216
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v1, "pager_mode_size_limit"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPagerModeLimit:I

    .line 217
    return-void
.end method

.method private loadRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    .line 223
    const/4 v0, 0x0

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ChatAuth"

    invoke-virtual {p2, v3, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatEnabled:Z

    .line 224
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "GroupChatAuth"

    invoke-virtual {p2, v4, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatEnabled:Z

    .line 225
    const-string v3, "ftAuth"

    invoke-virtual {p2, v3, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    .line 226
    const-string v3, "ftHTTPCSURI"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    .line 227
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p2, v3, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getFtDefaultTech(Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    .line 228
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne v3, v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    .line 229
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v3

    .line 230
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 229
    const-string/jumbo v7, "standaloneMsgAuth"

    invoke-virtual {p2, v7, v1, v1, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v3, v3, v6

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    .line 231
    const-string/jumbo v3, "smsfallbackauth"

    invoke-virtual {p2, v3, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSmsFallbackAuth:Z

    .line 232
    const-string v3, "geolocPushAuth"

    invoke-virtual {p2, v3, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPushEnabled:Z

    .line 233
    const-string v3, "geolocPullAuth"

    invoke-virtual {p2, v3, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v5

    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPullEnabled:Z

    .line 234
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    .line 235
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v6

    array-length v6, v6

    sub-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 234
    const-string v7, "ChatbotMsgTech"

    invoke-virtual {p2, v7, v3, v1, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    .line 240
    const-string/jumbo v0, "pres-srv-cap"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPresSrvCap:Z

    .line 241
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "max_adhoc_group_size"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    .line 242
    const-string v0, "conf-fcty-uri"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    .line 243
    const-string v0, "exploder-uri"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExploderUri:Lcom/sec/ims/util/ImsUri;

    .line 244
    const-string v0, "deferred-msg-func-uri"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDeferredMsgFuncUri:Lcom/sec/ims/util/ImsUri;

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImCapAlwaysOn(Landroid/content/Context;Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    .line 246
    const-string v0, "imWarnSF"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnSf:Z

    .line 247
    const-string v0, "GroupChatFullStandFwd"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatFullStandFwd:Z

    .line 248
    nop

    .line 249
    nop

    .line 248
    const-string v0, "GroupChatOnlyFStandFwd"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatOnlyFStandFwd:Z

    .line 250
    const-string v0, "imCapNonRCS"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapNonRcs:Z

    .line 251
    const-string v0, "imwarniw"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnIw:Z

    .line 252
    const-string v0, "autaccept"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAccept:Z

    .line 254
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v0

    .line 255
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 254
    const-string v6, "imsessionstart"

    invoke-virtual {p2, v6, v1, v1, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 256
    const-string v0, "autacceptgroupchat"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAcceptGroupChat:Z

    .line 257
    const-string v0, "firstMessageInvite"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    .line 258
    const-string v0, "TimerIdle"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTimerIdle:I

    .line 259
    const-string v0, "maxConcurrentSession"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxConcurrentSession:I

    .line 260
    const-string v0, "multiMediaChat"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMultiMediaChat:Z

    .line 261
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "maxsize1to1"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    .line 262
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "maxsize1tom"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    .line 263
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "MaxSizeStandalone"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p2, v0, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getImMsgTech(Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    .line 269
    const-string v0, "ftHTTPCSUser"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    .line 270
    const-string v0, "ftHTTPCSPwd"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    .line 271
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "MaxSizeFileTr"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    .line 272
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "ftWarnSize"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtWarnSize:J

    .line 273
    const-string v0, "ftThumb"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    .line 274
    const-string v0, "ftStAndFwEnabled"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtStAndFwEnabled:Z

    .line 275
    const-string v0, "ftCapalwaysON"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCapAlwaysOn:Z

    .line 276
    const-string v0, "ftautaccept"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    .line 277
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAcceptOriginalConfig:Z

    .line 278
    const-string v0, "ftHTTPDLURI"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpDLUrl:Ljava/lang/String;

    .line 283
    const/16 v0, 0xb4

    .line 284
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 283
    const-string v3, "callComposerTimerIdle"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCallComposerTimerIdle:I

    .line 289
    const-string/jumbo v0, "root/application/1/serviceproviderext/joyn/ux/messagingUX"

    invoke-static {p1, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readBoolParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mJoynIntegratedMessaging:Z

    .line 291
    const/16 v0, 0x1e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "msgcapvalidity"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgCapValidityTime:I

    .line 296
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "ftHTTPCapAlwaysOn"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    .line 302
    const-string v0, "ChatRevokeTimer"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatRevokeTimer:I

    .line 312
    nop

    .line 313
    const-wide/16 v8, -0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 312
    const-string v3, "MaxSizeFileTrIncoming"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    .line 314
    cmp-long v0, v10, v8

    if-nez v0, :cond_2

    .line 315
    iget-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    .line 322
    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "MaxSize"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize:J

    .line 323
    const-string v0, "ftHTTPFallback"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpFallback:I

    .line 328
    const-string/jumbo v0, "publicaccount/Addr"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPublicAccountAddr:Ljava/lang/String;

    .line 329
    const-string v0, "MaxSizeExtraFileTr"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    iput-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeExtraFileTr:J

    .line 330
    const-string v0, "ftHTTPExtraCSURI"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHTTPExtraCSURI:Landroid/net/Uri;

    .line 331
    const-string v0, "cbftHTTPCSURI"

    invoke-virtual {p2, v0, v4}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCbftHTTPCSURI:Landroid/net/Uri;

    .line 336
    const-string v0, "messagingUX"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->SEAMLESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    goto :goto_1

    .line 337
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->INTEGRATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    :goto_1
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMessagingUX:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    .line 338
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v3, "userAliasAuth"

    invoke-virtual {p2, v3, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    .line 339
    const-string v0, "msgFBDefault"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgFbDefault:I

    .line 340
    const-string/jumbo v0, "reconnectGuardTimer"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    .line 341
    const-string v0, "cfsTrigger"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCfsTrigger:Z

    .line 342
    const-string v0, "max1toManyRecipients"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMax1ToManyRecipients:I

    .line 343
    const-string v0, "1toManySelectedTech"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->m1ToManySelectedTech:I

    .line 344
    nop

    .line 345
    nop

    .line 344
    const-string v0, "displayNotificationSwitch"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDisplayNotificationSwitch:I

    .line 346
    nop

    .line 347
    nop

    .line 346
    const-string v0, "ftMax1ToManyRecipients"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtMax1ToManyRecipients:I

    .line 348
    const-string v0, "ftFBDefault"

    invoke-virtual {p2, v0, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFbDefault:I

    .line 349
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    .line 350
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 349
    const-string/jumbo v1, "serviceAvailabilityInfoExpiry"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    .line 356
    const-string v0, "PrivacyDisable"

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mBotPrivacyDisable:Z

    .line 361
    const/16 v0, 0x514

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SwitchoverSize"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmSwitchOverSize:I

    .line 367
    const-string/jumbo v0, "root/application/1/im/ext/att/slmMaxRecipients"

    invoke-static {p1, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "extAttImSlmMaxRecipients":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 371
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImSlmMaxRecipients:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    goto :goto_2

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 376
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    :goto_2
    const-string/jumbo v1, "root/application/1/im/ext/att/MSRPFtMaxSize"

    invoke-static {p1, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "extAttImMSRPFtMaxSize":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 379
    :try_start_1
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImMSRPFtMaxSize:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    goto :goto_3

    .line 380
    :catch_1
    move-exception v2

    .line 381
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 384
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    :goto_3
    return-void
.end method

.method private updateRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    .line 388
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x78

    .line 419
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 388
    const-string/jumbo v2, "reconnectGuardTimer"

    const-string v3, "ftHTTPCapAlwaysOn"

    const-string v4, ""

    const/4 v5, 0x1

    .line 409
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 388
    const/4 v7, 0x0

    if-eqz v0, :cond_5

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {v0, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->isUp2NonTransitional(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    .line 391
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    goto :goto_2

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne v0, v8, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v7

    :goto_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    .line 395
    :goto_2
    iget-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize:J

    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    .line 396
    iput-wide v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    .line 397
    invoke-virtual {p2, v2, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    .line 399
    const-string v0, "legacy_latching"

    invoke-static {v7, v0, v7}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mLegacyLatching:Z

    .line 403
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v8, "firstMessageInvite"

    invoke-virtual {p2, v8, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 404
    .local v0, "inInvite":Z
    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-eq v8, v9, :cond_4

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v5, v7

    :cond_4
    :goto_3
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    .line 405
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    .line 406
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    .end local v0    # "inInvite":Z
    goto :goto_4

    .line 408
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    const-string v5, "joyn_cpr"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 409
    invoke-virtual {p2, v3, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    goto :goto_5

    .line 408
    :cond_6
    :goto_4
    nop

    .line 413
    :goto_5
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v5, "mnoname"

    invoke-static {v0, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "name":Ljava/lang/String;
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p1, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 415
    .local v4, "rcsAs":Ljava/lang/String;
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p1, v5, v7}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(Landroid/content/Context;II)I

    move-result v5

    .line 416
    .local v5, "autoConfigSource":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", rcs_local_config_server:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ImConfig"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v7, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 419
    invoke-virtual {p2, v2, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    goto :goto_6

    .line 420
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 421
    invoke-virtual {p2, v3, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    goto :goto_6

    .line 422
    :cond_8
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "jibe"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 427
    const/4 v1, 0x2

    if-eq v5, v1, :cond_a

    const/4 v1, 0x3

    if-eq v5, v1, :cond_a

    .line 429
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    if-eqz v1, :cond_a

    .line 432
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    goto :goto_6

    .line 435
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 436
    if-nez v5, :cond_a

    .line 437
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    .line 440
    :cond_a
    :goto_6
    return-void
.end method


# virtual methods
.method public getBotPrivacyDisable()Z
    .locals 1

    .line 791
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mBotPrivacyDisable:Z

    return v0
.end method

.method public getCallComposerTimerIdle()I
    .locals 1

    .line 544
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCallComposerTimerIdle:I

    return v0
.end method

.method public getCbftHTTPCSURI()Landroid/net/Uri;
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCbftHTTPCSURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getChatEnabled()Z
    .locals 1

    .line 476
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatEnabled:Z

    return v0
.end method

.method public getChatRevokeTimer()I
    .locals 1

    .line 771
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatRevokeTimer:I

    return v0
.end method

.method public getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    return-object v0
.end method

.method public getEnableFtAutoResumable()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableFtAutoResumable:Z

    return v0
.end method

.method public getFtCancelMemoryFull()Z
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCancelMemoryFull:Z

    return v0
.end method

.method public getFtDefaultMech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    return-object v0
.end method

.method public getFtEnabled()Z
    .locals 1

    .line 484
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    return v0
.end method

.method public getFtFallbackAllFail()Z
    .locals 1

    .line 730
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFallbackAllFail:Z

    return v0
.end method

.method public getFtHTTPExtraCSURI()Landroid/net/Uri;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHTTPExtraCSURI:Landroid/net/Uri;

    return-object v0
.end method

.method public getFtHttpCsPwd()Ljava/lang/String;
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    return-object v0
.end method

.method public getFtHttpCsUri()Landroid/net/Uri;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFtHttpCsUser()Ljava/lang/String;
    .locals 2

    .line 593
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 594
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "msisdn":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_0
    return-object v0

    .line 601
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    return-object v0
.end method

.method public getFtHttpDLUrl()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpDLUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFtHttpEnabled()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    return v0
.end method

.method public getFtWarnSize()J
    .locals 4

    .line 560
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtWarnSize:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getGlsPullEnabled()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPullEnabled:Z

    return v0
.end method

.method public getGlsPushEnabled()Z
    .locals 1

    .line 492
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPushEnabled:Z

    return v0
.end method

.method public getGroupChatEnabled()Z
    .locals 1

    .line 480
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatEnabled:Z

    return v0
.end method

.method public getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    return-object v0
.end method

.method public getImSessionStart()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-object v0
.end method

.method public getLegacyLatching()Z
    .locals 1

    .line 775
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mLegacyLatching:Z

    return v0
.end method

.method public getMaxAdhocGroupSize()I
    .locals 1

    .line 617
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    return v0
.end method

.method public getMaxConcurrentSession()I
    .locals 1

    .line 548
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxConcurrentSession:I

    return v0
.end method

.method public getMaxSize1To1()J
    .locals 2

    .line 552
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    return-wide v0
.end method

.method public getMaxSize1ToM()J
    .locals 2

    .line 556
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    return-wide v0
.end method

.method public getMaxSizeExtraFileTr()J
    .locals 4

    .line 710
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeExtraFileTr:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxSizeFileTr()J
    .locals 4

    .line 564
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxSizeFileTrIncoming()J
    .locals 4

    .line 568
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMsgCapValidityTime()I
    .locals 1

    .line 683
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgCapValidityTime:I

    return v0
.end method

.method public getPagerModeLimit()I
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp23AndUp24Profile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmSwitchOverSize:I

    return v0

    .line 782
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPagerModeLimit:I

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 468
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    return v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getReconnectGuardTimer()I
    .locals 1

    .line 763
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    return v0
.end method

.method public getRespondDisplay()Z
    .locals 3

    .line 736
    invoke-static {}, Lcom/sec/internal/ims/util/TapiServiceUtil;->isSupportTapi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 737
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    .line 738
    .local v0, "rcsSetting":Lcom/sec/internal/ims/util/RcsSettingsUtils;
    if-eqz v0, :cond_0

    .line 739
    const-string v2, "ChatRespondToDisplayReports"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 741
    .end local v0    # "rcsSetting":Lcom/sec/internal/ims/util/RcsSettingsUtils;
    :cond_0
    goto :goto_0

    .line 742
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 744
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 745
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDisplayNotificationSwitch:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 747
    :cond_3
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    return v0
.end method

.method public getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-object v0
.end method

.method public getSlmMaxMsgSize()J
    .locals 2

    .line 621
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    return-wide v0
.end method

.method public getTimerIdle()I
    .locals 1

    .line 540
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTimerIdle:I

    return v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 650
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUserAlias()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 654
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 657
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 653
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserAliasEnabled()Z
    .locals 1

    .line 759
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    return v0
.end method

.method public declared-synchronized getUserAliasFromPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    monitor-enter p0

    .line 662
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getUserAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 662
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .end local p1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAggrImdnSupported()Z
    .locals 1

    .line 629
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsAggrImdnSupported:Z

    return v0
.end method

.method public isAutAccept()Z
    .locals 1

    .line 524
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAccept:Z

    return v0
.end method

.method public isAutAcceptGroupChat()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAcceptGroupChat:Z

    return v0
.end method

.method public isCfsTrigger()Z
    .locals 1

    .line 767
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCfsTrigger:Z

    return v0
.end method

.method public isEnableGroupChatListRetrieve()Z
    .locals 1

    .line 633
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableGroupChatListRetrieve:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFirstMsgInvite()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    return v0
.end method

.method public isFtAutAccept()Z
    .locals 1

    .line 580
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    return v0
.end method

.method public isFtHttpCapAlwaysOn()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    return v0
.end method

.method public isFtHttpOverDefaultPdn()Z
    .locals 1

    .line 755
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mfThttpDefaultPdn:Z

    return v0
.end method

.method public isFtHttpTrustAllCerts()Z
    .locals 1

    .line 722
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpTrustAllCerts:Z

    return v0
.end method

.method public isFtStAndFwEnabled()Z
    .locals 1

    .line 576
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtStAndFwEnabled:Z

    return v0
.end method

.method public isFtThumb()Z
    .locals 1

    .line 572
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    return v0
.end method

.method public isFullSFGroupChat()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsFullSFGroupChat:Z

    return v0
.end method

.method public isGroupChatFullStandFwd()Z
    .locals 1

    .line 516
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatFullStandFwd:Z

    return v0
.end method

.method public isImCapAlwaysOn()Z
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    return v0
.end method

.method public isImWarnSf()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnSf:Z

    return v0
.end method

.method public isJoynIntegratedMessaging()Z
    .locals 1

    .line 679
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mJoynIntegratedMessaging:Z

    return v0
.end method

.method public isSmsFallbackAuth()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSmsFallbackAuth:Z

    return v0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rcsProfile"    # Ljava/lang/String;
    .param p3, "isRoaming"    # Z

    .line 181
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v1, "root/*"

    invoke-static {p1, v1, v0}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    move-result-object v0

    .line 183
    .local v0, "configData":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->initRcsConfiguration(Landroid/content/Context;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->loadGlobalSettings(Landroid/content/Context;)V

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->loadRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;)V

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->updateRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;)V

    .line 188
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->loadUserAlias(Landroid/content/Context;)V

    .line 191
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v1

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, p1, v1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    .line 192
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 193
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 194
    return-void
.end method

.method public loadUserAlias(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 460
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasFromPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    .line 465
    :goto_0
    return-void
.end method

.method public setFtAutAccept(Landroid/content/Context;IZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ftAutAccept"    # I
    .param p3, "isRoaming"    # Z

    .line 637
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    .line 638
    .local v0, "userPreference":Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 639
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->setFtAutAccept(Landroid/content/Context;II)V

    .line 642
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v1, :cond_2

    .line 643
    if-nez p3, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAcceptOriginalConfig:Z

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    goto :goto_0

    .line 645
    :cond_2
    const/4 v1, 0x2

    if-eq p2, v1, :cond_3

    if-ne p2, v3, :cond_4

    if-nez p3, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    .line 647
    :goto_0
    return-void
.end method

.method public declared-synchronized setUserAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "alias"    # Ljava/lang/String;

    monitor-enter p0

    .line 666
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    if-eqz v0, :cond_1

    .line 667
    if-nez p2, :cond_0

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    .line 670
    .end local p0    # "this":Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    .line 673
    :cond_1
    const-string v0, "ImConfig"

    const-string v1, "alias disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    if-nez p2, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->setUserAlias(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    monitor-exit p0

    return-void

    .line 665
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "alias":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImConfig(phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")[mRcsProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCsUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCsUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    .line 809
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCsPwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    .line 810
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpDLUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpDLUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSlmAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmsFallbackAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSmsFallbackAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGlsPushEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGlsPullEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPullEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPresSrvCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPresSrvCap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxAdhocGroupSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfFctyUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExploderUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExploderUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeferredMsgFuncUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDeferredMsgFuncUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImCapAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImWarnSf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnSf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatFullStandFwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatFullStandFwd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatOnlyFStandFwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatOnlyFStandFwd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImCapNonRcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapNonRcs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImWarnIw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnIw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutAccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImSessionStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutAcceptGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAcceptGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstMsgInvite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimerIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTimerIdle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxConcurrentSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxConcurrentSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiMediaChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMultiMediaChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSize1To1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSize1ToM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSlmMaxMsgSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImMsgTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatbotMsgTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeFileTr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtWarnSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtWarnSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtThumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtStAndFwEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtStAndFwEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtCapAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCapAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtAutAccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtDefaultMech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mJoynIntegratedMessaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mJoynIntegratedMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgCapValidityTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgCapValidityTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCapAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatRevokeTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatRevokeTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeFileTrIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpFallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessagingUX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMessagingUX:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAliasEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgFbDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgFbDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReconnectGuardTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCfsTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCfsTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMax1ToManyRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMax1ToManyRecipients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m1ToManySelectedTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->m1ToManySelectedTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayNotificationSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDisplayNotificationSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFtMax1ToManyRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtMax1ToManyRecipients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFtFbDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFbDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceAvailabilityInfoExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPublicAccountAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPublicAccountAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeExtraFileTr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeExtraFileTr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHTTPExtraCSURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHTTPExtraCSURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCbftHTTPCSURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCbftHTTPCSURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFullSFGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsFullSFGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAggrImdnSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsAggrImdnSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    .line 872
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpTrustAllCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpTrustAllCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtCancelMemoryFull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCancelMemoryFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtFallbackAllFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFallbackAllFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRespondDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableGroupChatListRetrieve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableGroupChatListRetrieve:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableFtAutoResumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableFtAutoResumable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLegacyLatching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mLegacyLatching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExtAttImSlmMaxRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImSlmMaxRecipients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtAttImMSRPFtMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImMSRPFtMaxSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mfThttpDefaultPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mfThttpDefaultPdn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPagerModeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPagerModeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBotPrivacyDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mBotPrivacyDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSwitchOverSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmSwitchOverSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 804
    return-object v0
.end method
