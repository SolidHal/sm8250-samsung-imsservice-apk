.class public Lcom/sec/internal/constants/ims/SipErrorSprint;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorSprint.java"


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
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 23
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 21
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorSprint;->NOT_ACCEPTABLE_HERE:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
