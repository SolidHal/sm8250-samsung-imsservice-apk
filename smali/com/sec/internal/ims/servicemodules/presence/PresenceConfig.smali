.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
.super Ljava/lang/Object;
.source "PresenceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceConfig"

.field private static final MAX_NUMBER_LIMIT:I = 0x96


# instance fields
.field private mBadEventExpiry:J

.field private mContext:Landroid/content/Context;

.field private mDefaultDisc:I

.field private mIsLocalConfigUsed:Z

.field private mIsSocialPresenceSupport:Z

.field private mMaxUri:I

.field private mPhoneId:I

.field private mPublishErrRetry:J

.field private mPublishTimer:J

.field private mPublishTimerExtended:J

.field private mRcsProfile:Ljava/lang/String;

.field private mRetryPublishTimer:J

.field private mRlsUri:Lcom/sec/ims/util/ImsUri;

.field private mSourceThrottlePublish:J

.field private mSourceThrottleSubscribe:J

.field private mTdelayPublish:J

.field private mUseAnonymousFetch:Z

.field private mUseSipUri:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 40
    const-wide/16 v1, 0x4b0

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 42
    const-wide/32 v1, 0x15180

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 51
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    .line 58
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 40
    const-wide/16 v1, 0x4b0

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 42
    const-wide/32 v1, 0x15180

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 51
    const/16 v1, 0x64

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    .line 275
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->useAnonymousFetch:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    .line 276
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->isLocalConfigUsed:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    .line 277
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottlePublish:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 278
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottleSubscribe:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    .line 279
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->tDelayPublish:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    .line 280
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimer:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 281
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->retryPublishTimer:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    .line 282
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimerExtended:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 283
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishErrRetry:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 284
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->badEventExpiry:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    .line 285
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->maxUri:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 286
    return-void
.end method


# virtual methods
.method public getBadEventExpiry()J
    .locals 2

    .line 241
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    return-wide v0
.end method

.method public getDefaultDisc()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    return v0
.end method

.method public getMaxUri()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    return v0
.end method

.method public getPublishErrRetry()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    return-wide v0
.end method

.method public getPublishTimer()J
    .locals 2

    .line 221
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    return-wide v0
.end method

.method public getPublishTimerExtended()J
    .locals 2

    .line 233
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    return-wide v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryPublishTimer()J
    .locals 2

    .line 237
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    return-wide v0
.end method

.method public getRlsUri()Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRlsUri:Lcom/sec/ims/util/ImsUri;

    return-object v0
.end method

.method public getSourceThrottlePublish()J
    .locals 2

    .line 209
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    return-wide v0
.end method

.method public getSourceThrottleSubscribe()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    return-wide v0
.end method

.method public getTdelayPublish()J
    .locals 2

    .line 217
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    return-wide v0
.end method

.method public isLocalConfigUsed()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    return v0
.end method

.method public isSocialPresenceSupport()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsSocialPresenceSupport:Z

    return v0
.end method

