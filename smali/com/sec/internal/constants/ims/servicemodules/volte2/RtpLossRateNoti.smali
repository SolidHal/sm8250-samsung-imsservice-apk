.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;
.super Ljava/lang/Object;
.source "RtpLossRateNoti.java"


# instance fields
.field mInterval:I

.field mJitter:F

.field mLossRate:F

.field mNotification:I


# direct methods
.method public constructor <init>(IFFI)V
    .locals 0
    .param p1, "interval"    # I
    .param p2, "lossrate"    # F
    .param p3, "jitter"    # F
    .param p4, "notification"    # I

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mInterval:I

    .line 12
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mLossRate:F

    .line 13
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mJitter:F

    .line 14
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mNotification:I

    .line 15
    return-void
.end method


# virtual methods
.method public getInterval()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mInterval:I

    return v0
.end method

.method public getJitter()F
    .locals 1

    .line 26
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mJitter:F

    return v0
.end method

.method public getLossRate()F
    .locals 1

    .line 22
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mLossRate:F

    return v0
.end method

.method public getNotification()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RtpLossRateNoti;->mNotification:I

    return v0
.end method
