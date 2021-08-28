.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;
.super Ljava/lang/Object;
.source "IMSMediaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioRtpStats"
.end annotation


# instance fields
.field public mChannelId:I

.field public mDelay:I

.field public mDirection:I

.field public mJitter:I

.field public mLossData:I

.field public mMeasuredPeriod:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0
    .param p1, "channelId"    # I
    .param p2, "lossdata"    # I
    .param p3, "delay"    # I
    .param p4, "jitter"    # I
    .param p5, "measuredPeriod"    # I
    .param p6, "direction"    # I

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mChannelId:I

    .line 195
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mLossData:I

    .line 196
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDelay:I

    .line 197
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mJitter:I

    .line 198
    iput p5, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mMeasuredPeriod:I

    .line 199
    iput p6, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent$AudioRtpStats;->mDirection:I

    .line 200
    return-void
.end method
