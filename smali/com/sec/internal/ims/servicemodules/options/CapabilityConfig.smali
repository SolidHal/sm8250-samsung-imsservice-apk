.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
.super Ljava/lang/Object;
.source "CapabilityConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityConfig"


# instance fields
.field private isVzwCapabilitypolicy:Z

.field private mAllowedPrefixes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private mCapCacheExpiry:I

.field private mCapDiscCommonStack:Z

.field private mCapInfoExpiry:I

.field private mContext:Landroid/content/Context;

.field private mDefaultDisc:I

.field private mDisableInitialScan:Z

.field protected mIsAvailable:Z

.field protected mIsLocalConfigUsed:Z

.field private mIsPollingPeriodUpdated:Z

.field private mIsRcsUpProfile:Z

.field private mIsSupportExpCapInfoExpiry:Z

.field protected mLastSeenActive:Z

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mMsgcapvalidity:I

.field private mNonRCScapInfoExpiry:I

.field private mPhoneId:I

.field private mPollListSubExpiry:I

.field private mPollingPeriod:I

.field private mPollingRate:I

.field private mPollingRatePeriod:J

.field private mRcsProfile:Ljava/lang/String;

.field private mServiceAvailabilityInfoExpiry:I

.field protected mServiceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 48
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    .line 50
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    .line 51
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    .line 53
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    .line 54
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 55
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    .line 56
    const v2, 0x76a700

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 57
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    .line 58
    const/16 v1, 0x1e

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    .line 59
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsSupportExpCapInfoExpiry:Z

    .line 68
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    .line 72
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 76
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;)V
    .locals 3
    .param p1, "builder"    # Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 48
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    .line 50
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    .line 51
    const-wide/16 v1, 0xa

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    .line 53
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    .line 54
    const/16 v1, 0x3c

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 55
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    .line 56
    const v2, 0x76a700

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 57
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    .line 58
    const/16 v1, 0x1e

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    .line 59
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    .line 61
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    .line 63
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 64
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    .line 66
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 67
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsSupportExpCapInfoExpiry:Z

    .line 68
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    .line 69
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    .line 72
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    .line 460
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capInfoExpiry:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 461
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->capCacheExpiry:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 462
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingPeriod:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    .line 463
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRate:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    .line 464
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->pollingRatePeriod:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 465
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->defaultDisc:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 466
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 467
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig$Builder;->isLastseenAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 468
    return-void
.end method

.method private notifyDefaultDiscChange()V
    .locals 4

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "root/application/1/capdiscovery/defaultdisc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/constants/ims/config/ConfigConstants;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "parameter/defaultdisc"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 355
    return-void
.end method

