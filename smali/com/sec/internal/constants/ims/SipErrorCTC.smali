.class public Lcom/sec/internal/constants/ims/SipErrorCTC;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorCTC.java"


# static fields
.field public static final CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1e6

    const-string v2, "Call Rejected by User"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorCTC;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    return-void
.end method

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

    .line 21
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 27
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 23
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorCTC;->REQUEST_TIMEOUT:Lcom/sec/ims/util/SipError;

    return-object v0

    .line 25
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorCTC;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
