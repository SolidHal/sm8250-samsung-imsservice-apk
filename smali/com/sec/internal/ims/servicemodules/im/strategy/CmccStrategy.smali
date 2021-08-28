.class public final Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;
.super Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;
.source "CmccStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy$FtCancelReasonResumableOptionCodeMap;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final MAX_RETRY_COUNT:I

.field private final RETRY_AFTER_MAX:I

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

.field private final mRetryNeededFT_retryafter:Ljava/util/HashSet;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->MAX_RETRY_COUNT:I

    .line 35
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->RETRY_AFTER_MAX:I

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    .line 43
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->init()V

    .line 44
    return-void
.end method

.method private getResumableOptionGroupFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 4
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 172
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

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

    .line 173
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_1

    .line 174
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 175
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_2

    .line 176
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 177
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_3

    .line 178
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 179
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 184
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_RESUMABLE_ONLY:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 180
    :cond_5
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->MANUALLY_AUTOMATICALLY_RESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0
.end method

.method private getResumableOptionSingleFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 4
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 162
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

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

    .line 163
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy$FtCancelReasonResumableOptionCodeMap;->translateCancelReason(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v0

    .line 164
    .local v0, "resumeOption":Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    if-nez v0, :cond_0

    .line 165
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v1

    .line 167
    :cond_0
    return-object v0
.end method

.method private init()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->TRANSACTION_DOESNT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->DEDICATED_BEARER_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_REQUEST_UNINTELLIGIBLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_TRANSACTION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_PARAMETERS_OUT_OF_BOUND:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_CONTENT_TYPE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_METHOD:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_UNKNOWN_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method


# virtual methods
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

    .line 101
    .local p1, "uris":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCapability->capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",isBroadcastMsg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 103
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 105
    :cond_0
    if-nez p5, :cond_2

    invoke-static {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0

    .line 106
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->getStrategyResponse()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 104
    :cond_3
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v0
.end method

.method public checkChatbotMessagingTech(Lcom/sec/internal/ims/servicemodules/im/ImConfig;ZLjava/util/Set;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;
    .locals 4
    .param p1, "config"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .param p2, "isGroupChat"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            "Z",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;"
        }
    .end annotation

    .line 223
    .local p3, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    if-nez p2, :cond_1

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 224
    invoke-static {p3}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    .line 226
    .local v0, "configTech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_0

    .line 227
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NOT_AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object v1

    .line 229
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    const-string v3, "checkChatbotMessagingTech: force to STANDALONE_MESSAGING"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->STANDALONE_MESSAGING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object v1

    .line 233
    .end local v0    # "configTech":Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object v0
.end method

.method public getErrorReasonForStrategyResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "msg"    # Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .param p2, "strategyResponse"    # Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    .line 273
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-eq v0, v1, :cond_0

    .line 274
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY_CFS:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_4

    .line 275
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v0, v1, :cond_3

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 278
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    .line 280
    .local v0, "length":I
    const/16 v1, 0x384

    if-le v0, v1, :cond_2

    .line 281
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    const-string v3, "getErrorReasonForStrategyResponse(), > 900"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 282
    const-string v1, ""

    return-object v1

    .line 284
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    const-string v3, "getErrorReasonForStrategyResponse(), <= 900"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 285
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 288
    .end local v0    # "length":I
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->FRAMEWORK_ERROR_FALLBACKFAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 291
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFtHttpUserAgent(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;
    .locals 3
    .param p1, "imConfig"    # Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 340
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "userAgent":Ljava/lang/String;
    const-string v1, "ft_with_gba"

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " 3gpp-gba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :cond_0
    return-object v0
.end method

.method public getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;

    .line 130
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 131
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForFt:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededFT_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    if-lez p3, :cond_2

    const/4 v0, 0x4

    if-gt p3, v0, :cond_2

    .line 138
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 140
    :cond_2
    if-gtz p3, :cond_3

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 145
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method public getMsgRoutingType(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 6
    .param p1, "requestUri"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "pAssertedId"    # Lcom/sec/ims/util/ImsUri;
    .param p3, "sender"    # Lcom/sec/ims/util/ImsUri;
    .param p4, "receiver"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "isGroupChat"    # Z

    .line 238
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMsgRoutingType->requestUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", pAssertedId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", sender:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", receiver:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isGroupChat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 242
    .local v0, "routingType":Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    const/4 v1, 0x0

    .line 243
    .local v1, "requestNumber":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_0
    if-eqz p5, :cond_3

    .line 248
    invoke-virtual {p3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "senderNumber":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 250
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    goto :goto_0

    .line 253
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->RECEIVED:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 256
    .end local v2    # "senderNumber":Ljava/lang/String;
    :cond_2
    :goto_0
    goto :goto_1

    .line 257
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 258
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 259
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->SENT:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    goto :goto_1

    .line 261
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->RECEIVED:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 266
    :cond_5
    :goto_1
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMsgRoutingType routingType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 267
    return-object v0
.end method

.method public getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    .locals 1
    .param p1, "currentRetryCount"    # I
    .param p2, "error"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 114
    const/4 v0, 0x1

    if-ge p1, v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededErrorsForIm:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_IMMEDIATE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mRetryNeededIM_retryafter:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    if-lez p3, :cond_1

    const/4 v0, 0x4

    if-gt p3, v0, :cond_1

    .line 119
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 120
    :cond_1
    if-gtz p3, :cond_2

    .line 121
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->RETRY_AFTER_SESSION:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0

    .line 125
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    return-object v0
.end method

.method public getftResumableOption(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;ZLcom/sec/internal/constants/ims/servicemodules/im/ImDirection;I)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;
    .locals 1
    .param p1, "cancelreason"    # Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;
    .param p2, "isGroup"    # Z
    .param p3, "direction"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .param p4, "transferMech"    # I

    .line 150
    if-nez p1, :cond_0

    .line 151
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;->NOTRESUMABLE:Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    return-object v0

    .line 154
    :cond_0
    if-eqz p2, :cond_1

    .line 155
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->getResumableOptionGroupFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v0

    return-object v0

    .line 157
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->getResumableOptionSingleFt(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/data/FtResumableOption;

    move-result-object v0

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

    .line 92
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->getFtMsrpRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 93
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->handleFtFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    return-object v1

    .line 96
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
.end method

.method public handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;
    .locals 6
    .param p1, "imError"    # Lcom/sec/internal/constants/ims/servicemodules/im/ImError;
    .param p2, "currentRetryCount"    # I
    .param p3, "retryAfter"    # I
    .param p4, "newContact"    # Lcom/sec/ims/util/ImsUri;
    .param p5, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p6, "isSlmMessage"    # Z
    .param p7, "isFtHttp"    # Z

    .line 79
    if-eqz p6, :cond_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->handleSlmFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    return-object v0

    .line 82
    :cond_0
    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->getRetryStrategy(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v0

    .line 83
    .local v0, "statusCode":Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NO_RETRY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v0, v1, :cond_1

    .line 84
    invoke-virtual {p0, p1, p5}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->handleImFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v1

    return-object v1

    .line 86
    :cond_1
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    return-object v1
.end method

.method public isCustomizedFeature(J)Z
    .locals 2
    .param p1, "featureCapability"    # J

    .line 217
    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDeleteSessionSupported(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;I)Z
    .locals 1
    .param p1, "chatType"    # Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
    .param p2, "stateId"    # I

    .line 296
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isFTViaHttp(Lcom/sec/internal/ims/servicemodules/im/ImConfig;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z
    .locals 1
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

    .line 335
    .local p2, "participants":Ljava/util/Set;, "Ljava/util/Set<Lcom/sec/ims/util/ImsUri;>;"
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v0

    return v0
.end method

.method public isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z
    .locals 3
    .param p1, "s"    # Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;
    .param p2, "millis"    # J
    .param p4, "isAvailFetch"    # Z
    .param p5, "isAlwaysForce"    # Z

    .line 190
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    const-string v2, "isSubscribeThrottled"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public needCapabilitiesUpdate(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Lcom/sec/ims/options/Capabilities;JJ)Z
    .locals 4
    .param p1, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;
    .param p2, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p3, "features"    # J
    .param p5, "cacheInfoExpiry"    # J

    .line 202
    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 203
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->mPhoneId:I

    const-string v3, "needCapabilitiesUpdate: Capability is null"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 204
    return v0

    .line 207
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->FAILURE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJJJ)Z
    .locals 7
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "refreshType"    # Lcom/sec/ims/options/CapabilityRefreshType;
    .param p3, "capInfoExpiry"    # J
    .param p5, "serviceAvailabilityInfoExpiry"    # J
    .param p7, "capCacheExpiry"    # J
    .param p9, "msgCapvalidity"    # J

    .line 197
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/im/strategy/CmccStrategy;->needRefresh(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/options/CapabilityRefreshType;JJ)Z

    move-result v0

    return v0
.end method

.method public updateFeatures(Lcom/sec/ims/options/Capabilities;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;)J
    .locals 0
    .param p1, "capex"    # Lcom/sec/ims/options/Capabilities;
    .param p2, "features"    # J
    .param p4, "result"    # Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    .line 212
    return-wide p2
.end method
