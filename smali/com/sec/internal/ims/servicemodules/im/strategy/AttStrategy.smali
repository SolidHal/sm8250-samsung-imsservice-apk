.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "AttStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy$AttFtCancelReasonResumableOptionCodeMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CONSECUTIVE_SUBSCRIBE_THRESHOLD:I

.field private final LIMITED_SUBSCRIBE_INTERVAL:I

.field private final MAX_RETRY_COUNT:I

.field private final RETRY_AFTER_MAX:I

.field private final mForceRefreshRemoteCapa:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mFtHttpMOSessionRetryTimerList:[I

.field private final mFtResumeRetryMOTimerList:[I

.field private final mFtResumeRetryMTTimerList:[I

.field private final mReconfigurationTimerList:[J

.field private final mRetryNeededErrorsForFt:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededErrorsForIm:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededFT_changecontact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededFT_retryafter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededIM_changecontact:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mRetryNeededIM_retryafter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->MAX_RETRY_COUNT:I

    .line 57
    const/16 v1, 0xa

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->CONSECUTIVE_SUBSCRIBE_THRESHOLD:I

    .line 58
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->LIMITED_SUBSCRIBE_INTERVAL:I

    .line 59
    const/4 v2, 0x5

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->RETRY_AFTER_MAX:I

    .line 61
    new-instance v3, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v3, v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 62
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    .line 63
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    .line 64
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_changecontact:Ljava/util/HashSet;

    .line 65
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    .line 66
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_changecontact:Ljava/util/HashSet;

    .line 67
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    .line 68
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    .line 71
    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mFtResumeRetryMTTimerList:[I

    .line 74
    new-array v1, v0, [I

    const/4 v3, 0x0

    aput v0, v1, v3

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mFtResumeRetryMOTimerList:[I

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mFtHttpMOSessionRetryTimerList:[I

    .line 80
    new-array v0, v2, [J

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mReconfigurationTimerList:[J

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->init()V

    .line 85
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x258
        0xe10
        0x15180
        0x2a300
        0x3f480
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xa
        0x14
    .end array-data

    :array_2
    .array-data 8
        0x0
        0xdbba00
        0x1b77400
        0x36ee800
        0x6ddd000
    .end array-data
.end method

.method private findMatchingCapabilities(Lcom/sec/ims/util/ImsUri;[Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;
    .locals 5
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "capexList"    # [Lcom/sec/ims/options/Capabilities;

    .line 221
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 222
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v3, "findMatchingCapabilities: capexList is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    return-object v0

    .line 225
    :cond_0
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 226
    .local v3, "capex":Lcom/sec/ims/options/Capabilities;
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    return-object v3

    .line 225
    .end local v3    # "capex":Lcom/sec/ims/options/Capabilities;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    :cond_2
    return-object v0
.end method

.method private getResumableOptionGroupFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 4
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 330
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResumableOptionGroupFt, cancelreason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_0

    .line 332
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 333
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 336
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_2

    .line 337
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 341
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 335
    :cond_3
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0
.end method

.method private getResumableOptionSingleFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 4
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 320
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getResumableOptionSingleFt, cancelreason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " direction:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy$AttFtCancelReasonResumableOptionCodeMap;->translateCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v0

    .line 322
    .local v0, "resumeOption":Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    if-nez v0, :cond_0

    .line 323
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v1

    .line 325
    :cond_0
    return-object v0
.end method

.method private handleSendingFtHttpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I

    .line 158
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getFtHttpSessionRetryTimer(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;)I

    move-result v0

    .line 160
    .local v0, "ftSessionRetryTimer":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 161
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1

    .line 162
    :cond_0
    if-nez v0, :cond_1

    .line 163
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1

    .line 165
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
.end method

.method private init()V
    .locals 3

    .line 88
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_GATEWAY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->LOOP_DETECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TOO_MANY_HOPS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BAD_GATEWAY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST_RETRY_FALLBACK:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->LOOP_DETECTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TOO_MANY_HOPS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->INTERNAL_SERVER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MULTIPLE_CHOICES:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_PERMANENTLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_TEMPORARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->USE_PROXY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MULTIPLE_CHOICES:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_PERMANENTLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MOVED_TEMPORARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_changecontact:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->USE_PROXY:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_USER_INVALID:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    return-void
.end method


# virtual methods
.method public calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J
    .locals 11
    .param p1, "subscription"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    .line 347
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v2, "calSubscribeDelayTime"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->clone()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 355
    .local v2, "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    nop

    .line 357
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->remainingCapacity()I

    move-result v3

    if-nez v3, :cond_3

    .line 358
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v5, "calSubscribeDelayTime: threshold is maxed"

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    const/4 v3, 0x0

    .line 361
    .local v3, "timestamp":Ljava/util/Date;
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 362
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v3

    .line 364
    :cond_0
    const-wide/16 v4, 0x0

    .line 365
    .local v4, "offset":J
    if-eqz v3, :cond_1

    .line 366
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long v4, v6, v8

    .line 367
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calSubscribeDelayTime: interval from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", offset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-static {v6, v7, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    :cond_1
    cmp-long v6, v4, v0

    if-ltz v6, :cond_2

    const-wide/16 v6, 0x3e8

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 371
    sub-long/2addr v6, v4

    return-wide v6

    .line 375
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    goto :goto_0

    .line 376
    :catch_0
    move-exception v6

    .line 377
    .local v6, "e":Ljava/lang/InterruptedException;
    sget-object v7, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v9, "calSubscribeDelayTime: current queue is empty"

    invoke-static {v7, v8, v9}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 381
    .end local v3    # "timestamp":Ljava/util/Date;
    .end local v4    # "offset":J
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mSubscriptionQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 382
    return-wide v0

    .line 352
    .end local v2    # "s":Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    :catch_1
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 354
    return-wide v0
.end method

.method public calThrottledPublishRetryDelayTime(JJ)J
    .locals 9
    .param p1, "lastPublishTimestamp"    # J
    .param p3, "sourceThrottlePublish"    # J

    .line 459
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 461
    .local v0, "current":Ljava/util/Date;
    const-wide/16 v1, 0x0

    cmp-long v3, p3, v1

    if-lez v3, :cond_0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v3, p1

    const-wide/16 v5, 0x3e8

    mul-long v7, p3, v5

    cmp-long v3, v3, v7

    if-gez v3, :cond_0

    .line 462
    mul-long/2addr v5, p3

    add-long/2addr v5, p1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long/2addr v5, v1

    .line 463
    .local v5, "retry":J
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calThrottledPublishRetryDelayTime: throttled. retry in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 464
    return-wide v5

    .line 467
    .end local v5    # "retry":J
    :cond_0
    return-wide v1
.end method

.method public checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 11
    .param p2, "features"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 195
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v6

    .line 196
    .local v6, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    .line 197
    .local v7, "phoneId":I
    if-nez v6, :cond_0

    .line 198
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v2, "checkCapability: capDiscModule is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 202
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 203
    .local v1, "urisList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v3, v0

    move-object v0, v6

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    .line 206
    .local v0, "capexList":[Lcom/sec/ims/options/Capabilities;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 207
    .local v3, "uri":Lcom/sec/ims/util/ImsUri;
    invoke-direct {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->findMatchingCapabilities(Lcom/sec/ims/util/ImsUri;[Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;

    move-result-object v4

    .line 208
    .local v4, "caps":Lcom/sec/ims/options/Capabilities;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->hasOneOfFeaturesAvailable(Lcom/sec/ims/options/Capabilities;J)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 216
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_1
    goto :goto_0

    .line 209
    .restart local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .restart local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_2
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkCapability: No capabilities for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_3
    move-object v9, v3

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 211
    if-nez v4, :cond_4

    const-string v9, ""

    goto :goto_3

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ": isAvailable="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-static {v2, v5, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    const/high16 v2, 0x120b0000

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",NOCAP,"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_5
    const-string/jumbo v8, "xx"

    :goto_4
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    return-object v2

    .line 217
    .end local v3    # "uri":Lcom/sec/ims/util/ImsUri;
    .end local v4    # "caps":Lcom/sec/ims/options/Capabilities;
    :cond_6
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v2
.end method

.method public checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 4
    .param p2, "capability"    # J
    .param p4, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p5, "isBroadcastMsg"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Z)",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;"
        }
    .end annotation

    .line 181
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCapability->capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isBroadcastMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 187
    :cond_0
    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 190
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->checkCapability(Ljava/util/Set;J)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public checkMainSwitchOff(Landroid/content/Context;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 538
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    const-string v1, "RCS_ATT_PHASE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "rcs"

    invoke-static {p1, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public checkNeedParsing(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 638
    if-eqz p1, :cond_1

    const-string v0, "*67"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*82"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 639
    :cond_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 640
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v2, "parsing for special character"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 642
    :cond_1
    return-object p1
.end method

.method public forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
    .locals 10
    .param p2, "remoteOnline"    # Z
    .param p3, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImError;",
            ")V"
        }
    .end annotation

    .line 286
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getCapDiscModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v6

    .line 287
    .local v6, "capDiscModule":Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;
    iget v7, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    .line 288
    .local v7, "phoneId":I
    if-nez v6, :cond_0

    .line 289
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v2, "forceRefreshCapability: capDiscModule is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "forceRefreshCapability: uris "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 294
    if-eqz p2, :cond_1

    .line 295
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 296
    .local v1, "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    or-int/2addr v0, v3

    int-to-long v3, v0

    move-object v0, v6

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    .line 299
    .end local v1    # "uriList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mForceRefreshRemoteCapa:Ljava/util/HashSet;

    invoke-virtual {v0, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 300
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    .local v1, "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    sget-wide v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    or-long/2addr v3, v8

    move-object v0, v6

    move v5, v7

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;

    .line 304
    .end local v1    # "urilist":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    :cond_2
    return-void
.end method

.method public getFtHttpRetryInterval(II)I
    .locals 1
    .param p1, "interval"    # I
    .param p2, "retryCount"    # I

    .line 533
    if-nez p2, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public getFtHttpSessionRetryTimer(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;)I
    .locals 3
    .param p1, "retryCount"    # I
    .param p2, "result"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 502
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v1, -0x1

    if-eq v0, p2, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mFtHttpMOSessionRetryTimerList:[I

    array-length v2, v0

    if-ge p1, v2, :cond_1

    .line 507
    aget v0, v0, p1

    return v0

    .line 509
    :cond_1
    return v1

    .line 503
    :cond_2
    :goto_0
    return v1
.end method

.method public getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;

    .line 257
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 258
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 261
    if-lez p3, :cond_1

    const/4 v0, 0x5

    if-gt p3, v0, :cond_1

    .line 262
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 264
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededFT_changecontact:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    if-eqz p4, :cond_3

    .line 268
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_WITH_NEW_CONTACT_HEADER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 270
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 274
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method public getNextFileTransferAutoResumeTimer(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)I
    .locals 2
    .param p1, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p2, "retryCount"    # I

    .line 448
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mFtResumeRetryMTTimerList:[I

    array-length v1, v0

    if-ge p2, v1, :cond_0

    .line 449
    aget v0, v0, p2

    return v0

    .line 450
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mFtResumeRetryMOTimerList:[I

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 451
    aget v0, v0, p2

    return v0

    .line 453
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 235
    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    if-lez p3, :cond_1

    const/4 v0, 0x5

    if-gt p3, v0, :cond_1

    .line 240
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 242
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mRetryNeededIM_changecontact:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    if-eqz p4, :cond_3

    .line 246
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_WITH_NEW_CONTACT_HEADER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 248
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 252
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method public getUploadedFileFallbackSLMTech()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2

    .line 652
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 1
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "isGroup"    # Z
    .param p3, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p4, "transferMech"    # I

    .line 308
    if-nez p1, :cond_0

    .line 309
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 312
    :cond_0
    if-eqz p2, :cond_1

    .line 313
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getResumableOptionGroupFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v0

    return-object v0

    .line 316
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getResumableOptionSingleFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v0

    return-object v0
.end method

.method public handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "close"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 624
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_WITH_480_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne p1, v0, :cond_0

    .line 625
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 5
    .param p1, "ftError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 590
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 593
    :cond_0
    new-array v0, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 595
    :cond_2
    new-array v0, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 597
    :cond_3
    new-array v0, v3, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 598
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;)V

    return-object v0

    .line 600
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_1

    :cond_5
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_1
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handleFtHttpRequestFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 3
    .param p1, "cancelReason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p3, "isGroup"    # Z

    .line 516
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->FORBIDDEN_FT_HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 519
    .local v0, "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mReconfigurationTimerList:[J

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->reconfiguration([J)V

    .line 522
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1

    .line 524
    .end local v0    # "imModule":Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v0, :cond_2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 525
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 527
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 6
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 576
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 577
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 578
    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_BEARER_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GROUPCHAT_DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 580
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_0
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 581
    :cond_2
    new-array v0, v4, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 582
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$ErrorNotificationId;)V

    return-object v0

    .line 584
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChatIdBasedGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    :goto_1
    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;
    .locals 4
    .param p1, "errorReason"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .param p2, "isPublish"    # Z

    .line 606
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 607
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_AT_BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 608
    :cond_0
    new-array v1, v0, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 609
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_SUBSCRIBE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 610
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    aput-object v2, v1, v0

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_FULL_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0

    .line 613
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUIRE_RETRY_PUBLISH:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-object v0
.end method

.method public handleSendingFtMsrpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 2
    .param p1, "ftError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z

    .line 172
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 173
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_0

    .line 174
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    return-object v1

    .line 176
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 7
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z
    .param p7, "hasChatbotUri"    # Z
    .param p8, "isFtHttp"    # Z

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "strategyResponse":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    if-eqz p6, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_0
    if-eqz p8, :cond_1

    if-nez p7, :cond_1

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->handleSendingFtHttpMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    .line 143
    .local v1, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v1, v2, :cond_2

    .line 144
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_2
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    move-object v0, v2

    .line 149
    .end local v1    # "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    :goto_0
    if-eqz p7, :cond_4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v1, v2, :cond_3

    .line 150
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v1, v2, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, v1, :cond_3

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REQUEST_PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v1, :cond_4

    .line 152
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1

    .line 154
    :cond_4
    return-object v0
.end method

.method public handleSessionFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 1
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 718
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, v0, :cond_0

    .line 719
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->ALL_PARTICIPANTS_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object v0

    .line 721
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    return-object v0
.end method

.method public isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z
    .locals 1
    .param p1, "uri"    # Lcom/sec/ims/util/ImsUri;

    .line 280
    invoke-static {p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/StrategyUtils;->isCapabilityValidUriForUS(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v0

    .line 280
    :goto_0
    return v0
.end method

.method public isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 557
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->REMOTE_PARTY_DECLINED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->EXCEED_MAXIMUM_RECIPIENTS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v0

    return v0
.end method

.method public isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z
    .locals 1
    .param p1, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p2, "stateId"    # I

    .line 633
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisplayBotError()Z
    .locals 1

    .line 647
    const/4 v0, 0x1

    return v0
.end method

.method public isFTHTTPAutoResumeAndCancelPerConnectionChange()Z
    .locals 3

    .line 551
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    const-string v1, "RCS_ATT_PHASE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 4
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p3, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")Z"
        }
    .end annotation

    .line 477
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpCsUri()Landroid/net/Uri;

    move-result-object v1

    .line 479
    .local v1, "ftHttpCsUri":Landroid/net/Uri;
    const-string v2, "RCS_ATT_PHASE2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->isFtHttpRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 486
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p3, v2, :cond_1

    .line 488
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->checkFtHttpCapability(Ljava/util/Set;)Z

    move-result v2

    return v2

    .line 490
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p3, v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3

    .line 481
    :cond_3
    :goto_0
    return v3
.end method

.method public isFtHttpOnlySupported(Z)Z
    .locals 3
    .param p1, "isGroup"    # Z

    .line 496
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    const-string v1, "RCS_ATT_PHASE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHTTPUsedForEmptyFtHttpPOST()Z
    .locals 3

    .line 545
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    const-string v1, "RCS_ATT_PHASE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNeedToReportToRegiGvn(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 4
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 562
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string/jumbo v1, "rcs_phase_version"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "rcsPhaseVersion":Ljava/lang/String;
    const-string v1, "RCS_ATT_PHASE2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 564
    return v2

    .line 566
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_NO_WARNING_HEADER:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    aput-object v3, v1, v2

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->isOneOf([Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v1

    return v1
.end method

.method public isPresenceReadyToRequest(ZZ)Z
    .locals 1
    .param p1, "ownInfoPublished"    # Z
    .param p2, "paralysed"    # Z

    .line 472
    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 9
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "millis"    # J
    .param p4, "isAvailFetch"    # Z
    .param p5, "isAlwaysForce"    # Z

    .line 388
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 389
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v3, "isSubscribeThrottled: retried subscription"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 390
    return v1

    .line 393
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 394
    .local v0, "current":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 395
    .local v2, "offset":J
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSubscribeThrottled: state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " interval from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", offset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " sourceThrottlePublish "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " isAlwaysForce "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 395
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 399
    const/4 v4, 0x1

    if-eqz p5, :cond_2

    .line 400
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getState()I

    move-result v5

    if-nez v5, :cond_1

    cmp-long v5, v2, p2

    if-gez v5, :cond_1

    .line 401
    return v4

    .line 403
    :cond_1
    return v1

    .line 406
    :cond_2
    cmp-long v5, v2, p2

    if-gez v5, :cond_3

    move v1, v4

    :cond_3
    return v1
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z
    .locals 4
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "capCacheExpiry"    # J

    .line 411
    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 412
    return v1

    .line 414
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 415
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v3, "needRefresh: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 416
    return v0

    .line 418
    :cond_1
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    invoke-virtual {p1, v2}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 419
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v3, "needRefresh: fetch failed capabilities"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 420
    return v0

    .line 421
    :cond_2
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_3

    .line 422
    return v0

    .line 423
    :cond_3
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_UCE:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_5

    .line 424
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    invoke-virtual {p1, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 425
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v2, "needRefresh: non capabilitydisovery capable user"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 426
    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v0

    return v0

    .line 428
    :cond_4
    return v0

    .line 429
    :cond_5
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_6

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 430
    return v0

    .line 431
    :cond_6
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->FORCE_REFRESH_SYNC:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_7

    .line 432
    return v0

    .line 434
    :cond_7
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    if-ne p2, v2, :cond_8

    invoke-virtual {p1, p3, p4}, Lcom/sec/ims/options/Capabilities;->isExpired(J)Z

    move-result v2

    if-eqz v2, :cond_8

    move v1, v0

    :cond_8
    return v1
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 7
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "serviceAvailabilityInfoExpiry"    # J
    .param p7, "capCacheExpiry"    # J
    .param p9, "msgCapvalidity"    # J

    .line 441
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method

.method public needToCapabilityCheckForImdn(Z)Z
    .locals 3
    .param p1, "isGroupChat"    # Z

    .line 657
    if-eqz p1, :cond_0

    .line 658
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->mPhoneId:I

    const-string v2, "needToCapabilityCheckForImdn: failed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    const/4 v0, 0x0

    return v0

    .line 661
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRestartSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 3
    .param p1, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 666
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 672
    :cond_0
    const-string v0, "gone_should_endsession"

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/AttStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 673
    return v1

    .line 676
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 670
    :cond_2
    return v1
.end method
