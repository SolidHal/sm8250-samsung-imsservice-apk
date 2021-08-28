.class public Lcom/sec/internal/constants/ims/SipErrorUscc;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorUscc.java"


# static fields
.field public static final BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

.field public static final CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1e6

    const-string v2, "Establishing Another Call"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorUscc;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    .line 19
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v2, "Call Rejected by User"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorUscc;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

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

    .line 23
    if-gez p1, :cond_0

    .line 24
    const/4 p1, 0x3

    .line 26
    :cond_0
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 30
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object v0

    return-object v0

    .line 28
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorUscc;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    return-object v0
.end method
