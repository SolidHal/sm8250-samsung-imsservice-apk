.class public Lcom/sec/internal/constants/ims/SipErrorNovaIs;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorNovaIs.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1
    .param p1, "reason"    # I

    .line 8
    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 12
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorNovaIs;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
