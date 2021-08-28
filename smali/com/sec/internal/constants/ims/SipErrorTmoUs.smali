.class public Lcom/sec/internal/constants/ims/SipErrorTmoUs;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorTmoUs.java"


# static fields
.field public static final VERSION_NOT_SUPPORTED:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 19
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1f9

    const-string v2, "SIP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->VERSION_NOT_SUPPORTED:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public requireSmsCsfb()Z
    .locals 1

    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public requireVoLteCsfb()Z
    .locals 1

    .line 24
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->BAD_REQUEST:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 25
    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->METHOD_NOT_ALLOWED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 26
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
