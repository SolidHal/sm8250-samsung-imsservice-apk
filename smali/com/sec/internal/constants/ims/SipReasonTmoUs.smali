.class public Lcom/sec/internal/constants/ims/SipReasonTmoUs;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonTmoUs.java"


# static fields
.field public static final DEDICATED_BEARER_LOST:Lcom/sec/internal/constants/ims/SipReason;

.field public static final DEDICATED_BEARER_NOT_ESTABLISHED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final INVITE_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "RELEASE_CAUSE"

    const/4 v4, 0x1

    const-string v5, "User ends call"

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const/4 v4, 0x5

    const-string v5, "User ends call and SIP response time-out"

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->INVITE_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, "Media bearer loss"

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->DEDICATED_BEARER_LOST:Lcom/sec/internal/constants/ims/SipReason;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "User ends call Media bearer loss"

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->DEDICATED_BEARER_NOT_ESTABLISHED:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 1
    .param p1, "reason"    # I

    .line 29
    if-gez p1, :cond_0

    .line 30
    const/4 p1, 0x5

    .line 33
    :cond_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_1

    .line 43
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v0

    return-object v0

    .line 41
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->DEDICATED_BEARER_NOT_ESTABLISHED:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 37
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->INVITE_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 39
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->DEDICATED_BEARER_LOST:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 35
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0
.end method
