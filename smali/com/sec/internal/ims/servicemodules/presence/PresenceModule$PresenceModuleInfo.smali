.class Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
.super Ljava/lang/Object;
.source "PresenceModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PresenceModuleInfo"
.end annotation


# instance fields
.field mBackupPublishTimestamp:J

.field mBadEventIntent:Landroid/app/PendingIntent;

.field mBadEventProgress:Z

.field mFirstPublish:Z

.field mLastBadEventTimestamp:J

.field mLastPublishTimestamp:J

.field mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

.field mLimitImmediateRetry:Z

.field mLimitReRegistration:Z

.field mMno:Lcom/sec/internal/constants/Mno;

.field mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field mOwnInfoPublished:Z

.field mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

.field mParalysed:Z

.field mPollingIntent:Landroid/app/PendingIntent;

.field mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/SocialPresenceCache;

.field mPublishExpBackOffRetryCount:I

.field mPublishNoResponseCount:I

.field mPublishNotProvisionedCount:I

.field mPublishRequestTimeout:I

.field mRegInfo:Lcom/sec/ims/ImsRegistration;

.field mRetryPublishIntent:Landroid/app/PendingIntent;

.field mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field ongoingPublishErrRetry:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    .line 112
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    .line 113
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    .line 118
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 119
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 123
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 124
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->NONE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    return-void
.end method