.method public load()V
    .locals 16

    .line 62
    move-object/from16 v0, p0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 63
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v2, "PresenceConfig"

    if-nez v1, :cond_0

    .line 64
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string v4, "load: registrationManager is null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    return-void

    .line 68
    :cond_0
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    sget-object v4, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 69
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    if-eqz v3, :cond_d

    const-string/jumbo v4, "presence"

    invoke-virtual {v3, v4}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 74
    :cond_1
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-static {v4, v5, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    .line 82
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 83
    const-string/jumbo v6, "root/application/*"

    invoke-static {v4, v6, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    move-result-object v4

    .line 84
    .local v4, "configData":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    if-nez v4, :cond_2

    .line 85
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string v6, "load: configData is not found"

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 86
    return-void

    .line 89
    :cond_2
    nop

    .line 90
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 89
    const-string/jumbo v7, "presencePrfl"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsSocialPresenceSupport:Z

    .line 92
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPublishTimer()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 93
    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const-wide/16 v10, 0x4b0

    if-gtz v6, :cond_3

    .line 94
    nop

    .line 95
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 94
    const-string v7, "PublishTimer"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 98
    :cond_3
    nop

    .line 99
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 98
    const-string/jumbo v7, "source-throttlepublish"

    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 100
    iput-wide v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    .line 102
    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-static {v6}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 103
    .local v6, "mMno":Lcom/sec/internal/constants/Mno;
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeMaxEntry()I

    move-result v12

    const/16 v13, 0x64

    const-string v14, "max-number-ofsubscriptions-inpresence-list"

    if-nez v12, :cond_4

    .line 104
    nop

    .line 105
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 104
    invoke-virtual {v4, v14, v12}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 108
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v12

    if-eqz v12, :cond_5

    iget v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    const/16 v15, 0x96

    if-le v12, v15, :cond_5

    .line 109
    iput v15, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    goto :goto_0

    .line 112
    :cond_4
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeMaxEntry()I

    move-result v12

    iput v12, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 115
    :cond_5
    :goto_0
    const-string v12, "RLS-URI"

    const-string v15, ""

    invoke-virtual {v4, v12, v15}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 117
    .local v12, "uri":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 118
    invoke-static {v12}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v15

    iput-object v15, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRlsUri:Lcom/sec/ims/util/ImsUri;

    .line 121
    :cond_6
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->isAnonymousFetch()Z

    move-result v15

    iput-boolean v15, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-string v8, "defaultdisc"

    invoke-virtual {v4, v8, v15}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iput v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    .line 125
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v8

    const v9, 0x3f480

    if-ne v8, v9, :cond_7

    .line 127
    const-wide/32 v8, 0x3f480

    .line 128
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 127
    const-string v9, "nonRCScapInfoExpiry"

    invoke-virtual {v4, v9, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    goto :goto_1

    .line 130
    :cond_7
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    .line 133
    :goto_1
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPublishErrRetryTimer()I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 135
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 136
    .local v8, "context":Landroid/content/Context;
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v15, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string/jumbo v13, "t_delay"

    invoke-static {v8, v13, v9, v15}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v10, v9

    iput-wide v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    .line 138
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 140
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseSipUri:Z

    .line 142
    sget-object v9, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_a

    .line 143
    nop

    .line 144
    const-wide/16 v9, 0x4b0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 143
    const-string v11, "omadm/./3GPP_IMS/PUBLISH_TIMER"

    invoke-static {v8, v11, v9, v10}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 145
    const-wide/32 v9, 0x15180

    .line 146
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 145
    const-string v11, "omadm/./3GPP_IMS/PUBLISH_TIMER_EXTEND"

    invoke-static {v8, v11, v9, v10}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 147
    const-wide/16 v9, 0x5460

    .line 148
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 147
    const-string v11, "omadm/./3GPP_IMS/PUBLISH_ERR_RETRY_TIMER"

    invoke-static {v8, v11, v9, v10}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 149
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    const-wide/16 v10, 0x3c

    .line 150
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget v11, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 149
    const-string v13, "omadm/./3GPP_IMS/SRC_THROTTLE_PUBLISH"

    invoke-static {v9, v13, v10, v11}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 151
    iput-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    .line 152
    nop

    .line 153
    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 152
    const-string v11, "omadm/./3GPP_IMS/SUBSCRIBE_MAX_ENTRY"

    invoke-static {v8, v11, v9, v10}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 154
    iget v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "load: mSourceThrottlePublishFromDM: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, v6

    .end local v6    # "mMno":Lcom/sec/internal/constants/Mno;
    .local v13, "mMno":Lcom/sec/internal/constants/Mno;
    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mSourceThrottleSubscribeFromDM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", mMaxUriFromDM: "

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v9, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 157
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v5

    .line 158
    .local v5, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isLocalConfigUsed()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    .line 159
    if-nez v6, :cond_b

    .line 160
    nop

    .line 161
    const-wide/16 v9, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 160
    invoke-virtual {v4, v7, v6}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 162
    .local v6, "sourceThrottlePublish":J
    cmp-long v15, v6, v9

    if-lez v15, :cond_9

    .line 163
    iget v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "load: change mSourceThrottlePublish to "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v9, v10}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 166
    :cond_9
    nop

    .line 167
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 166
    invoke-virtual {v4, v14, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 168
    .local v9, "maxUri":I
    if-lez v9, :cond_b

    .line 169
    iget v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "load: change mMaxUri to "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v10, v11}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 170
    iput v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    goto :goto_3

    .line 142
    .end local v5    # "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .end local v9    # "maxUri":I
    .end local v13    # "mMno":Lcom/sec/internal/constants/Mno;
    .local v6, "mMno":Lcom/sec/internal/constants/Mno;
    :cond_a
    move-object v13, v6

    .line 179
    .end local v6    # "mMno":Lcom/sec/internal/constants/Mno;
    .restart local v13    # "mMno":Lcom/sec/internal/constants/Mno;
    :cond_b
    :goto_3
    iget-wide v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    iput-wide v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    .line 180
    const-wide/16 v9, 0x0

    cmp-long v5, v5, v9

    if-nez v5, :cond_c

    .line 181
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPublishExpiry()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    .line 184
    :cond_c
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v6, 0x12090006

    invoke-static {v6, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRlsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseSipUri:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 190
    return-void

    .line 70
    .end local v4    # "configData":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    .end local v8    # "context":Landroid/content/Context;
    .end local v12    # "uri":Ljava/lang/String;
    .end local v13    # "mMno":Lcom/sec/internal/constants/Mno;
    :cond_d
    :goto_4
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string v5, "load: profile is null"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public setPublishErrRetry(J)V
    .locals 0
    .param p1, "publishErrRetry"    # J

    .line 229
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 230
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v0, "builder2":Ljava/lang/StringBuilder;
    const-string v1, "PresenceConfig [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 292
    const-string v1, ", mUseAnonymousFetch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, ", mIsLocalConfigUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, ", mSourceThrottlePublish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 295
    const-string v1, ", mSourceThrottleSubscribe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, ", mTdelayPublish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    const-string v1, ", mPublishTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, ", mRetryPublishTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 299
    const-string v1, ", mPublishTimerExtended="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, ", mPublishErrRetry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    const-string v1, ", mBadEventExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    const-string v1, ", mMaxUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ", mDefaultDisc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public useAnonymousFetch()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    return v0
.end method

.method public useSipUri()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseSipUri:Z

    return v0
.end method
