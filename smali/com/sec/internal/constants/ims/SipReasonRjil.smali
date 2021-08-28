.class public Lcom/sec/internal/constants/ims/SipReasonRjil;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonRjil.java"


# static fields
.field public static final INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

.field public static final NETWORK_COVERAGE_LOST:Lcom/sec/internal/constants/ims/SipReason;

.field public static final OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

.field public static final UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final VOPS_DISABLED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "SIP"

    const-string v4, "RAT changed"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Low battery"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Out of battery"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "User Disconnected"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Moved to LTE without VoLTE support"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->VOPS_DISABLED:Lcom/sec/internal/constants/ims/SipReason;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Network Coverage Lost"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->NETWORK_COVERAGE_LOST:Lcom/sec/internal/constants/ims/SipReason;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "Internal Error"

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 1
    .param p1, "reason"    # I

    .line 20
    if-gez p1, :cond_0

    .line 21
    const/4 p1, 0x5

    .line 24
    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0x18

    if-eq p1, v0, :cond_1

    .line 38
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 36
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->NETWORK_COVERAGE_LOST:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 30
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 34
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->VOPS_DISABLED:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 28
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 32
    :cond_5
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0

    .line 26
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    return-object v0
.end method
