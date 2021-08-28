.class public Lcom/sec/internal/constants/ims/SipErrorDcm;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorDcm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1
    .param p1, "reason"    # I

    .line 19
    if-gez p1, :cond_0

    .line 20
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorDcm;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    .line 28
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 26
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorDcm;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
