.class public Lcom/sec/internal/constants/ims/SipErrorGlobe;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorGlobe.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorGlobe;->DECLINE:Lcom/sec/ims/util/SipError;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipErrorGlobe;->mDefaultRejectReason:Lcom/sec/ims/util/SipError;

    .line 20
    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1
    .param p1, "reason"    # I

    .line 24
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 30
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 28
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorGlobe;->NOT_ACCEPTABLE_GLOBALLY:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 26
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorGlobe;->DECLINE:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
