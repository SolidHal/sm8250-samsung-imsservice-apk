.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;
.super Ljava/lang/Object;
.source "PresenceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field badEventExpiry:J

.field isLocalConfigUsed:Z

.field maxUri:I

.field publishErrRetry:J

.field publishTimer:J

.field publishTimerExtended:J

.field retryPublishTimer:J

.field sourceThrottlePublish:J

.field sourceThrottleSubscribe:J

.field tDelayPublish:J

.field useAnonymousFetch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->useAnonymousFetch:Z

    .line 262
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->isLocalConfigUsed:Z

    .line 263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottlePublish:J

    .line 264
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottleSubscribe:J

    .line 265
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->tDelayPublish:J

    .line 266
    const-wide/16 v0, 0x4b0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimer:J

    .line 267
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->retryPublishTimer:J

    .line 268
    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimerExtended:J

    .line 269
    const-wide/16 v0, 0x5460

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishErrRetry:J

    .line 270
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->badEventExpiry:J

    .line 271
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->maxUri:I

    return-void
.end method
