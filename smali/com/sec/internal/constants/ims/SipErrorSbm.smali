.class public Lcom/sec/internal/constants/ims/SipErrorSbm;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorSbm.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    .line 19
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorSbm;->DECLINE:Lcom/sec/ims/util/SipError;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipErrorSbm;->mDefaultRejectReason:Lcom/sec/ims/util/SipError;

    .line 20
    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1
    .param p1, "reason"    # I

    .line 24
    if-gez p1, :cond_0

    .line 25
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorSbm;->DECLINE:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 27
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    .line 33
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 31
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorSbm;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
