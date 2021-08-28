.class public Lcom/sec/internal/constants/ims/SipReasonUscc;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonUscc.java"


# static fields
.field public static final INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final TIMER_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SIP"

    const-string v4, "Moved to CDMA"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Session Expired"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "User Triggered"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 26
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Timer Expired"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 1
    .param p1, "reason"    # I

    .line 30
    if-gez p1, :cond_0

    .line 31
    const/4 p1, 0x5

    .line 34
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x70a

    if-eq p1, v0, :cond_1

    .line 42
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object v0

    return-object v0

    .line 40
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 36
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 38
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonUscc;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0
.end method
