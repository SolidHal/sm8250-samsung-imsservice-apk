.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;
.super Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
.source "PublishResponse.java"


# instance fields
.field private mEtag:Ljava/lang/String;

.field private mExpiresTimer:J

.field private mIsRefresh:Z

.field private mRetryAfter:J


# direct methods
.method public constructor <init>(ZILjava/lang/String;ILjava/lang/String;JZJI)V
    .locals 7
    .param p1, "success"    # Z
    .param p2, "error"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "retryTime"    # I
    .param p5, "eTag"    # Ljava/lang/String;
    .param p6, "expiresTimer"    # J
    .param p8, "isRefresh"    # Z
    .param p9, "retryAfter"    # J
    .param p11, "phoneId"    # I

    .line 11
    move-object v6, p0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p11

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;-><init>(ZILjava/lang/String;II)V

    .line 12
    move-object v0, p5

    iput-object v0, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mEtag:Ljava/lang/String;

    .line 13
    move-wide v1, p6

    iput-wide v1, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mExpiresTimer:J

    .line 14
    move v3, p8

    iput-boolean v3, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mIsRefresh:Z

    .line 15
    move-wide/from16 v4, p9

    iput-wide v4, v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mRetryAfter:J

    .line 16
    return-void
.end method


# virtual methods
.method public getEtag()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mEtag:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiresTimer()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mExpiresTimer:J

    return-wide v0
.end method

.method public getRetryAfter()J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mRetryAfter:J

    return-wide v0
.end method

.method public isRefresh()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->mIsRefresh:Z

    return v0
.end method
