.class public Lcom/sec/internal/ims/entitlement/util/E911AidValidator;
.super Ljava/lang/Object;
.source "E911AidValidator.java"


# static fields
.field private static final E911_AID_CHECK_EXPIRATION_TIME:J = 0xa4cb800L

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    const-class v0, Lcom/sec/internal/ims/entitlement/util/DateUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/util/E911AidValidator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validate(Ljava/lang/String;)Z
    .locals 7
    .param p0, "e911AidExp"    # Ljava/lang/String;

    .line 13
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/util/DateUtil;->parseIso8601Date(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 15
    .local v0, "e911AidExpDate":Ljava/util/Date;
    const-wide/32 v1, 0xa4cb800

    .line 17
    .local v1, "millis":J
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 18
    :cond_1
    :goto_0
    sget-object v3, Lcom/sec/internal/ims/entitlement/util/E911AidValidator;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "validate: e911 AID is expired"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    const/4 v3, 0x0

    return v3
.end method