.method private updateCapDiscoveryAllowedPrefixes(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 428
    .local p1, "allowedPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCapDiscoveryAllowedPrefixes: allowedPrefixes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CapabilityConfig"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 429
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 430
    .local v1, "prefix":Ljava/lang/String;
    const/4 v3, 0x0

    .line 431
    .local v3, "prefixRegex":Ljava/util/regex/Pattern;
    const-string v4, "!"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 433
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_1

    .line 434
    :catch_0
    move-exception v5

    .line 435
    .local v5, "e":Ljava/util/regex/PatternSyntaxException;
    iget v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateCapDiscoveryAllowedPrefixes: patternSyntaxException on prefix: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    invoke-static {v2, v6, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 437
    .end local v5    # "e":Ljava/util/regex/PatternSyntaxException;
    :goto_1
    goto :goto_2

    .line 439
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\\+"

    const-string v6, "\\\\+"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 442
    :goto_2
    if-eqz v3, :cond_1

    .line 443
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v1    # "prefix":Ljava/lang/String;
    .end local v3    # "prefixRegex":Ljava/util/regex/Pattern;
    :cond_1
    goto :goto_0

    .line 446
    :cond_2
    return-void
.end method

.method private updateCapInfoExpiry(III)V
    .locals 6
    .param p1, "defaultCapInfoExpiry"    # I
    .param p2, "profileCapInfoExpiry"    # I
    .param p3, "capInfoExpiryFromConfigDB"    # I

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateCapInfoExpiry() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    .local v0, "logbuffer":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 394
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 393
    const-string v5, "omadm/./3GPP_IMS/AVAIL_CACHE_EXP"

    invoke-static {v1, v5, v3, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 395
    .local v1, "availCacheExpFromDM":I
    const-string v3, ", availCacheExpFromDM: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 396
    if-lez v1, :cond_0

    .line 397
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_0

    .line 399
    :cond_0
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 401
    .end local v1    # "availCacheExpFromDM":I
    :goto_0
    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-lez p2, :cond_2

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_2

    .line 402
    const-string v1, ", profileCapInfoExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 403
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_1

    .line 405
    :cond_2
    const-string v1, ", capInfoExpiryFromConfigDB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 406
    if-lez p3, :cond_3

    .line 407
    const-string v1, ", use capInfoExpiryFromConfigDB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_1

    .line 409
    :cond_3
    if-nez p3, :cond_4

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 412
    move p3, p1

    .line 413
    const-string v1, ", change capInfoExpiryFromConfigDB to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for eur"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_1

    .line 416
    :cond_4
    if-nez p3, :cond_5

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_5

    .line 417
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_1

    .line 419
    :cond_5
    const-string v1, ", use defaultCapInfoExpiry"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 423
    :goto_1
    const-string v1, ", mCapInfoExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityConfig"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    return-void
.end method

.method private updatePollingPeriod(III)V
    .locals 7
    .param p1, "CapPollInterval"    # I
    .param p2, "profileCapPollInterval"    # I
    .param p3, "pollingPeriodFromConfigDB"    # I

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updatePollingPeriod() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v0, "logbuffer":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 360
    const-string v6, "omadm/./3GPP_IMS/CAP_POLL_INTERVAL"

    invoke-static {v1, v6, v4, v5}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 362
    .local v1, "capPollIntervalFromDM":I
    const-string v4, ", capPollIntervalFromDM: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 363
    if-lez v1, :cond_1

    .line 364
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 365
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_2

    .line 367
    :cond_1
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq v4, p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 368
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    .line 370
    .end local v1    # "capPollIntervalFromDM":I
    :goto_2
    goto :goto_6

    :cond_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_5

    if-lez p2, :cond_5

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_5

    .line 371
    const-string v1, ", capPollIntervalFromProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq v1, p2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 373
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_6

    .line 375
    :cond_5
    const-string v1, ", pollingPeriodFromConfigDB: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 376
    if-ltz p3, :cond_7

    .line 377
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq v1, p3, :cond_6

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 378
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    goto :goto_6

    .line 380
    :cond_7
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    if-eq v1, p1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :goto_5
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 381
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    .line 384
    :goto_6
    const-string v1, ", mPollingPeriod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 385
    const-string v1, ", mIsPollingPeriodUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 387
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CapabilityConfig"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 388
    return-void
.end method


# virtual methods
.method public getCapAllowedPrefixes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    return-object v0
.end method

.method public getCapCacheExpiry()J
    .locals 2

    .line 260
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getCapInfoExpiry()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    return v0
.end method

.method public getDefaultDisc()I
    .locals 1

    .line 332
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    return v0
.end method

.method getDefaultDisc(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 345
    const-string v1, "defaultdisc"

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 346
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 344
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getIsSupportExpCapInfoExpiry()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsSupportExpCapInfoExpiry:Z

    return v0
.end method

.method public getMsgcapvalidity()J
    .locals 2

    .line 284
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getNonRCScapInfoExpiry()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    return v0
.end method

.method public getPollListSubExpiry()I
    .locals 1

    .line 272
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    return v0
.end method

.method public getPollingPeriod()I
    .locals 1

    .line 268
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    return v0
.end method

.method public getPollingRate()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    return v0
.end method

.method public getPollingRatePeriod()J
    .locals 2

    .line 280
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    return-wide v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceAvailabilityInfoExpiry()I
    .locals 1

    .line 324
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    return v0
.end method

.method public isDisableInitialScan()Z
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    return v0
.end method

.method public isLastSeenActive()Z
    .locals 1

    .line 296
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    return v0
.end method

.method public isPollingPeriodUpdated()Z
    .locals 1

    .line 288
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    return v0
.end method

.method public load()V
    .locals 20

    .line 82
    move-object/from16 v0, p0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 83
    .local v1, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    const-string v2, "CapabilityConfig"

    if-nez v1, :cond_0

    .line 84
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v4, "load: registrationManager is null"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    return-void

    .line 88
    :cond_0
    const/4 v3, 0x0

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    .line 89
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    sget-object v5, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 90
    .local v4, "profile":Lcom/sec/ims/settings/ImsProfile;
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 91
    const-string/jumbo v7, "presence"

    invoke-virtual {v4, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    goto :goto_0

    .line 93
    :cond_1
    const-string/jumbo v7, "options"

    invoke-virtual {v4, v7}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 94
    iput v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    .line 97
    :cond_2
    :goto_0
    iget v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    if-nez v7, :cond_3

    .line 98
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v5, "load: mServiceType is zero"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    return-void

    .line 106
    :cond_3
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    iget v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 107
    const-string/jumbo v9, "root/*"

    invoke-static {v7, v9, v8}, Lcom/sec/internal/ims/config/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;

    move-result-object v7

    .line 108
    .local v7, "configData":Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;
    if-nez v7, :cond_4

    .line 109
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string v5, "load: configData is not found"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    return-void

    .line 114
    :cond_4
    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    iget v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v8, v9, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    .line 115
    invoke-static {v8}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    .line 117
    iget v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v8}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v8

    .line 118
    .local v8, "mnoStrategy":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isLocalConfigUsed()Z

    move-result v9

    if-eqz v9, :cond_5

    move v9, v6

    goto :goto_1

    :cond_5
    move v9, v3

    :goto_1
    iput-boolean v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    .line 120
    iget v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v9}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v9

    iput-object v9, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    .line 123
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string/jumbo v10, "version"

    invoke-virtual {v7, v10, v9}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 126
    .local v9, "version":I
    nop

    .line 127
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 126
    const-string v11, "defaultdisc"

    invoke-virtual {v7, v11, v10}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 129
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->notifyDefaultDiscChange()V

    .line 131
    if-lez v9, :cond_7

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    if-ne v10, v5, :cond_6

    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    if-eqz v5, :cond_7

    :cond_6
    move v5, v6

    goto :goto_2

    :cond_7
    move v5, v3

    :goto_2
    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    .line 133
    nop

    .line 134
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 133
    const-string v10, "capDiscCommonStack"

    invoke-virtual {v7, v10, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    .line 136
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const-string v11, "disableInitialAddressBookScan"

    if-eq v5, v10, :cond_9

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v5, v10, :cond_9

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->VODAFONE_INDIA:Lcom/sec/internal/constants/Mno;

    if-eq v5, v10, :cond_9

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->IDEA_INDIA:Lcom/sec/internal/constants/Mno;

    if-ne v5, v10, :cond_8

    goto :goto_3

    .line 140
    :cond_8
    nop

    .line 141
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 140
    invoke-virtual {v7, v11, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    goto :goto_4

    .line 137
    :cond_9
    :goto_3
    nop

    .line 138
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 137
    invoke-virtual {v7, v11, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    .line 144
    :goto_4
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    const/16 v11, 0xa

    if-ne v5, v10, :cond_a

    .line 145
    const/4 v5, 0x5

    iput v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    goto :goto_5

    .line 147
    :cond_a
    nop

    .line 148
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 147
    const-string/jumbo v10, "pollingrate"

    invoke-virtual {v7, v10, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    .line 151
    :goto_5
    nop

    .line 152
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 151
    const-string/jumbo v10, "pollingrateperiod"

    invoke-virtual {v7, v10, v5}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-long v12, v5

    iput-wide v12, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v5, "logbuffer":Ljava/lang/StringBuilder;
    iget v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    if-nez v10, :cond_b

    iget-wide v12, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-nez v10, :cond_b

    .line 159
    iput v11, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    .line 160
    const-wide/16 v10, 0x3

    iput-wide v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    .line 161
    const-string v10, "load: change mPollingRate to "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    const-string v10, " and change mPollingRatePeriod to "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 165
    :cond_b
    iget-object v10, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    iget v11, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v10, v11}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v10

    .line 166
    .local v10, "rcsAs":Ljava/lang/String;
    iget-object v11, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v11, v12, :cond_c

    const-string v11, "jibe"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_6

    :cond_c
    move v6, v3

    :goto_6
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    .line 167
    if-nez v6, :cond_d

    move v6, v3

    goto :goto_7

    :cond_d
    const v6, 0x98968

    .line 168
    .local v6, "defaultCapPollInterval":I
    :goto_7
    nop

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 168
    const-string/jumbo v12, "pollingperiod"

    invoke-virtual {v7, v12, v11}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 170
    .local v11, "pollingPeriod":I
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCapPollInterval()I

    move-result v12

    invoke-direct {v0, v6, v12, v11}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->updatePollingPeriod(III)V

    .line 172
    iget-boolean v12, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    const/16 v13, 0x3c

    if-nez v12, :cond_e

    move v12, v13

    goto :goto_8

    :cond_e
    const v12, 0x278d00

    .line 173
    .local v12, "defaultCapInfoExpiry":I
    :goto_8
    iget-boolean v14, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-eqz v14, :cond_f

    iget-boolean v14, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    if-nez v14, :cond_f

    .line 174
    const v12, 0x93a80

    .line 176
    :cond_f
    nop

    .line 177
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 176
    const-string v15, "capinfoexpiry"

    invoke-virtual {v7, v15, v14}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 178
    .local v14, "capInfoExpiry":I
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getAvailCacheExpiry()I

    move-result v15

    invoke-direct {v0, v12, v15, v14}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->updateCapInfoExpiry(III)V

    .line 180
    iget v15, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    .line 181
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 180
    const-string v3, "nonRCScapInfoExpiry"

    invoke-virtual {v7, v3, v15}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    .line 183
    const-string v3, "capdiscoveryallowedprefixes"

    invoke-virtual {v7, v3}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readListString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 185
    .local v3, "allowedPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->updateCapDiscoveryAllowedPrefixes(Ljava/util/List;)V

    .line 188
    iget-boolean v15, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    if-nez v15, :cond_10

    .line 189
    iput v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    goto :goto_9

    .line 191
    :cond_10
    nop

    .line 192
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 191
    const-string/jumbo v15, "serviceAvailabilityInfoExpiry"

    invoke-virtual {v7, v15, v13}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    .line 196
    :goto_9
    iget-boolean v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    const-string v15, "msgcapvalidity"

    if-eqz v13, :cond_12

    iget-boolean v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-eqz v13, :cond_11

    iget-boolean v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    if-eqz v13, :cond_11

    goto :goto_a

    .line 200
    :cond_11
    iget v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    .line 201
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 200
    invoke-virtual {v7, v15, v13}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    move-object/from16 v16, v1

    const/16 v13, 0x1e

    goto :goto_b

    .line 197
    :cond_12
    :goto_a
    nop

    .line 198
    move-object/from16 v16, v1

    const/16 v13, 0x1e

    .end local v1    # "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .local v16, "rm":Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 197
    invoke-virtual {v7, v15, v1}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    .line 204
    :goto_b
    nop

    .line 205
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    .line 204
    const-string v1, "lastseenactive"

    invoke-virtual {v7, v1, v15}, Lcom/sec/internal/ims/config/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    .line 208
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_13

    const/4 v13, 0x0

    :cond_13
    move v1, v13

    .line 209
    .local v1, "defaultPollListSubExpiry":I
    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 210
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move/from16 v17, v1

    .end local v1    # "defaultPollListSubExpiry":I
    .local v17, "defaultPollListSubExpiry":I
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    .line 209
    move-object/from16 v18, v3

    .end local v3    # "allowedPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v18, "allowedPrefixes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "omadm/./3GPP_IMS/POLL_LIST_SUB_EXP"

    invoke-static {v13, v3, v15, v1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    .line 212
    if-eqz v8, :cond_16

    .line 213
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isVzwCapabilitypolicy:Z

    if-nez v1, :cond_14

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    goto :goto_c

    :cond_14
    const v1, 0x76a700

    :goto_c
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 214
    const-string/jumbo v1, "use_capcache_expiry"

    invoke-interface {v8, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "omadm/./3GPP_IMS/CAP_CACHE_EXP"

    if-eqz v1, :cond_15

    .line 215
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    iget-object v13, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 216
    move-object/from16 v19, v4

    const/4 v15, 0x0

    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .local v19, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v15, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v13, v3, v4, v15}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    goto :goto_d

    .line 218
    .end local v19    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_15
    move-object/from16 v19, v4

    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v19    # "profile":Lcom/sec/ims/settings/ImsProfile;
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    .line 219
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-static {v1, v3, v13, v4}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    .line 221
    :goto_d
    invoke-interface {v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->updateCapDiscoveryOption()V

    goto :goto_e

    .line 212
    .end local v19    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_16
    move-object/from16 v19, v4

    .line 225
    .end local v4    # "profile":Lcom/sec/ims/settings/ImsProfile;
    .restart local v19    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :goto_e
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    const-string/jumbo v3, "rcs_support_exponential_capinfoexpiry"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsSupportExpCapInfoExpiry:Z

    .line 228
    const-string v1, " load: mServiceType: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceType:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 229
    const-string v1, " mRcsProfile: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, " mIsRcsUpProfile: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsRcsUpProfile:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 231
    const-string v1, " mIsLocalConfigUsed: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, " rcsVersion: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    const-string v1, " mDefaultDisc: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, " mIsAvailable: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsAvailable:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, " mCapDiscCommonStack: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, " mDisableInitialScan: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string v1, " mPollingRate: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, " mPollingRatePeriod: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    const-string v1, " mNonRCScapInfoExpiry: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, " mMsgcapvalidity: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mMsgcapvalidity:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    const-string v1, " mServiceAvailabilityInfoExpiry: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, " mLastSeenActive: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mLastSeenActive:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, " mPollListSubExpiry: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, " mCapCacheExpiry: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, " mIsSupportExpCapInfoExpiry: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsSupportExpCapInfoExpiry:Z

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    return-void
.end method

.method public resetPollingPeriodUpdated()V
    .locals 1

    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    .line 293
    return-void
.end method

.method public setUsePresence(Z)V
    .locals 0
    .param p1, "usePresence"    # Z

    .line 304
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    .line 305
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    .local v0, "builder2":Ljava/lang/StringBuilder;
    const-string v1, "CapabilityConfig [mContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 474
    const-string v1, ", mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    const-string v1, ", mCapInfoExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 476
    const-string v1, ", mNonRCScapInfoExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mNonRCScapInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    const-string v1, ", mPollingPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 478
    const-string v1, ", mCapCacheExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapCacheExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, ", mPollingRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 480
    const-string v1, ", mPollListSubExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollListSubExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, ", mPollingRatePeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mPollingRatePeriod:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 482
    const-string v1, ", mServiceAvailabilityInfoExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mServiceAvailabilityInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, ", mDefaultDisc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    const-string v1, ", mIsLocalConfigUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsLocalConfigUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, ", mIsPollingPeriodUpdated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsPollingPeriodUpdated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 486
    const-string v1, ", mDisableInitialScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDisableInitialScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, ", mAllowedPrefixes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mAllowedPrefixes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, ", mIsSupportExpCapInfoExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mIsSupportExpCapInfoExpiry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", mCapDiscCommonStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mCapDiscCommonStack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public usePresence()Z
    .locals 2

    .line 300
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->mDefaultDisc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
